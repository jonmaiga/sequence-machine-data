import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A312606.P14333884055851029271

`A311804(n)+A312068(n)-A008574(n)`
-/

namespace A312606.P14333884055851029271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + (A312068 n - A008574 n)

end

end A312606.P14333884055851029271

noncomputable section

/-- A312606: Coordination sequence Gal.6.255.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312606.P14333884055851029271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A312606 (n : ℕ) : ℤ :=
  A312606.P14333884055851029271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A312606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312656.P6952802278947369671

`2*A312068(n)-A008574(n)`
-/

namespace A312656.P6952802278947369671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312068 n - A008574 n

end

end A312656.P6952802278947369671

noncomputable section

/-- A312656: Coordination sequence Gal.6.201.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312656.P6952802278947369671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. -/
def A312656 (n : ℕ) : ℤ :=
  A312656.P6952802278947369671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. -/
def A312656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315638.P9080093851398681048

`abs(10*n-A312656(n))`
-/

namespace A315638.P9080093851398681048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312656 n|

end

end A315638.P9080093851398681048

noncomputable section

/-- A315638: Coordination sequence Gal.6.355.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315638.P9080093851398681048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315638 (n : ℕ) : ℤ :=
  A315638.P9080093851398681048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. -/
def A315638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315642.P10074898855002556229

`abs(A008592(n)-A312606(n))`
-/

namespace A315642.P10074898855002556229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312606 n|

end

end A315642.P10074898855002556229

noncomputable section

/-- A315642: Coordination sequence Gal.6.332.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315642.P10074898855002556229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A315642 (n : ℕ) : ℤ :=
  A315642.P10074898855002556229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A315642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315692.P13280674263437202447

`abs(A008592(n)-A312068(n))`
-/

namespace A315692.P13280674263437202447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312068 n|

end

end A315692.P13280674263437202447

noncomputable section

/-- A315692: Coordination sequence Gal.6.334.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315692.P13280674263437202447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315692 (n : ℕ) : ℤ :=
  A315692.P13280674263437202447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A315692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315756.P18231005908328482716

`abs(A008592(n)-A311356(n))`
-/

namespace A315756.P18231005908328482716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311356 n|

end

end A315756.P18231005908328482716

noncomputable section

/-- A315756: Coordination sequence Gal.6.637.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315756.P18231005908328482716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315756 (n : ℕ) : ℤ :=
  A315756.P18231005908328482716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033067.P7820946899976347155

`lt[A311356(A267354(n)), A217558(n)]`
-/

namespace A033067.P7820946899976347155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 (A267354 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033067.P7820946899976347155

noncomputable section

/-- A033067: Numbers whose base-16 representation Sum_{i=0..m} d(i)*16^i has odd d(m-i) for all odd i.

Offset 1, canonical program `A033067.P7820946899976347155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A033067 (n : ℕ) : ℤ :=
  (A033067.P7820946899976347155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A033067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313591.P3620371697952405827

`A311635(n)+A004525(A315638(n)-A311635(n))`
-/

namespace A313591.P3620371697952405827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n + A004525 (A315638 n - A311635 n).toNat

end

end A313591.P3620371697952405827

noncomputable section

/-- A313591: Coordination sequence Gal.6.346.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313591.P3620371697952405827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591 (n : ℕ) : ℤ :=
  A313591.P3620371697952405827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313854.P3810550675620183463

`abs(10*n-A313591(n))`
-/

namespace A313854.P3810550675620183463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313591 n|

end

end A313854.P3810550675620183463

noncomputable section

/-- A313854: Coordination sequence Gal.6.250.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313854.P3810550675620183463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854 (n : ℕ) : ℤ :=
  A313854.P3810550675620183463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315464.P12581309012109130076

`A315177(n)+A004525(A315756(n)-A315177(n))`
-/

namespace A315464.P12581309012109130076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315177 n + A004525 (A315756 n - A315177 n).toNat

end

end A315464.P12581309012109130076

noncomputable section

/-- A315464: Coordination sequence Gal.6.346.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315464.P12581309012109130076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464 (n : ℕ) : ℤ :=
  A315464.P12581309012109130076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313124.P8905845740579056507

`abs(A008592(n)-A315464(n))`
-/

namespace A313124.P8905845740579056507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315464 n|

end

end A313124.P8905845740579056507

noncomputable section

/-- A313124: Coordination sequence Gal.6.250.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313124.P8905845740579056507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124 (n : ℕ) : ℤ :=
  A313124.P8905845740579056507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270434.P10423559976014811217

`A270432(n+1)-A270433(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270434.P10423559976014811217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270432 (n + 1) - A270433 (n + 1)

end

end A270434.P10423559976014811217

noncomputable section

/-- A270434: a(n) = A270432(n) - A270433(n).

Offset 1, canonical program `A270434.P10423559976014811217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270434 (n : ℕ) : ℤ :=
  A270434.P10423559976014811217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A270434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275719.P5522747710788014234

`A275718(n+1)-A275717(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275719.P5522747710788014234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1) - A275717 (n + 1)

end

end A275719.P5522747710788014234

noncomputable section

/-- A275719: a(n) = A275718(n) - A275717(n).

Offset 1, canonical program `A275719.P5522747710788014234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275717, A275718, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275719 (n : ℕ) : ℤ :=
  A275719.P5522747710788014234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275717, A275718, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275722.P8632135586761212845

`A275718(1+n)-1`
-/

namespace A275722.P8632135586761212845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (1 + n) - 1

end

end A275722.P8632135586761212845

noncomputable section

/-- A275722: Numbers n for which A003961(n+1) < A003961(n).

Offset 1, canonical program `A275722.P8632135586761212845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275722 (n : ℕ) : ℤ :=
  A275722.P8632135586761212845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292595.P4451636547860676390

`A000120(A292591(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292595.P4451636547860676390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292591 (n + 1)).toNat

end

end A292595.P4451636547860676390

noncomputable section

/-- A292595: a(n) = A000120(A292591(n)).

Offset 1, canonical program `A292595.P4451636547860676390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292595 (n : ℕ) : ℤ :=
  A292595.P4451636547860676390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064554.P9603739927785713988

`fo[A064553(n+1)-1]+1`
-/

namespace A064554.P9603739927785713988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A064554.P9603739927785713988

noncomputable section

/-- A064554: a(n) = Min {k | A064553(k) = n}.

Offset 1, canonical program `A064554.P9603739927785713988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A064554 (n : ℕ) : ℤ :=
  (A064554.P9603739927785713988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A064554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064558.P17666427282558717256

`A064553(A064553(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064558.P17666427282558717256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064553 (n + 1)).toNat

end

end A064558.P17666427282558717256

noncomputable section

/-- A064558: a(n) = A064553(A064553(n)).

Offset 1, canonical program `A064558.P17666427282558717256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064558 (n : ℕ) : ℤ :=
  A064558.P17666427282558717256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097247.P3635200679269526787

`A097246(A097246(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097247.P3635200679269526787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A097246 (n + 1)).toNat

end

end A097247.P3635200679269526787

noncomputable section

/-- A097247: A097246(A097246(n)).

Offset 1, canonical program `A097247.P3635200679269526787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097247 (n : ℕ) : ℤ :=
  A097247.P3635200679269526787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158134.P3890413208393723118

`A157261(4*(n+1))`
-/

namespace A158134.P3890413208393723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (4 * (n + 1))

end

end A158134.P3890413208393723118

noncomputable section

/-- A158134: Fourth quadrisection of A157261.

Offset 1, canonical program `A158134.P3890413208393723118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158134 (n : ℕ) : ℤ :=
  A158134.P3890413208393723118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252743.P13320950522193927286

`A252742(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252743.P13320950522193927286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A005940 (1 + n)).toNat

end

end A252743.P13320950522193927286

noncomputable section

/-- A252743: a(n) = A252742(A005940(1+n)).

Offset 0, canonical program `A252743.P13320950522193927286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252743 (n : ℕ) : ℤ :=
  A252743.P13320950522193927286.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252744.P2309875151662509228

`A252742(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252744.P2309875151662509228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A163511 n).toNat

end

end A252744.P2309875151662509228

noncomputable section

/-- A252744: a(n) = A252742(A163511(n)).

Offset 0, canonical program `A252744.P2309875151662509228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252744 (n : ℕ) : ℤ :=
  A252744.P2309875151662509228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252749.P15054942815197957636

`A252748(n)+a(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252749.P15054942815197957636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252748 n + a (n - 1)

end

end A252749.P15054942815197957636

noncomputable section

/-- A252749: Partial sums of A252748: a(0) = 0, a(n) = A252748(n) + a(n-1).

Offset 0, canonical program `A252749.P15054942815197957636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252749 (n : ℕ) : ℤ :=
  A252749.P15054942815197957636.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252751.P3019683754980594127

`A252750(n)+a(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252751.P3019683754980594127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252750 n + a (n - 1)

end

end A252751.P3019683754980594127

noncomputable section

/-- A252751: Partial sums of A252750: a(0) = 0; for >= 1: a(n) = A252750(n) + a(n-1).

Offset 0, canonical program `A252751.P3019683754980594127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252751 (n : ℕ) : ℤ :=
  A252751.P3019683754980594127.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268392.P9708795502276571960

`A268385(A050376(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268392.P9708795502276571960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A050376 (n + 1)).toNat

end

end A268392.P9708795502276571960

noncomputable section

/-- A268392: a(n) = A268385(A050376(n)).

Offset 1, canonical program `A268392.P9708795502276571960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, A268385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268392 (n : ℕ) : ℤ :=
  A268392.P9708795502276571960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, A268385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275024.P5861283572822886658

`∑{e}[A064553(n+1), #]`
-/

namespace A275024.P5861283572822886658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275024.P5861283572822886658

noncomputable section

/-- A275024: Total weight of the n-th twice-prime-factored multiset partition.

Offset 1, canonical program `A275024.P5861283572822886658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275024 (n : ℕ) : ℤ :=
  (A275024.P5861283572822886658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276148.P6264353363301958697

`A276147(2*(n+1))`
-/

namespace A276148.P6264353363301958697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (2 * (n + 1))

end

end A276148.P6264353363301958697

noncomputable section

/-- A276148: Even bisection of A276147.

Offset 1, canonical program `A276148.P6264353363301958697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276148 (n : ℕ) : ℤ :=
  A276148.P6264353363301958697.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293444.P2340337305881596205

`A293442(A293442(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293444.P2340337305881596205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A293442 (n + 1)).toNat

end

end A293444.P2340337305881596205

noncomputable section

/-- A293444: a(n) = A293442(A293442(n)), where A293442 is multiplicative with a(p^e) = A019565(e).

Offset 1, canonical program `A293444.P2340337305881596205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293444 (n : ℕ) : ℤ :=
  A293444.P2340337305881596205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331310.P15036600505263651020

`gcd(n+1, A293442(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331310.P15036600505263651020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A293442 (n + 1))

end

end A331310.P15036600505263651020

noncomputable section

/-- A331310: a(n) = gcd(n, A293442(n)).

Offset 1, canonical program `A331310.P15036600505263651020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331310 (n : ℕ) : ℤ :=
  (A331310.P15036600505263651020.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336847.P10873545021579543233

`A003973(n+1)-A336846(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336847.P10873545021579543233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A336846 (n + 1)

end

end A336847.P10873545021579543233

noncomputable section

/-- A336847: a(n) = A003973(n) - A336846(n).

Offset 1, canonical program `A336847.P10873545021579543233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336847 (n : ℕ) : ℤ :=
  A336847.P10873545021579543233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336848.P11409207554523116840

`A003973(n+1)/A336846(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336848.P11409207554523116840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336846 (n + 1) : ℚ)

end

end A336848.P11409207554523116840

noncomputable section

/-- A336848: a(n) = A003973(n) / A336846(n).

Offset 1, canonical program `A336848.P11409207554523116840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336848 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336848.P11409207554523116840.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336856.P10996703592660352307

`gcd(A000005(n+1), A003973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336856.P10996703592660352307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A003973 (n + 1))

end

end A336856.P10996703592660352307

noncomputable section

/-- A336856: Prime-shifted analog of gcd(d(n), sigma(n)): a(n) = gcd(A000005(n), A003973(n)).

Offset 1, canonical program `A336856.P10996703592660352307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336856 (n : ℕ) : ℤ :=
  (A336856.P10996703592660352307.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336918.P5520413630927090975

`eq[1, A336839(1+n)]+1`
-/

namespace A336918.P5520413630927090975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336918.P5520413630927090975

noncomputable section

/-- A336918: Numbers k such that A000005(k) divides A003973(k); numbers k for which A336839(k) = 1.

Offset 1, canonical program `A336918.P5520413630927090975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336918 (n : ℕ) : ℤ :=
  (A336918.P5520413630927090975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336919.P8980509711614269143

`lt[1, A336839(n+1)]+1`
-/

namespace A336919.P8980509711614269143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336919.P8980509711614269143

noncomputable section

/-- A336919: Numbers k such that A000005(k) does not divide A003973(k); numbers k for which A336839(k) > 1.

Offset 1, canonical program `A336919.P8980509711614269143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919 (n : ℕ) : ℤ :=
  (A336919.P8980509711614269143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337335.P16507265626637162204

`gcd(A048673(n+1), 1+A003973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337335.P16507265626637162204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048673 (n + 1)) (1 + A003973 (n + 1))

end

end A337335.P16507265626637162204

noncomputable section

/-- A337335: a(n) = gcd(A048673(n), 1+A003973(n)).

Offset 1, canonical program `A337335.P16507265626637162204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337335 (n : ℕ) : ℤ :=
  (A337335.P16507265626637162204.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337337.P7440096239031397272

`A337335((n+1)²)`
-/

namespace A337337.P7440096239031397272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337335 ((n + 1) ^ 2)

end

end A337337.P7440096239031397272

noncomputable section

/-- A337337: a(n) = gcd(1+sigma(s), (s+1)/2), where s is the square of n once prime-shifted (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337337.P7440096239031397272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337 (n : ℕ) : ℤ :=
  A337337.P7440096239031397272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337338.P8319227600971306024

`A337194(A003961(n+1)²)/A337337(n+1)`
-/

namespace A337338.P8319227600971306024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337194 (A003961 (n + 1) ^ 2).toNat : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337338.P8319227600971306024

noncomputable section

/-- A337338: Numerator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337338.P8319227600971306024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337338.P8319227600971306024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337339.P4042521456947446519

`A337336(n+1)/A337337(n+1)`
-/

namespace A337339.P4042521456947446519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337339.P4042521456947446519

noncomputable section

/-- A337339: Denominator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337339.P4042521456947446519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337339.P4042521456947446519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337340.P276399523375729777

`(A337339(n+1)-A003961(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337340.P276399523375729777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337339 (n + 1) - A003961 (n + 1) : ℚ) / 2

end

end A337340.P276399523375729777

noncomputable section

/-- A337340: a(n) = (A337339(n)-A003961(n)) / 2.

Offset 1, canonical program `A337340.P276399523375729777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337340.P276399523375729777.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337341.P5889933687803878944

`A337339(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337341.P5889933687803878944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337339 (n + 1) - (n + 1 : ℤ)

end

end A337341.P5889933687803878944

noncomputable section

/-- A337341: a(n) = A337339(n) - n.

Offset 1, canonical program `A337341.P5889933687803878944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341 (n : ℕ) : ℤ :=
  A337341.P5889933687803878944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337373.P17490337404233629993

`lt[2*n, A336853(n+1)]+1`
-/

namespace A337373.P17490337404233629993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337373.P17490337404233629993

noncomputable section

/-- A337373: Numbers k for which A003961(k) > 3*k.

Offset 1, canonical program `A337373.P17490337404233629993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5479 terms. -/
def A337373 (n : ℕ) : ℤ :=
  (A337373.P17490337404233629993.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5479 terms. -/
def A337373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337379.P6372728613214319863

`lt[A252748(n+1), A294015(n+1)]+1`
-/

namespace A337379.P6372728613214319863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337379.P6372728613214319863

noncomputable section

/-- A337379: Numbers k for which A003961(k) < 2*sigma(k).

Offset 1, canonical program `A337379.P6372728613214319863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. -/
def A337379 (n : ℕ) : ℤ :=
  (A337379.P6372728613214319863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. -/
def A337379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337380.P14323551870008348844

`floor(A286385(n+1)/A048673(n+1))`
-/

namespace A337380.P14323551870008348844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286385 (n + 1) : ℚ) / (A048673 (n + 1) : ℚ)⌋

end

end A337380.P14323551870008348844

noncomputable section

/-- A337380: a(n) = 1 if A003961(n) > 2*sigma(n), 0 otherwise.

Offset 1, canonical program `A337380.P14323551870008348844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337380 (n : ℕ) : ℤ :=
  A337380.P14323551870008348844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337386.P15090357526265175060

`lt[1, A336835(A028310(n))]`
-/

namespace A337386.P15090357526265175060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337386.P15090357526265175060

noncomputable section

/-- A337386: Numbers k for which A003973(k) >= 2*A003961(k).

Offset 1, canonical program `A337386.P15090357526265175060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A337386 (n : ℕ) : ℤ :=
  (A337386.P15090357526265175060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A337386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337468.P6808977206975830363

`A080224(A337386(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337468.P6808977206975830363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A337386 (n + 1)).toNat

end

end A337468.P6808977206975830363

noncomputable section

/-- A337468: a(n) = A080224(A337386(n)).

Offset 1, canonical program `A337468.P6808977206975830363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337468 (n : ℕ) : ℤ :=
  A337468.P6808977206975830363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337474.P14754845814087979519

`A336835(A108951(n+1))`
-/

namespace A337474.P14754845814087979519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A108951 (n + 1)).toNat

end

end A337474.P14754845814087979519

noncomputable section

/-- A337474: Number of prime shifts (x -> A003961(x)) needed before the result is deficient, when starting from x = A108951(n), the primorial inflation of n.

Offset 1, canonical program `A337474.P14754845814087979519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A336835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337474 (n : ℕ) : ℤ :=
  A337474.P14754845814087979519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A336835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337549.P3151164375738502961

`A003972(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337549.P3151164375738502961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - (n + 1 : ℤ)

end

end A337549.P3151164375738502961

noncomputable section

/-- A337549: a(n) = A003972(n) - n.

Offset 1, canonical program `A337549.P3151164375738502961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337549 (n : ℕ) : ℤ :=
  A337549.P3151164375738502961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340073.P3788294706891105831

`A253885(n)/A340071(n+1)`
-/

namespace A340073.P3788294706891105831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / (A340071 (n + 1) : ℚ)

end

end A340073.P3788294706891105831

noncomputable section

/-- A340073: a(n) = (x-1) / gcd(x-1, phi(x)), where x = A003961(n), i.e., n with its prime factorization shifted one step towards larger primes.

Offset 1, canonical program `A340073.P3788294706891105831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253885, A340071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340073 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340073.P3788294706891105831.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253885, A340071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340074.P15642945352371498565

`gcd(A003961(n+1)-1, A339904(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340074.P15642945352371498565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) - 1) (A339904 (n + 1))

end

end A340074.P15642945352371498565

noncomputable section

/-- A340074: a(n) = gcd(A003961(n)-1, A339904(n)).

Offset 1, canonical program `A340074.P15642945352371498565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A339904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340074 (n : ℕ) : ℤ :=
  (A340074.P15642945352371498565.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A339904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340075.P18306248190705191275

`A000265(A340072(n+1))`
-/

namespace A340075.P18306248190705191275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340072 (n + 1)).toNat

end

end A340075.P18306248190705191275

noncomputable section

/-- A340075: The odd part of A340072(n).

Offset 1, canonical program `A340075.P18306248190705191275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340075 (n : ℕ) : ℤ :=
  A340075.P18306248190705191275.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340076.P9543000628144570733

`eq[1, A340075(n+1)]+1`
-/

namespace A340076.P9543000628144570733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340076.P9543000628144570733

noncomputable section

/-- A340076: Positions of ones in A340075.

Offset 1, canonical program `A340076.P9543000628144570733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A340076 (n : ℕ) : ℤ :=
  (A340076.P9543000628144570733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A340076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340150.P16903743964275557820

`record[(n+1)/A340149(n+1)]`
-/

namespace A340150.P16903743964275557820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340149 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340150.P16903743964275557820

noncomputable section

/-- A340150: Positions of ones in A340149.

Offset 1, canonical program `A340150.P16903743964275557820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6718 terms. -/
def A340150 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340150.P16903743964275557820.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6718 terms. -/
def A340150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340194.P2585245132100315364

`A337544(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340194.P2585245132100315364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A003961 (n + 1)).toNat

end

end A340194.P2585245132100315364

noncomputable section

/-- A340194: a(n) = A337544(A003961(n)).

Offset 1, canonical program `A340194.P2585245132100315364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340194 (n : ℕ) : ℤ :=
  A340194.P2585245132100315364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341612.P3068073104531840485

`A252742(n+1)*A294935(n+1)`
-/

namespace A341612.P3068073104531840485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) * A294935 (n + 1)

end

end A341612.P3068073104531840485

noncomputable section

/-- A341612: Characteristic function of A341614: a(n) = 1 if sigma(n) <= 2n < A003961(n), 0 otherwise.

Offset 1, canonical program `A341612.P3068073104531840485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341612 (n : ℕ) : ℤ :=
  A341612.P3068073104531840485.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341613.P13588315821913618762

`A252742(n+1)*A294934(n+1)`
-/

namespace A341613.P13588315821913618762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) * A294934 (n + 1)

end

end A341613.P13588315821913618762

noncomputable section

/-- A341613: Characteristic function for A341615: a(n) = 1 if sigma(n) < 2n < A003961(n), otherwise 0.

Offset 1, canonical program `A341613.P13588315821913618762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341613 (n : ℕ) : ℤ :=
  A341613.P13588315821913618762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341614.P12410956931526062151

`lt[0, A341612(1+n)]+1`
-/

namespace A341614.P12410956931526062151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341614.P12410956931526062151

noncomputable section

/-- A341614: Numbers k such that sigma(k) <= 2k < A003961(k).

Offset 1, canonical program `A341614.P12410956931526062151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614 (n : ℕ) : ℤ :=
  (A341614.P12410956931526062151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341615.P14431717611716055438

`lt[0, A341613(1+n)]+1`
-/

namespace A341615.P14431717611716055438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341615.P14431717611716055438

noncomputable section

/-- A341615: Numbers k for which sigma(k) < 2k < A003961(k).

Offset 1, canonical program `A341615.P14431717611716055438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615 (n : ℕ) : ℤ :=
  (A341615.P14431717611716055438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346249.P5829520662776676678

`∑{d}[n+1, A007427(#)*A286385((n+1)/#)]`
-/

namespace A346249.P5829520662776676678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A286385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346249.P5829520662776676678

noncomputable section

/-- A346249: Möbius transform of A337549.

Offset 1, canonical program `A346249.P5829520662776676678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346249 (n : ℕ) : ℤ :=
  A346249.P5829520662776676678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347124.P4032395562247059847

`∑{d}[n+1, A008683((n+1)/#)*A341528(#)]`
-/

namespace A347124.P4032395562247059847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341528 d

end

end A347124.P4032395562247059847

noncomputable section

/-- A347124: Möbius transform of A341528, n * sigma(A003961(n)).

Offset 1, canonical program `A347124.P4032395562247059847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347124 (n : ℕ) : ℤ :=
  A347124.P4032395562247059847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347125.P15966228704101149299

`∑{d}[n+1, A008683((n+1)/#)*A341529(#)]`
-/

namespace A347125.P15966228704101149299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341529 d

end

end A347125.P15966228704101149299

noncomputable section

/-- A347125: Möbius transform of A341529, sigma(n) * A003961(n).

Offset 1, canonical program `A347125.P15966228704101149299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347125 (n : ℕ) : ℤ :=
  A347125.P15966228704101149299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347237.P462574376420904752

`∑{d}[n+1, A003972((n+1)/#)*A061019(#)]`
-/

namespace A347237.P462574376420904752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A061019 d

end

end A347237.P462574376420904752

noncomputable section

/-- A347237: Möbius transform of A347236.

Offset 1, canonical program `A347237.P462574376420904752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347237 (n : ℕ) : ℤ :=
  A347237.P462574376420904752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347238.P10622730690257648846

`∑{d}[A007947(n+1), #*A346234((n+1)/#)]`
-/

namespace A347238.P10622730690257648846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347238.P10622730690257648846

noncomputable section

/-- A347238: Dirichlet inverse of A347236.

Offset 1, canonical program `A347238.P10622730690257648846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347238 (n : ℕ) : ℤ :=
  A347238.P10622730690257648846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347239.P8303490879322250829

`A347236(n+1)+A347238(n+1)`
-/

namespace A347239.P8303490879322250829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347236 (n + 1) + A347238 (n + 1)

end

end A347239.P8303490879322250829

noncomputable section

/-- A347239: Sum of A347236 and its Dirichlet inverse.

Offset 1, canonical program `A347239.P8303490879322250829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239 (n : ℕ) : ℤ :=
  A347239.P8303490879322250829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348736.P14809155913306220837

`n+1-A326042(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348736.P14809155913306220837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326042 (n + 1)

end

end A348736.P14809155913306220837

noncomputable section

/-- A348736: a(n) = n - A326042(n), where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348736.P14809155913306220837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348736 (n : ℕ) : ℤ :=
  A348736.P14809155913306220837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348737.P4243854902440080733

`round(n/(A326042(n+1)+n))`
-/

namespace A348737.P4243854902440080733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A326042 (n + 1) + (n : ℤ) : ℚ))

end

end A348737.P4243854902440080733

noncomputable section

/-- A348737: a(n) = 1 if A326042(k) < k, otherwise 0.

Offset 1, canonical program `A348737.P4243854902440080733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348737 (n : ℕ) : ℤ :=
  A348737.P4243854902440080733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348738.P14169200650584262410

`lt[0, A348736(1+n)]+1`
-/

namespace A348738.P14169200650584262410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348738.P14169200650584262410

noncomputable section

/-- A348738: Numbers k for which A326042(k) < k, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348738.P14169200650584262410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738 (n : ℕ) : ℤ :=
  (A348738.P14169200650584262410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348751.P5162132893747638850

`lt[A348750(A028310(n)), n]`
-/

namespace A348751.P5162132893747638850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348751.P5162132893747638850

noncomputable section

/-- A348751: Numbers k for which A348750(k) < k.

Offset 1, canonical program `A348751.P5162132893747638850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A348751 (n : ℕ) : ℤ :=
  (A348751.P5162132893747638850.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A348751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348752.P6744655593727144798

`lt[n+1, A348750(n+1)]+1`
-/

namespace A348752.P6744655593727144798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348752.P6744655593727144798

noncomputable section

/-- A348752: Numbers k for which A348750(k) > k.

Offset 1, canonical program `A348752.P6744655593727144798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A348752 (n : ℕ) : ℤ :=
  (A348752.P6744655593727144798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 605 terms. -/
def A348752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348940.P7101903597430363459

`gcd(n+1, A326042(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348940.P7101903597430363459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326042 (n + 1))

end

end A348940.P7101903597430363459

noncomputable section

/-- A348940: a(n) = gcd(n, A326042(n)), where A326042 is multiplicative function A064989(sigma(A003961(n))).

Offset 1, canonical program `A348940.P7101903597430363459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348940 (n : ℕ) : ℤ :=
  (A348940.P7101903597430363459.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348941.P16476962796183016569

`(n+1)/A348940(n+1)`
-/

namespace A348941.P16476962796183016569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348941.P16476962796183016569

noncomputable section

/-- A348941: a(n) = n / gcd(n, A326042(n)).

Offset 1, canonical program `A348941.P16476962796183016569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348941.P16476962796183016569.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348942.P4298548663594448972

`A326042(n+1)/A348940(n+1)`
-/

namespace A348942.P4298548663594448972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348942.P4298548663594448972

noncomputable section

/-- A348942: a(n) = A326042(n) / gcd(n, A326042(n)).

Offset 1, canonical program `A348942.P4298548663594448972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348942.P4298548663594448972.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348990.P9008814680679274139

`(n+1)/A322361(n+1)`
-/

namespace A348990.P9008814680679274139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322361 (n + 1) : ℚ)

end

end A348990.P9008814680679274139

noncomputable section

/-- A348990: a(n) = n / gcd(n, A003961(n)), where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A348990.P9008814680679274139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348990.P9008814680679274139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348992.P12661163686237205488

`A161942(n+1)/A342671(n+1)`
-/

namespace A348992.P12661163686237205488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A348992.P12661163686237205488

noncomputable section

/-- A348992: a(n) = A000265(sigma(n)) / gcd(sigma(n), A003961(n)), where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A348992.P12661163686237205488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348992 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348992.P12661163686237205488.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349162.P4701200943170105662

`A000203(n+1)/A342671(n+1)`
-/

namespace A349162.P4701200943170105662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A342671 (n + 1) : ℚ)

end

end A349162.P4701200943170105662

noncomputable section

/-- A349162: a(n) = sigma(n) / gcd(sigma(n), A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349162.P4701200943170105662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349162 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349162.P4701200943170105662.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349165.P17788496710474803939

`record[A349164(1+n)]`
-/

namespace A349165.P17788496710474803939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349164 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349165.P17788496710474803939

noncomputable section

/-- A349165: Numbers k such that sigma(k) and A003961(k) are relatively prime, where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A349165.P17788496710474803939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349165 (n : ℕ) : ℤ :=
  A349165.P17788496710474803939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349166.P15435338899295940920

`lt[1, A349163(1+n)]+1`
-/

namespace A349166.P15435338899295940920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349163 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349166.P15435338899295940920

noncomputable section

/-- A349166: Numbers k such that sigma(k) and A003961(k) share a prime factor, where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A349166.P15435338899295940920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349166 (n : ℕ) : ℤ :=
  (A349166.P15435338899295940920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349167.P11335047326877026590

`floor(1/A349163(n+1))`
-/

namespace A349167.P11335047326877026590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A349163 (n + 1) : ℚ)⌋

end

end A349167.P11335047326877026590

noncomputable section

/-- A349167: a(n) = 1 if sigma(n) and A003961(n) are relatively prime, otherwise 0.

Offset 1, canonical program `A349167.P11335047326877026590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349167 (n : ℕ) : ℤ :=
  A349167.P11335047326877026590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349382.P6298685267400545813

`∑{d}[n+1, A064989((n+1)/#)*A346234(#)]`
-/

namespace A349382.P6298685267400545813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A346234 d

end

end A349382.P6298685267400545813

noncomputable section

/-- A349382: Dirichlet convolution of A064989 with A346234 (Dirichlet inverse of A003961), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

Offset 1, canonical program `A349382.P6298685267400545813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349382 (n : ℕ) : ℤ :=
  A349382.P6298685267400545813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349383.P13419108071231034251

`A349381(n+1)+A349382(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349383.P13419108071231034251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349381 (n + 1) + A349382 (n + 1)

end

end A349383.P13419108071231034251

noncomputable section

/-- A349383: a(n) = A349381(n) + A349382(n).

Offset 1, canonical program `A349383.P13419108071231034251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349383 (n : ℕ) : ℤ :=
  A349383.P13419108071231034251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349385.P17904619834223845789

`∑{d}[n+1, A048673((n+1)/#)*A346234(#)]`
-/

namespace A349385.P17904619834223845789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A346234 d

end

end A349385.P17904619834223845789

noncomputable section

/-- A349385: Dirichlet convolution of A048673 with the Dirichlet inverse of A003961, where A003961 is fully multiplicative with a(p) = nextprime(p), and A048673(n) = (1+A003961(n))/2.

Offset 1, canonical program `A349385.P17904619834223845789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349385 (n : ℕ) : ℤ :=
  A349385.P17904619834223845789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A346234, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349388.P677895676119621301

`∑{d}[n+1, #*A346234((n+1)/#)]`
-/

namespace A349388.P677895676119621301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P677895676119621301

noncomputable section

/-- A349388: Dirichlet convolution of A000027 with A346234 (Dirichlet inverse of A003961), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A349388.P677895676119621301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349388 (n : ℕ) : ℤ :=
  A349388.P677895676119621301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349389.P17688454280443951021

`A349387(n+1)+A349388(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349389.P17688454280443951021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (n + 1) + A349388 (n + 1)

end

end A349389.P17688454280443951021

noncomputable section

/-- A349389: a(n) = A349387(n) + A349388(n).

Offset 1, canonical program `A349389.P17688454280443951021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389 (n : ℕ) : ℤ :=
  A349389.P17688454280443951021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349624.P9806452003791796394

`∑{d}[n+1, A055615(#)*A326042((n+1)/#)]`
-/

namespace A349624.P9806452003791796394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A326042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349624.P9806452003791796394

noncomputable section

/-- A349624: Dirichlet convolution of A326042 with A055615 (Dirichlet inverse of n), where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A349624.P9806452003791796394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349624 (n : ℕ) : ℤ :=
  A349624.P9806452003791796394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349626.P14679777532921365945

`∑{d}[n+1, A008683((n+1)/#)*A326042(#)]`
-/

namespace A349626.P14679777532921365945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A326042 d

end

end A349626.P14679777532921365945

noncomputable section

/-- A349626: Möbius transform of A326042, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A349626.P14679777532921365945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349626 (n : ℕ) : ℤ :=
  A349626.P14679777532921365945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349633.P10035930798907062347

`lcm(n+1, A349387(n+1))/(n+1)`
-/

namespace A349633.P10035930798907062347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A349387 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A349633.P10035930798907062347

noncomputable section

/-- A349633: Numerators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349633.P10035930798907062347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349633.P10035930798907062347.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349634.P1580182829586287684

`(n+1)/gcd(n+1, A349387(n+1))`
-/

namespace A349634.P1580182829586287684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A349387 (n + 1)) : ℚ)

end

end A349634.P1580182829586287684

noncomputable section

/-- A349634: Denominators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349634.P1580182829586287684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349634.P1580182829586287684.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349756.P8922585120578040547

`eq[1, A348993(n+1)]+1`
-/

namespace A349756.P8922585120578040547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349756.P8922585120578040547

noncomputable section

/-- A349756: Numbers k such that the odd part of sigma(k) is equal to gcd(sigma(k), A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A349756.P8922585120578040547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349756 (n : ℕ) : ℤ :=
  (A349756.P8922585120578040547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A349756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350072.P17523638723638629591

`A349162((n+1)²)`
-/

namespace A350072.P17523638723638629591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 ((n + 1) ^ 2)

end

end A350072.P17523638723638629591

noncomputable section

/-- A350072: a(n) = sigma(n^2) / gcd(sigma(n^2), A003961(n^2)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A350072.P17523638723638629591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350072 (n : ℕ) : ℤ :=
  A350072.P17523638723638629591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351457.P4852068756587702856

`A351456(n+1)-A339905(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351457.P4852068756587702856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351456 (n + 1) - A339905 (n + 1)

end

end A351457.P4852068756587702856

noncomputable section

/-- A351457: a(n) = A351456(n) - A339905(n).

Offset 1, canonical program `A351457.P4852068756587702856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351457 (n : ℕ) : ℤ :=
  A351457.P4852068756587702856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351457.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351546.P8277132408193178014

`A000203(n+1)/A351544(n+1)`
-/

namespace A351546.P8277132408193178014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ)

end

end A351546.P8277132408193178014

noncomputable section

/-- A351546: a(n) is the largest unitary divisor of sigma(n) coprime with A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351546.P8277132408193178014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351546.P8277132408193178014.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353638.P14021207844737996786

`A000035(n+1)*A348737(A064989(n+1))`
-/

namespace A353638.P14021207844737996786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A348737 (A064989 (n + 1)).toNat

end

end A353638.P14021207844737996786

noncomputable section

/-- A353638: a(n) = 1 if n is odd and A064989(sigma(n)) < A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353638.P14021207844737996786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638 (n : ℕ) : ℤ :=
  A353638.P14021207844737996786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353639.P13459626096142204888

`char[eq[A266437(n), A353638(n+1)]]`
-/

namespace A353639.P13459626096142204888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353639.P13459626096142204888

noncomputable section

/-- A353639: a(n) = 1 if n is odd and A064989(sigma(n)) > A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353639.P13459626096142204888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639 (n : ℕ) : ℤ :=
  (A353639.P13459626096142204888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. -/
def A353639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353666.P3692679567967800425

`gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353666.P3692679567967800425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351546 (n + 1))

end

end A353666.P3692679567967800425

noncomputable section

/-- A353666: a(n) = gcd(n, A351546(n)).

Offset 1, canonical program `A353666.P3692679567967800425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666 (n : ℕ) : ℤ :=
  (A353666.P3692679567967800425.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353667.P4254365963197736758

`(n+1)/A353666(n+1)`
-/

namespace A353667.P4254365963197736758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353667.P4254365963197736758

noncomputable section

/-- A353667: a(n) = n / gcd(n, A351546(n)).

Offset 1, canonical program `A353667.P4254365963197736758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353667.P4254365963197736758.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353668.P18386353074867683989

`A351546(n+1)/gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353668.P18386353074867683989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351546 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A351546 (n + 1)) : ℚ)

end

end A353668.P18386353074867683989

noncomputable section

/-- A353668: a(n) = A351546(n) / gcd(n, A351546(n)).

Offset 1, canonical program `A353668.P18386353074867683989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353668.P18386353074867683989.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353789.P12522694346514914050

`(n+1)*A003972(n+1)`
-/

namespace A353789.P12522694346514914050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003972 (n + 1)

end

end A353789.P12522694346514914050

noncomputable section

/-- A353789: Multiplicative with a(p^e) = (q - 1) * q^(e-1) * p^e, where q is the least prime greater than p.

Offset 1, canonical program `A353789.P12522694346514914050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353789 (n : ℕ) : ℤ :=
  A353789.P12522694346514914050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353789.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353793.P14606764899847862273

`(n+1)*A339905(n+1)`
-/

namespace A353793.P14606764899847862273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A339905 (n + 1)

end

end A353793.P14606764899847862273

noncomputable section

/-- A353793: Multiplicative with a(p^e) = ((q-1)*p)^e, where q is the least prime larger than p.

Offset 1, canonical program `A353793.P14606764899847862273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353793 (n : ℕ) : ℤ :=
  A353793.P14606764899847862273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355456.P1107611563760523314

`gcd(A000203(n+1), A355442(n+1))`
-/

namespace A355456.P1107611563760523314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A355442 (n + 1))

end

end A355456.P1107611563760523314

noncomputable section

/-- A355456: Greatest common divisor of sigma(n), A003961(n), and A276086(n).

Offset 1, canonical program `A355456.P1107611563760523314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355456 (n : ℕ) : ℤ :=
  (A355456.P1107611563760523314.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355456.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355820.P7793470395050703864

`A010051(A355442(n+1)+1)`
-/

namespace A355820.P7793470395050703864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A355442 (n + 1) + 1).toNat

end

end A355820.P7793470395050703864

noncomputable section

/-- A355820: a(n) = 1 if A003961(n) and A276086(n) are relatively prime, otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

Offset 1, canonical program `A355820.P7793470395050703864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355820 (n : ℕ) : ℤ :=
  A355820.P7793470395050703864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355821.P9042093219998858000

`eq[1, A355820(n+1)]+1`
-/

namespace A355821.P9042093219998858000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355821.P9042093219998858000

noncomputable section

/-- A355821: Numbers k for which A003961(k) and A276086(k) are relatively prime, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

Offset 1, canonical program `A355821.P9042093219998858000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355821 (n : ℕ) : ℤ :=
  (A355821.P9042093219998858000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355822.P11988757692825687997

`eq[0, A355820(n+1)]+1`
-/

namespace A355822.P11988757692825687997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355822.P11988757692825687997

noncomputable section

/-- A355822: Numbers k such that A003961(k) and A276086(k) share a prime factor, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

Offset 1, canonical program `A355822.P11988757692825687997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355822 (n : ℕ) : ℤ :=
  (A355822.P11988757692825687997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355825.P4035003920145618499

`A295316(A268385(n+1))`
-/

namespace A355825.P4035003920145618499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (A268385 (n + 1)).toNat

end

end A355825.P4035003920145618499

noncomputable section

/-- A355825: a(n) = 1 if all exponents in prime factorization of n have an odd binary weight, otherwise 0.

Offset 1, canonical program `A355825.P4035003920145618499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355825 (n : ℕ) : ℤ :=
  A355825.P4035003920145618499.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355933.P2830370768041058507

`A003973(n+1)/A355932(n+1)`
-/

namespace A355933.P2830370768041058507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355933.P2830370768041058507

noncomputable section

/-- A355933: a(n) = A003973(n) / gcd(sigma(n), A003973(n)), where A003973(n) = sigma(A003961(n)) and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A355933.P2830370768041058507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A355932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355933 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355933.P2830370768041058507.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A355932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355934.P12025855991431582106

`A000203(n+1)/A355932(n+1)`
-/

namespace A355934.P12025855991431582106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A355932 (n + 1) : ℚ)

end

end A355934.P12025855991431582106

noncomputable section

/-- A355934: a(n) = sigma(n) / gcd(sigma(n), sigma(A003961(n))), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A355934.P12025855991431582106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A355934.P12025855991431582106.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355940.P3503418342827386624

`A063524(A355934(n+1))`
-/

namespace A355940.P3503418342827386624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A355934 (n + 1)).toNat

end

end A355940.P3503418342827386624

noncomputable section

/-- A355940: a(n) = 1 if A003973(n) is a multiple of A000203(n), otherwise 0.

Offset 1, canonical program `A355940.P3503418342827386624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940 (n : ℕ) : ℤ :=
  A355940.P3503418342827386624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355941.P5058088448507230669

`eq[1, A355940(n+1)]+1`
-/

namespace A355941.P5058088448507230669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355941.P5058088448507230669

noncomputable section

/-- A355941: Numbers k such that A003973(k) is a multiple of A000203(k).

Offset 1, canonical program `A355941.P5058088448507230669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941 (n : ℕ) : ℤ :=
  (A355941.P5058088448507230669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355942.P8093612167510493976

`lt[(n+1)%A326042(n+1), 1]+1`
-/

namespace A355942.P8093612167510493976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A326042 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355942.P8093612167510493976

noncomputable section

/-- A355942: Numbers k such that k is a multiple of A326042(k).

Offset 1, canonical program `A355942.P8093612167510493976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A355942 (n : ℕ) : ℤ :=
  (A355942.P8093612167510493976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A355942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355946.P8058548396352756373

`Δ[fp[A349756(n+1)]]`
-/

namespace A355946.P8058548396352756373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349756 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A355946.P8058548396352756373

noncomputable section

/-- A355946: a(n) = 1 if the odd part of sigma(k) divides A003961(k), otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A355946.P8058548396352756373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946 (n : ℕ) : ℤ :=
  A355946.P8058548396352756373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358752.P5898709040952930086

`A065043(n+1)-A358750(n+1)`
-/

namespace A358752.P5898709040952930086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A358750 (n + 1)

end

end A358752.P5898709040952930086

noncomputable section

/-- A358752: a(n) = 1 if A349905(n) == 2 (mod 4), otherwise 0. Here A349905(n) is the arithmetic derivative applied to the prime shifted n.

Offset 1, canonical program `A358752.P5898709040952930086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358752 (n : ℕ) : ℤ :=
  A358752.P5898709040952930086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358753.P12282633013976382741

`A066829(n+1)-A358751(n+1)`
-/

namespace A358753.P12282633013976382741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A358751 (n + 1)

end

end A358753.P12282633013976382741

noncomputable section

/-- A358753: a(n) = 1 if bigomega(n) == 3 (mod 4), otherwise 0.

Offset 1, canonical program `A358753.P12282633013976382741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358753 (n : ℕ) : ℤ :=
  A358753.P12282633013976382741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358760.P11879687346543983601

`lt[0, A358750(n+1)]+1`
-/

namespace A358760.P11879687346543983601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358760.P11879687346543983601

noncomputable section

/-- A358760: Numbers k for which A349905(k) is a multiple of 4, where A349905(k) is the arithmetic derivative applied to the prime shifted k.

Offset 1, canonical program `A358760.P11879687346543983601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358760 (n : ℕ) : ℤ :=
  (A358760.P11879687346543983601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358762.P12298338065888311009

`lt[0, A358752(1+n)]+1`
-/

namespace A358762.P12298338065888311009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358762.P12298338065888311009

noncomputable section

/-- A358762: Numbers k for which A349905(k) == 2 (mod 4), where A349905(k) is the arithmetic derivative applied to the prime shifted k.

Offset 1, canonical program `A358762.P12298338065888311009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358762 (n : ℕ) : ℤ :=
  (A358762.P12298338065888311009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358763.P9425270982903074007

`lt[0, A358753(n+1)]+1`
-/

namespace A358763.P9425270982903074007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358763.P9425270982903074007

noncomputable section

/-- A358763: Numbers k for which bigomega(k) == 3 (mod 4).

Offset 1, canonical program `A358763.P9425270982903074007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358763 (n : ℕ) : ℤ :=
  (A358763.P9425270982903074007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366903.P14528994784463465807

`∑{d}[1+n, #*A355825(#)]`
-/

namespace A366903.P14528994784463465807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355825 d

end

end A366903.P14528994784463465807

noncomputable section

/-- A366903: The sum of exponentially odious divisors of n.

Offset 1, canonical program `A366903.P14528994784463465807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903 (n : ℕ) : ℤ :=
  A366903.P14528994784463465807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372565.P13131356966692451421

`gcd(1+n, A326057(n+1))`
-/

namespace A372565.P13131356966692451421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + n : ℤ) (A326057 (n + 1))

end

end A372565.P13131356966692451421

noncomputable section

/-- A372565: a(n) is the greatest common divisor of n, sigma(n) and A003961(n), where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372565.P13131356966692451421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372565 (n : ℕ) : ℤ :=
  (A372565.P13131356966692451421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372566.P10239918502240805923

`lt[1, A372565(n+1)]+1`
-/

namespace A372566.P10239918502240805923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A372566.P10239918502240805923

noncomputable section

/-- A372566: Numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372566.P10239918502240805923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566 (n : ℕ) : ℤ :=
  (A372566.P10239918502240805923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372567.P13528077420289210032

`filter[A372566(n+1), A324908(#)]`
-/

namespace A372567.P13528077420289210032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A372567.P13528077420289210032

noncomputable section

/-- A372567: Odd numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372567.P13528077420289210032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567 (n : ℕ) : ℤ :=
  A372567.P13528077420289210032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374130.P2366869073036935020

`A010052(2*A293442(n+1))`
-/

namespace A374130.P2366869073036935020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * A293442 (n + 1)).toNat

end

end A374130.P2366869073036935020

noncomputable section

/-- A374130: a(n) = 1 if bitwise-XOR of the exponents of primes in the prime factorization of n is equal to 1, otherwise 0.

Offset 1, canonical program `A374130.P2366869073036935020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374130 (n : ℕ) : ℤ :=
  A374130.P2366869073036935020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378228.P6353953585605752908

`(1+n)*A378221(n+1)`
-/

namespace A378228.P6353953585605752908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A378221 (n + 1)

end

end A378228.P6353953585605752908

noncomputable section

/-- A378228: Dirichlet inverse of A341528, where A341528(n) = n * sigma(A003961(n)), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378228.P6353953585605752908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378228 (n : ℕ) : ℤ :=
  A378228.P6353953585605752908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378229.P3491273019573870571

`∑{d}[n+1, A349388(#)*A378228((n+1)/#)]`
-/

namespace A378229.P3491273019573870571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d * A378228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378229.P3491273019573870571

noncomputable section

/-- A378229: Dirichlet inverse of A341529, where A341529(n) = sigma(n) * A003961(n), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378229.P3491273019573870571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229 (n : ℕ) : ℤ :=
  A378229.P3491273019573870571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378606.P1824987261939307766

`∑{d}[n+1, A008683(#)*A349387((n+1)/#)]`
-/

namespace A378606.P1824987261939307766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P1824987261939307766

noncomputable section

/-- A378606: Dirichlet convolution of A046692 and A003961, where A046692 is the Dirichlet inverse of sigma, and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378606.P1824987261939307766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378606 (n : ℕ) : ℤ :=
  A378606.P1824987261939307766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378607.P10144459662400142962

`∑{d}[n+1, A349388(#)]`
-/

namespace A378607.P10144459662400142962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d

end

end A378607.P10144459662400142962

noncomputable section

/-- A378607: Dirichlet convolution of sigma and the Dirichlet inverse of A003961 (A346234).

Offset 1, canonical program `A378607.P10144459662400142962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378607 (n : ℕ) : ℤ :=
  A378607.P10144459662400142962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378662.P11219609030214075406

`∑{d}[n+1, A341612(#)]`
-/

namespace A378662.P11219609030214075406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341612 d

end

end A378662.P11219609030214075406

noncomputable section

/-- A378662: Number of divisors d of n such that sigma(d) <= 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378662.P11219609030214075406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378662 (n : ℕ) : ℤ :=
  A378662.P11219609030214075406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378663.P6986709549582363223

`A378662(n+1)-A080225(n+1)`
-/

namespace A378663.P6986709549582363223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) - A080225 (n + 1)

end

end A378663.P6986709549582363223

noncomputable section

/-- A378663: Number of divisors d of n such that sigma(d) < 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378663.P6986709549582363223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663 (n : ℕ) : ℤ :=
  A378663.P6986709549582363223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378983.P7472048348520994614

`lt[A378982(n+1), 1]+1`
-/

namespace A378983.P7472048348520994614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378983.P7472048348520994614

noncomputable section

/-- A378983: Numbers k such that (A003961(k)-2*k) divides (A003961(k)-(1+sigma(k))), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A378983.P7472048348520994614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A378983 (n : ℕ) : ℤ :=
  (A378983.P7472048348520994614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A378983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378985.P6789501297804054790

`A336835(2*(n+1))`
-/

namespace A378985.P6789501297804054790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (2 * (n + 1))

end

end A378985.P6789501297804054790

noncomputable section

/-- A378985: Number of iterations of x -> A003961(x) needed before the result is deficient, when starting from x = 2*n.

Offset 1, canonical program `A378985.P6789501297804054790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378985 (n : ℕ) : ℤ :=
  A378985.P6789501297804054790.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379229.P5775022352315501244

`A252748(A319630(n+1))`
-/

namespace A379229.P5775022352315501244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A319630 (n + 1)).toNat

end

end A379229.P5775022352315501244

noncomputable section

/-- A379229: Difference A003961(k)-(2*k) computed for the natural numbers k for which k and A003961(k) are relatively prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379229.P5775022352315501244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379229 (n : ℕ) : ℤ :=
  A379229.P5775022352315501244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, A319630, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379230.P706396864197562586

`A252748(A104210(n+1))`
-/

namespace A379230.P706396864197562586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A104210 (n + 1)).toNat

end

end A379230.P706396864197562586

noncomputable section

/-- A379230: Difference A003961(k)-(2*k) computed for the natural numbers k for which gcd(k,A003961(k)) > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379230.P706396864197562586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379230 (n : ℕ) : ℤ :=
  A379230.P706396864197562586.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104210, A252748, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379238.P6108513974028893075

`∑{p}[A286385(n+1), C(#, A286385(n+1))]`
-/

namespace A379238.P6108513974028893075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p (A286385 (n + 1)).toNat

end

end A379238.P6108513974028893075

noncomputable section

/-- A379238: a(n) = 1 if A003961(n)-sigma(n) is prime, otherwise 0, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379238.P6108513974028893075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A379238 (n : ℕ) : ℤ :=
  (A379238.P6108513974028893075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A379238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379239.P18266908757629048078

`eq[1, A379238(1+n)]+1`
-/

namespace A379239.P18266908757629048078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379238 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379239.P18266908757629048078

noncomputable section

/-- A379239: Numbers k for which A003961(k)-sigma(k) is prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379239.P18266908757629048078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239 (n : ℕ) : ℤ :=
  (A379239.P18266908757629048078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379475.P1067079414493059860

`n²%A372565(n+1)`
-/

namespace A379475.P1067079414493059860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A372565 (n + 1))

end

end A379475.P1067079414493059860

noncomputable section

/-- A379475: a(n) = 1 if A372565(n) > 1, otherwise 0, where A372565(n) is the greatest common divisor of n, sigma(n) and A003961(n).

Offset 1, canonical program `A379475.P1067079414493059860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475 (n : ℕ) : ℤ :=
  A379475.P1067079414493059860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379476.P16050362657384629541

`1%A326057(n+1)`
-/

namespace A379476.P16050362657384629541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 1 (A326057 (n + 1))

end

end A379476.P16050362657384629541

noncomputable section

/-- A379476: a(n) = 1 if A326057(n) > 1, otherwise 0, where A326057(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)).

Offset 1, canonical program `A379476.P16050362657384629541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476 (n : ℕ) : ℤ :=
  A379476.P16050362657384629541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379477.P1420737164069677363

`eq[1, A379476(1+n)]+1`
-/

namespace A379477.P1420737164069677363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379477.P1420737164069677363

noncomputable section

/-- A379477: Numbers k such that A003961(k)-2k and A003961(k)-sigma(k) have a common divisor > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379477.P1420737164069677363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477 (n : ℕ) : ℤ :=
  (A379477.P1420737164069677363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379478.P7624876134946239236

`A379476(n+1)-A379475(n+1)`
-/

namespace A379478.P7624876134946239236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1) - A379475 (n + 1)

end

end A379478.P7624876134946239236

noncomputable section

/-- A379478: a(n) = 1 if the greatest common divisor of n, sigma(n) and A003961(n) is 1 and gcd(A003961(n)-2n, A003961(n)-sigma(n)) > 1, otherwise 0.

Offset 1, canonical program `A379478.P7624876134946239236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478 (n : ℕ) : ℤ :=
  A379478.P7624876134946239236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379479.P310701363561203726

`eq[1, A379478(n+1)]+1`
-/

namespace A379479.P310701363561203726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379479.P310701363561203726

noncomputable section

/-- A379479: Numbers k such that the greatest common divisor of k, sigma(k) and A003961(k) is 1 and gcd(A003961(k)-2k, A003961(k)-sigma(k)) > 1.

Offset 1, canonical program `A379479.P310701363561203726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479 (n : ℕ) : ℤ :=
  (A379479.P310701363561203726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379483.P10370958527501415734

`A007814(1+A379482(n+1))`
-/

namespace A379483.P10370958527501415734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A379482 (n + 1)).toNat

end

end A379483.P10370958527501415734

noncomputable section

/-- A379483: a(n) is the number of trailing 1-bits in the binary representation of sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379483.P10370958527501415734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379483 (n : ℕ) : ℤ :=
  A379483.P10370958527501415734.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379482, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389910.P3820855388453809546

`A389906(A252463(n+1))`
-/

namespace A389910.P3820855388453809546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389906 (A252463 (n + 1)).toNat

end

end A389910.P3820855388453809546

noncomputable section

/-- A389910: a(n) = min(n, A389909(n)).

Offset 1, canonical program `A389910.P3820855388453809546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389910 (n : ℕ) : ℤ :=
  A389910.P3820855388453809546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046645.P8763404548643348052

`A293447(A293442(n+1))`
-/

namespace A046645.P8763404548643348052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293447 (A293442 (n + 1)).toNat

end

end A046645.P8763404548643348052

noncomputable section

/-- A046645: a(n) = log_2(A046644(n)); also the 2-adic valuation of A046644(n).

Offset 1, canonical program `A046645.P8763404548643348052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, A293447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046645 (n : ℕ) : ℤ :=
  A046645.P8763404548643348052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, A293447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072667.P4469331070695578208

`p?[(n+1)*A001222(A340071(n+1)+n+1)]`
-/

namespace A072667.P4469331070695578208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A340071 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072667.P4469331070695578208

noncomputable section

/-- A072667: Consider m such that prime(m) + prime(m+1) = prime(k) + 1 for some k; sequence gives values of prime(m).

Offset 1, canonical program `A072667.P4469331070695578208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. -/
def A072667 (n : ℕ) : ℤ :=
  A072667.P4469331070695578208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1245 terms. -/
def A072667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145387.P17092783934499524427

`A348937(p?[A046704(n+1)-2])`
-/

namespace A145387.P17092783934499524427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145387.P17092783934499524427

noncomputable section

/-- A145387: Natural numbers n such that n-1 and n+1 are prime, also (sum of digits) + 1 and (sum of digits) - 1 is prime.

Offset 1, canonical program `A145387.P17092783934499524427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A145387 (n : ℕ) : ℤ :=
  A145387.P17092783934499524427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A145387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167447.P17226392591559380743

`∑{d}[1+n, A356173(A322361(#))]`
-/

namespace A167447.P17226392591559380743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356173 (A322361 d).toNat

end

end A167447.P17226392591559380743

noncomputable section

/-- A167447: Number of divisors of n which are not multiples of 3 consecutive primes.

Offset 1, canonical program `A167447.P17226392591559380743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167447 (n : ℕ) : ℤ :=
  A167447.P17226392591559380743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179005.P14351113100697518095

`lt[A001414(A162341(n)), A349164(n+1)]`
-/

namespace A179005.P14351113100697518095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A162341 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179005.P14351113100697518095

noncomputable section

/-- A179005: Indices of nonprime repunits: nonnegative numbers n such that 11...111 = (10^n - 1)/9 is composite.

Offset 1, canonical program `A179005.P14351113100697518095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A179005 (n : ℕ) : ℤ :=
  (A179005.P14351113100697518095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A179005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209623.P6270556564097260261

`p?[A379239(n+1)]`
-/

namespace A209623.P6270556564097260261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209623.P6270556564097260261

noncomputable section

/-- A209623: Primes separated from their adjacent next primes by a prime number of successive composites.

Offset 1, canonical program `A209623.P6270556564097260261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623 (n : ℕ) : ℤ :=
  A209623.P6270556564097260261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246352.P420064894490892469

`lt[n, A336853(n+1)+1]+1`
-/

namespace A246352.P420064894490892469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P420064894490892469

noncomputable section

/-- A246352: Numbers n such that A048673(n) >= n.

Offset 1, canonical program `A246352.P420064894490892469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8815 terms. -/
def A246352 (n : ℕ) : ℤ :=
  (A246352.P420064894490892469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8815 terms. -/
def A246352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265407.P516872660325429595

`A248663(A265408(n))`
-/

namespace A265407.P516872660325429595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A265408 n).toNat

end

end A265407.P516872660325429595

noncomputable section

/-- A265407: Spironacci-style recurrence: a(0)=0, a(1)=1, a(n) = 2*a(n) XOR a(A265409(n)).

Offset 0, canonical program `A265407.P516872660325429595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248663, A265408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265407 (n : ℕ) : ℤ :=
  A265407.P516872660325429595.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248663, A265408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268387.P5610165792489103929

`A248663(A293442(1+n))`
-/

namespace A268387.P5610165792489103929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A293442 (1 + n)).toNat

end

end A268387.P5610165792489103929

noncomputable section

/-- A268387: Bitwise-XOR of the exponents of primes in the prime factorization of n.

Offset 1, canonical program `A268387.P5610165792489103929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268387 (n : ℕ) : ℤ :=
  A268387.P5610165792489103929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268390.P9410519277609517028

`eq[1, A007913(A293442(n+1))]+1`
-/

namespace A268390.P9410519277609517028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A293442 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268390.P9410519277609517028

noncomputable section

/-- A268390: Products of an even number of distinct primes and the square of a number in the sequence (including 1).

Offset 1, canonical program `A268390.P9410519277609517028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268390 (n : ℕ) : ℤ :=
  (A268390.P9410519277609517028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289618.P14878026680756617388

`A289617(n+1)-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289618.P14878026680756617388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289617 (n + 1) - A046645 (n + 1)

end

end A289618.P14878026680756617388

noncomputable section

/-- A289618: a(n) = A289617(n) - A046645(n) = A005187(A001222(n)) - A046645(n).

Offset 1, canonical program `A289618.P14878026680756617388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289618 (n : ℕ) : ℤ :=
  A289618.P14878026680756617388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295891.P5603642694867004673

`1-A295892(n+1)`
-/

namespace A295891.P5603642694867004673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295892 (n + 1)

end

end A295891.P5603642694867004673

noncomputable section

/-- A295891: a(n) = 1 if binary weights of n and A003961(n) are of the different parity, 0 otherwise; a(n) = A010060(n) XOR A010060(A003961(n)).

Offset 1, canonical program `A295891.P5603642694867004673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295891 (n : ℕ) : ℤ :=
  A295891.P5603642694867004673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305439.P10396080351550377806

`A046645(n+1)-A007949(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305439.P10396080351550377806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007949 (n + 1)

end

end A305439.P10396080351550377806

noncomputable section

/-- A305439: a(n) = A046645(n) - A007949(n); the 2-adic valuation of A317932.

Offset 1, canonical program `A305439.P10396080351550377806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439 (n : ℕ) : ℤ :=
  A305439.P10396080351550377806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A329647.P10763472955733118982

`A268387(A108951(n+1))`
-/

namespace A329647.P10763472955733118982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A108951 (n + 1)).toNat

end

end A329647.P10763472955733118982

noncomputable section

/-- A329647: Bitwise-XOR of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329647.P10763472955733118982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329647 (n : ℕ) : ℤ :=
  A329647.P10763472955733118982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336697.P535187774030085875

`A337337(A064216(1+n))`
-/

namespace A336697.P535187774030085875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (A064216 (1 + n)).toNat

end

end A336697.P535187774030085875

noncomputable section

/-- A336697: a(n) = gcd((s+1)/2, 1+sigma(s)), where s is the n-th odd square, (2n-1)^2.

Offset 1, canonical program `A336697.P535187774030085875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697 (n : ℕ) : ℤ :=
  A336697.P535187774030085875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336841.P2971694009307455037

`A336845(n+1)-A003973(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336841.P2971694009307455037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - A003973 (n + 1)

end

end A336841.P2971694009307455037

noncomputable section

/-- A336841: Prime-shifted analog of A094471: a(n) = A336845(n) - A003973(n).

Offset 1, canonical program `A336841.P2971694009307455037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336841 (n : ℕ) : ℤ :=
  A336841.P2971694009307455037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336854.P17456032559665882968

`A336841(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336854.P17456032559665882968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / 2

end

end A336854.P17456032559665882968

noncomputable section

/-- A336854: a(n) = A336841(n)/2.

Offset 1, canonical program `A336854.P17456032559665882968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336854.P17456032559665882968.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336930.P3805252567437306107

`eq[A295664(n+1), A336932(n+1)]+1`
-/

namespace A336930.P3805252567437306107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336930.P3805252567437306107

noncomputable section

/-- A336930: Numbers k such that the 2-adic valuation of A003973(k), the sum of divisors of the prime shifted k is equal to the 2-adic valuation of the number of divisors of k.

Offset 1, canonical program `A336930.P3805252567437306107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A336930 (n : ℕ) : ℤ :=
  (A336930.P3805252567437306107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A336930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336931.P13387050893284357146

`A336932(n+1)-A295664(n+1)`
-/

namespace A336931.P13387050893284357146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1) - A295664 (n + 1)

end

end A336931.P13387050893284357146

noncomputable section

/-- A336931: Difference between the 2-adic valuation of A003973(n) [= the sum of divisors of the prime shifted n] and the 2-adic valuation of the number of divisors of n.

Offset 1, canonical program `A336931.P13387050893284357146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336931 (n : ℕ) : ℤ :=
  A336931.P13387050893284357146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337345.P1594935461271935527

`A378662(n+1)+A080224(n+1)`
-/

namespace A337345.P1594935461271935527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) + A080224 (n + 1)

end

end A337345.P1594935461271935527

noncomputable section

/-- A337345: Number of divisors d of n for which A003961(d) > 2*d, where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A337345.P1594935461271935527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345 (n : ℕ) : ℤ :=
  A337345.P1594935461271935527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337346.P2412165337189814597

`A337345(n+1)-A252742(n+1)`
-/

namespace A337346.P2412165337189814597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A252742 (n + 1)

end

end A337346.P2412165337189814597

noncomputable section

/-- A337346: Number of proper divisors d of n for which A003961(d) > 2*d.

Offset 1, canonical program `A337346.P2412165337189814597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346 (n : ℕ) : ℤ :=
  A337346.P2412165337189814597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337372.P8743427394411133788

`eq[1, A337345(n+1)]+1`
-/

namespace A337372.P8743427394411133788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337372.P8743427394411133788

noncomputable section

/-- A337372: Primitively primeshift-abundant numbers: Numbers that are included in A246282 (k with A003961(k) > 2k), but none of whose proper divisors are.

Offset 1, canonical program `A337372.P8743427394411133788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372 (n : ℕ) : ℤ :=
  (A337372.P8743427394411133788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337378.P15155497971269195371

`lt[0, A337380(1+n)]+1`
-/

namespace A337378.P15155497971269195371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337378.P15155497971269195371

noncomputable section

/-- A337378: Numbers k for which A003961(k) > 2*sigma(k).

Offset 1, canonical program `A337378.P15155497971269195371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337378 (n : ℕ) : ℤ :=
  (A337378.P15155497971269195371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341512.P10028097722280494924

`A341529(n+1)-A341528(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341512.P10028097722280494924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - A341528 (n + 1)

end

end A341512.P10028097722280494924

noncomputable section

/-- A341512: a(n) = A341529(n) - A341528(n) = (sigma(n)*A003961(n)) - (n*sigma(A003961(n))).

Offset 1, canonical program `A341512.P10028097722280494924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341512 (n : ℕ) : ℤ :=
  A341512.P10028097722280494924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341526.P14686975132241755555

`A341528(n+1)/A341530(n+1)`
-/

namespace A341526.P14686975132241755555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341526.P14686975132241755555

noncomputable section

/-- A341526: Numerator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A341526.P14686975132241755555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341526 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341526.P14686975132241755555.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341528, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341527.P11918389594908135215

`A341529(n+1)/A341530(n+1)`
-/

namespace A341527.P11918389594908135215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A341530 (n + 1) : ℚ)

end

end A341527.P11918389594908135215

noncomputable section

/-- A341527: Denominator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A341527.P11918389594908135215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341527.P11918389594908135215.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341529, A341530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341609.P3877242790927454112

`Δ[fp[A337372(n+1)]]`
-/

namespace A341609.P3877242790927454112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337372 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341609.P3877242790927454112

noncomputable section

/-- A341609: Characteristic function of A337372: a(n) = 1 if A337345(n) = 1, otherwise 0.

Offset 1, canonical program `A341609.P3877242790927454112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609 (n : ℕ) : ℤ :=
  A341609.P3877242790927454112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341610.P8466044333028116895

`lt[0, A337346(n+1)]+1`
-/

namespace A341610.P8466044333028116895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341610.P8466044333028116895

noncomputable section

/-- A341610: Nonprimitive terms of A246282: numbers k that have more than one divisor d|k such that A003961(d) > 2*d.

Offset 1, canonical program `A341610.P8466044333028116895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610 (n : ℕ) : ℤ :=
  (A341610.P8466044333028116895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341611.P6987460228206011471

`lt[A341609(n+1), A341612(n+1)]+1`
-/

namespace A341611.P6987460228206011471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341611.P6987460228206011471

noncomputable section

/-- A341611: Nonabundant numbers that are not primitive terms of A246282.

Offset 1, canonical program `A341611.P6987460228206011471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611 (n : ℕ) : ℤ :=
  (A341611.P6987460228206011471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342668.P4029046594404538909

`A006530(A341527(n+1))`
-/

namespace A342668.P4029046594404538909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341527 (n + 1)).toNat

end

end A342668.P4029046594404538909

noncomputable section

/-- A342668: Largest prime in the denominator of ratio A341528(n)/A341529(n) (when presented in its lowest terms).

Offset 1, canonical program `A342668.P4029046594404538909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342668 (n : ℕ) : ℤ :=
  A342668.P4029046594404538909.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346239.P8636144481431043210

`∑{d}[n+1, A008683((n+1)/#)*A341512(#)]`
-/

namespace A346239.P8636144481431043210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A341512 d

end

end A346239.P8636144481431043210

noncomputable section

/-- A346239: Möbius transform of A341512, sigma(n)*A003961(n) - n*sigma(A003961(n)).

Offset 1, canonical program `A346239.P8636144481431043210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346239 (n : ℕ) : ℤ :=
  A346239.P8636144481431043210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346240.P13978465434129994439

`A341512(n+1)-A346239(n+1)`
-/

namespace A346240.P13978465434129994439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341512 (n + 1) - A346239 (n + 1)

end

end A346240.P13978465434129994439

noncomputable section

/-- A346240: Difference between A341512 and its Möbius transform.

Offset 1, canonical program `A346240.P13978465434129994439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240 (n : ℕ) : ℤ :=
  A346240.P13978465434129994439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347121.P10777423432329443113

`A347136(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347121.P10777423432329443113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (n + 1) - (2 * (n + 1) : ℤ)

end

end A347121.P10777423432329443113

noncomputable section

/-- A347121: a(n) = A347136(n) - 2*n.

Offset 1, canonical program `A347121.P10777423432329443113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347121 (n : ℕ) : ℤ :=
  A347121.P10777423432329443113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347122.P16124771186689615703

`A347137(n+1)-2*A000010(n+1)`
-/

namespace A347122.P16124771186689615703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (n + 1) - 2 * A000010 (n + 1)

end

end A347122.P16124771186689615703

noncomputable section

/-- A347122: Möbius transform of A347121.

Offset 1, canonical program `A347122.P16124771186689615703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347122 (n : ℕ) : ℤ :=
  A347122.P16124771186689615703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348749.P12973560767162091666

`filter[2*n+1, A353639(#)]`
-/

namespace A348749.P12973560767162091666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j) = 1) n)

end

end A348749.P12973560767162091666

noncomputable section

/-- A348749: Odd numbers k for which A064989(sigma(k)) > A064989(k), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348749.P12973560767162091666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749 (n : ℕ) : ℤ :=
  (A348749.P12973560767162091666.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349161.P8652954744420952419

`A003961(A349164(n+1))`
-/

namespace A349161.P8652954744420952419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A349164 (n + 1)).toNat

end

end A349161.P8652954744420952419

noncomputable section

/-- A349161: a(n) = A003961(n) / gcd(sigma(n), A003961(n)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A349161.P8652954744420952419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349164, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349161 (n : ℕ) : ℤ :=
  A349161.P8652954744420952419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A349164, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379485.P4633836280962340645

`C(3, lcm(6, A379489(n+1)))`
-/

namespace A379485.P4633836280962340645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.lcm 6 (A379489 (n + 1)))

end

end A379485.P4633836280962340645

noncomputable section

/-- A379485: a(n) = 1 if gcd(n,A003961(n))*gcd(sigma(n),A276086(n)) is equal to gcd(n,A276086(n))*gcd(sigma(n),A003961(n)), otherwise 0, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

Offset 1, canonical program `A379485.P4633836280962340645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379485 (n : ℕ) : ℤ :=
  (A379485.P4633836280962340645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379486.P15785401160869906491

`record[(n+1)*A379485(n+1)]`
-/

namespace A379486.P15785401160869906491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379486.P15785401160869906491

noncomputable section

/-- A379486: Numbers k for which gcd(k,A003961(k))*gcd(sigma(k),A276086(k)) is equal to gcd(k,A276086(k))*gcd(sigma(k),A003961(k)), where A003961(n) is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

Offset 1, canonical program `A379486.P15785401160869906491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7747 terms. -/
def A379486 (n : ℕ) : ℤ :=
  A379486.P15785401160869906491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7747 terms. -/
def A379486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387707.P1369852853517030567

`A337345(A023196(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387707.P1369852853517030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A023196 (n + 1)).toNat

end

end A387707.P1369852853517030567

noncomputable section

/-- A387707: a(n) = A337345(A023196(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

Offset 1, canonical program `A387707.P1369852853517030567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707 (n : ℕ) : ℤ :=
  A387707.P1369852853517030567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388979.P3109301176351806020

`A326127(n+1)*A389078(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388979.P3109301176351806020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) * A389078 (n + 1)

end

end A388979.P3109301176351806020

noncomputable section

/-- A388979: a(n) = A326127(n) * A389078(n).

Offset 1, canonical program `A388979.P3109301176351806020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388979 (n : ℕ) : ℤ :=
  A388979.P3109301176351806020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401936.P12641626855241721071

`A341526(2*(n+1))`
-/

namespace A401936.P12641626855241721071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (2 * (n + 1))

end

end A401936.P12641626855241721071

noncomputable section

/-- A401936: Numerator of ratio 2*n*sigma(A003961(2*n)) / sigma(2*n)*A003961(2*n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A401936.P12641626855241721071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401936 (n : ℕ) : ℤ :=
  A401936.P12641626855241721071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401937.P5621126651802657141

`A341527(2*(n+1))`
-/

namespace A401937.P5621126651802657141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (2 * (n + 1))

end

end A401937.P5621126651802657141

noncomputable section

/-- A401937: Denominator of ratio 2*n*sigma(A003961(2*n)) / sigma(2*n)*A003961(2*n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A401937.P5621126651802657141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401937 (n : ℕ) : ℤ :=
  A401937.P5621126651802657141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A402586.P6877875654712656001

`A341526(A003961(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402586.P6877875654712656001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341526 (A003961 (2 * (n + 1))).toNat

end

end A402586.P6877875654712656001

noncomputable section

/-- A402586: a(n) = A341526(A003961(2*n)), where A341526(n) is the numerator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A402586.P6877875654712656001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A341526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A402586 (n : ℕ) : ℤ :=
  A402586.P6877875654712656001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A341526, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A402586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A402587.P1443662691509151853

`A341527(A003961(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402587.P1443662691509151853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341527 (A003961 (2 * (n + 1))).toNat

end

end A402587.P1443662691509151853

noncomputable section

/-- A402587: a(n) = A341527(A003961(2*n)), where A341527(n) is the denominator of ratio n*sigma(A003961(n)) / sigma(n)*A003961(n), where sigma is the sum of divisors of n, and A003961 shifts the prime factorization of n one step towards larger primes.

Offset 1, canonical program `A402587.P1443662691509151853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A402587 (n : ℕ) : ℤ :=
  A402587.P1443662691509151853.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A402587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046644.P2594318262158557951

`A000079(A046645(n+1))`
-/

namespace A046644.P2594318262158557951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A046645 (n + 1)).toNat

end

end A046644.P2594318262158557951

noncomputable section

/-- A046644: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives denominator of b_n.

Offset 1, canonical program `A046644.P2594318262158557951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046644 (n : ℕ) : ℤ :=
  A046644.P2594318262158557951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064415.P15772278527862750718

`A064097(n+1)-A329697(n+1)`
-/

namespace A064415.P15772278527862750718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A329697 (n + 1)

end

end A064415.P15772278527862750718

noncomputable section

/-- A064415: a(1) = 0, a(n) = iter(n) if n is even, a(n) = iter(n)-1 if n is odd, where iter(n) = A003434(n) = smallest number of iterations of Euler totient function phi needed to reach 1.

Offset 1, canonical program `A064415.P15772278527862750718`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064415 (n : ℕ) : ℤ :=
  A064415.P15772278527862750718.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A329697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066638.P1945052902267666698

`A066636(n+1)*(n+1)`
-/

namespace A066638.P1945052902267666698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1) * (n + 1 : ℤ)

end

end A066638.P1945052902267666698

noncomputable section

/-- A066638: Smallest power of a squarefree number that is a multiple of n.

Offset 1, canonical program `A066638.P1945052902267666698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066638 (n : ℕ) : ℤ :=
  A066638.P1945052902267666698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067440.P3846290639594387521

`∑[A052410(1+n)]`
-/

namespace A067440.P3846290639594387521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067440.P3846290639594387521

noncomputable section

/-- A067440: Sum(i(n)), where i(n) is the smallest integer with i(n)^m=n for some m.

Offset 1, canonical program `A067440.P3846290639594387521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067440 (n : ℕ) : ℤ :=
  A067440.P3846290639594387521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071318.P4179928839339890454

`A067259(eq[1, A067259(n+2)-A067259(n+1)]+1)`
-/

namespace A071318.P4179928839339890454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 2) - A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071318.P4179928839339890454

noncomputable section

/-- A071318: Lesser of 2 consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that both k and k+1 are in A067259.

Offset 1, canonical program `A071318.P4179928839339890454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A071318 (n : ℕ) : ℤ :=
  A071318.P4179928839339890454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A071318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071319.P13411586007084234983

`A071318(eq[1, A071318(n+2)-A071318(n+1)]+1)`
-/

namespace A071319.P13411586007084234983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 2) - A071318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071319.P13411586007084234983

noncomputable section

/-- A071319: First of 3 consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that {k, k+1, k+2} are in A067259.

Offset 1, canonical program `A071319.P13411586007084234983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A071319 (n : ℕ) : ℤ :=
  A071319.P13411586007084234983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A071319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071320.P16588707936141343234

`∩[A071319(n+1)-1, A071319(n+1)]`
-/

namespace A071320.P16588707936141343234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071320.P16588707936141343234

noncomputable section

/-- A071320: Least of four consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that {k, k+1, k+2, k+3} are in A067259.

Offset 1, canonical program `A071320.P16588707936141343234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A071320 (n : ℕ) : ℤ :=
  (A071320.P16588707936141343234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A071320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072666.P4852007313916300024

`A000720(A072667(n+1))`
-/

namespace A072666.P4852007313916300024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072667 (n + 1)).toNat

end

end A072666.P4852007313916300024

noncomputable section

/-- A072666: Numbers n such that prime(n) + prime(n+1) - 1 is prime.

Offset 1, canonical program `A072666.P4852007313916300024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072666 (n : ℕ) : ℤ :=
  A072666.P4852007313916300024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072774.P15867954741118053592

`eq[0, A062977(n+1)]+1`
-/

namespace A072774.P15867954741118053592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072774.P15867954741118053592

noncomputable section

/-- A072774: Powers of squarefree numbers.

Offset 1, canonical program `A072774.P15867954741118053592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072774 (n : ℕ) : ℤ :=
  (A072774.P15867954741118053592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072775.P6143160382789824148

`A007947(A072774(n+1))`
-/

namespace A072775.P6143160382789824148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A072774 (n + 1)).toNat

end

end A072775.P6143160382789824148

noncomputable section

/-- A072775: Squarefree kernels of powers of squarefree numbers.

Offset 1, canonical program `A072775.P6143160382789824148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072775 (n : ℕ) : ℤ :=
  A072775.P6143160382789824148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073843.P17664435674148381334

`A052410(n+1)^A014681(A052409(n+1))`
-/

namespace A073843.P17664435674148381334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) : ℚ) ^ (A014681 (A052409 (n + 1)).toNat : ℤ)

end

end A073843.P17664435674148381334

noncomputable section

/-- A073843: a(1) = 1; for n > 1 a(n) = smallest number of the form n^r (with r rational != 1) not included earlier.

Offset 1, canonical program `A073843.P17664435674148381334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073843 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073843.P17664435674148381334.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073933.P3226346954737411092

`1+A064097(n+1)`
-/

namespace A073933.P3226346954737411092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A064097 (n + 1)

end

end A073933.P3226346954737411092

noncomputable section

/-- A073933: Number of terms in n-th row of triangle in A073932.

Offset 1, canonical program `A073933.P3226346954737411092`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073933 (n : ℕ) : ℤ :=
  A073933.P3226346954737411092.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079095.P14370046378917256101

`A079079(eq[1, A079087(n+1)]+1)`
-/

namespace A079095.P14370046378917256101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079095.P14370046378917256101

noncomputable section

/-- A079095: Squarefree numbers of the form (prime(k)+1)*(prime(k+1)+1)/4.

Offset 1, canonical program `A079095.P14370046378917256101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A079095 (n : ℕ) : ℤ :=
  A079095.P14370046378917256101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A079095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080064.P2727321595701716016

`eq[1, (n+1)%(A074828(n+1)+1)]+1`
-/

namespace A080064.P2727321595701716016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A074828 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080064.P2727321595701716016

noncomputable section

/-- A080064: Numbers k such that k == 1 modulo (lpf(k)+1), where lpf(k) is the least prime dividing k (A020639).

Offset 1, canonical program `A080064.P2727321595701716016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A080064 (n : ℕ) : ℤ :=
  (A080064.P2727321595701716016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A080064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085651.P1677411882684492931

`∩[A071318(n+1), A391396(n+1)]`
-/

namespace A085651.P1677411882684492931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085651.P1677411882684492931

noncomputable section

/-- A085651: Index of the first of two successive 2's in A005361.

Offset 1, canonical program `A085651.P1677411882684492931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8101 terms. -/
def A085651 (n : ℕ) : ℤ :=
  (A085651.P1677411882684492931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8101 terms. -/
def A085651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088383.P2884301962775713231

`lt[A074828(n+2)^4, n+1]+2`
-/

namespace A088383.P2884301962775713231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 2) ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A088383.P2884301962775713231

noncomputable section

/-- A088383: Numbers greater than the 4th power of their smallest prime factor.

Offset 1, canonical program `A088383.P2884301962775713231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088383 (n : ℕ) : ℤ :=
  (A088383.P2884301962775713231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088821.P3945839753920840161

`∑[A006530(A074828(n+1))]-1`
-/

namespace A088821.P3945839753920840161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A088821.P3945839753920840161

noncomputable section

/-- A088821: a(n) is the sum of smallest prime factors of numbers from 1 to n.

Offset 1, canonical program `A088821.P3945839753920840161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088821 (n : ℕ) : ℤ :=
  A088821.P3945839753920840161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088823.P6134454624131261826

`gcd(A088821(n+1), A088822(n+1))`
-/

namespace A088823.P6134454624131261826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088821 (n + 1)) (A088822 (n + 1))

end

end A088823.P6134454624131261826

noncomputable section

/-- A088823: a(n) is the GCD of the sum of largest prime factors of numbers from 1 to n and of the sum of smallest prime factors of numbers from 1 to n.

Offset 1, canonical program `A088823.P6134454624131261826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088821, A088822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088823 (n : ℕ) : ℤ :=
  (A088823.P6134454624131261826.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088821, A088822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088905.P6975458775948714409

`record[A052410(A004277(n))+1]`
-/

namespace A088905.P6975458775948714409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A004277 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088905.P6975458775948714409

noncomputable section

/-- A088905: Numbers m having exactly one representation m = x^i + x^j with 1<x<=m and 0<=i<=j.

Offset 1, canonical program `A088905.P6975458775948714409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9915 terms. -/
def A088905 (n : ℕ) : ℤ :=
  A088905.P6975458775948714409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9915 terms. -/
def A088905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091375.P9196329194725387790

`lt[A074828(n+1), A001222(n+1)]+1`
-/

namespace A091375.P9196329194725387790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P9196329194725387790

noncomputable section

/-- A091375: Numbers k with property that the number of prime factors of k (counted with repetition) exceeds the smallest prime factor of k.

Offset 1, canonical program `A091375.P9196329194725387790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9923 terms. -/
def A091375 (n : ℕ) : ℤ :=
  (A091375.P9196329194725387790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9923 terms. -/
def A091375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091377.P7351627192632326884

`lt[A001222(n+1), A074828(n+1)]+1`
-/

namespace A091377.P7351627192632326884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P7351627192632326884

noncomputable section

/-- A091377: Numbers having fewer prime factors than the value of their smallest prime factor.

Offset 1, canonical program `A091377.P7351627192632326884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. -/
def A091377 (n : ℕ) : ℤ :=
  (A091377.P7351627192632326884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. -/
def A091377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093771.P13699473905171494955

`eq[2, A089723(n+1)]+1`
-/

namespace A093771.P13699473905171494955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093771.P13699473905171494955

noncomputable section

/-- A093771: Perfect powers for which the exponent is a prime number: solutions to {A052409(x) is prime}.

Offset 1, canonical program `A093771.P13699473905171494955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A093771 (n : ℕ) : ℤ :=
  (A093771.P13699473905171494955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A093771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112537.P5806524321860362590

`A052410(n+1)^A052409(n+2)`
-/

namespace A112537.P5806524321860362590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) : ℚ) ^ (A052409 (n + 2) : ℤ)

end

end A112537.P5806524321860362590

noncomputable section

/-- A112537: If b(n) is the smallest positive integer and c(n) is the largest positive integer such that n = b(n)^c(n), then a(n) = b(n)^c(n+1).

Offset 1, canonical program `A112537.P5806524321860362590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112537.P5806524321860362590.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112538.P11631091965378758560

`A052409(n+2)^A052410(n+2)`
-/

namespace A112538.P11631091965378758560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052409 (n + 2) : ℚ) ^ (A052410 (n + 2) : ℤ)

end

end A112538.P11631091965378758560

noncomputable section

/-- A112538: If b(n) is the smallest positive integer and c(n) is the largest positive integer such that n = b(n)^c(n), then a(n) = c(n)^b(n).

Offset 2, canonical program `A112538.P11631091965378758560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112538.P11631091965378758560.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117365.P7706330559425117341

`A117364(A074828(n+1))`
-/

namespace A117365.P7706330559425117341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117364 (A074828 (n + 1)).toNat

end

end A117365.P7706330559425117341

noncomputable section

/-- A117365: a(n) = largest prime less than the smallest prime dividing n (or 1 if there is no such prime).

Offset 1, canonical program `A117365.P7706330559425117341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A117365 (n : ℕ) : ℤ :=
  A117365.P7706330559425117341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A117365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121495.P5034803154787949706

`filter[A120944(n+1), A354819(#+1)]`
-/

namespace A121495.P5034803154787949706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j + 1).toNat = 1) n)

end

end A121495.P5034803154787949706

noncomputable section

/-- A121495: Numbers k such that k and k+1 are composite and squarefree.

Offset 1, canonical program `A121495.P5034803154787949706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. -/
def A121495 (n : ℕ) : ℤ :=
  A121495.P5034803154787949706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. -/
def A121495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124795.P5552241123278455388

`A124794(n+1)*A321898(A064989(n+1))`
-/

namespace A124795.P5552241123278455388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (n + 1) * A321898 (A064989 (n + 1)).toNat

end

end A124795.P5552241123278455388

noncomputable section

/-- A124795: Number of permutations with given cycle structure, in the prime factorization order.

Offset 1, canonical program `A124795.P5552241123278455388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A124795 (n : ℕ) : ℤ :=
  A124795.P5552241123278455388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A124795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130790.P1360378470936033627

`floor(A037202(n+1)/2)`
-/

namespace A130790.P1360378470936033627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037202 (n + 1) : ℚ) / 2⌋

end

end A130790.P1360378470936033627

noncomputable section

/-- A130790: Number of nodes in the Lucas-Pratt primality tree rooted at prime(n).

Offset 1, canonical program `A130790.P1360378470936033627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A130790 (n : ℕ) : ℤ :=
  A130790.P1360378470936033627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A130790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136529.P16732376434908301237

`A000005(A092067(n+1)+1)`
-/

namespace A136529.P16732376434908301237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A092067 (n + 1) + 1).toNat

end

end A136529.P16732376434908301237

noncomputable section

/-- A136529: a(n) = the smallest possible number of positive divisors of the sum of any two distinct positive divisors of n.

Offset 2, canonical program `A136529.P16732376434908301237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A136529 (n : ℕ) : ℤ :=
  A136529.P16732376434908301237.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A136529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157102.P5673186053881152671

`1+A092067(1+n)*(n+1)`
-/

namespace A157102.P5673186053881152671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A092067 (1 + n) * (n + 1 : ℤ)

end

end A157102.P5673186053881152671

noncomputable section

/-- A157102: Tuple-chromatic Van der Waerden numbers.

Offset 2, canonical program `A157102.P5673186053881152671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157102 (n : ℕ) : ℤ :=
  A157102.P5673186053881152671.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162022.P1499624352673350960

`p?[A074828(2*n+1)]`
-/

namespace A162022.P1499624352673350960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162022.P1499624352673350960

noncomputable section

/-- A162022: Smallest prime factor of n-th odd composite integers A071904.

Offset 1, canonical program `A162022.P1499624352673350960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7738 terms. -/
def A162022 (n : ℕ) : ℤ :=
  A162022.P1499624352673350960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7738 terms. -/
def A162022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169594.P11711463441633845639

`∑{d}[1+n, A089723(#)]`
-/

namespace A169594.P11711463441633845639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089723 d

end

end A169594.P11711463441633845639

noncomputable section

/-- A169594: Number of divisors of n, counting divisor multiplicity in n.

Offset 1, canonical program `A169594.P11711463441633845639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169594 (n : ℕ) : ℤ :=
  A169594.P11711463441633845639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175082.P12473123421014558967

`record[A052410(1+n)]`
-/

namespace A175082.P12473123421014558967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175082.P12473123421014558967

noncomputable section

/-- A175082: Possible values for sum of perfect divisors of n.

Offset 1, canonical program `A175082.P12473123421014558967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175082 (n : ℕ) : ℤ :=
  A175082.P12473123421014558967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175431.P13219315261267939419

`eq[1, A089723(A000203(n+1))]+1`
-/

namespace A175431.P13219315261267939419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175431.P13219315261267939419

noncomputable section

/-- A175431: Numbers m such that sigma(m) is not a nontrivial power, i.e., sigma(m) = A000203(n) is not equal a^b where a and b are greater than 1.

Offset 1, canonical program `A175431.P13219315261267939419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5651 terms. -/
def A175431 (n : ℕ) : ℤ :=
  (A175431.P13219315261267939419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5651 terms. -/
def A175431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175433.P8925752861946144170

`A052410(∑{d}[1+n, #])`
-/

namespace A175433.P8925752861946144170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A175433.P8925752861946144170

noncomputable section

/-- A175433: a(n) = the smallest number m such that sigma(n) = m^k for any k >= 1 (sigma = A000203).

Offset 1, canonical program `A175433.P8925752861946144170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175433 (n : ℕ) : ℤ :=
  A175433.P8925752861946144170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176171.P12080423925261843454

`A073753(2*A046386(n+1))`
-/

namespace A176171.P12080423925261843454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073753 (2 * A046386 (n + 1)).toNat

end

end A176171.P12080423925261843454

noncomputable section

/-- A176171: Second prime-factor of n-th product of 4 distinct primes.

Offset 1, canonical program `A176171.P12080423925261843454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176171 (n : ℕ) : ℤ :=
  A176171.P12080423925261843454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177492.P17512611008382585647

`A120944(n+1)²`
-/

namespace A177492.P17512611008382585647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) ^ 2

end

end A177492.P17512611008382585647

noncomputable section

/-- A177492: Products of squares of 2 or more distinct primes.

Offset 1, canonical program `A177492.P17512611008382585647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177492 (n : ℕ) : ℤ :=
  A177492.P17512611008382585647.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177492.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177493.P9951410185934880408

`A120944(n+1)^3`
-/

namespace A177493.P9951410185934880408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) ^ 3

end

end A177493.P9951410185934880408

noncomputable section

/-- A177493: Products of cubes of 2 or more distinct primes.

Offset 1, canonical program `A177493.P9951410185934880408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177493 (n : ℕ) : ℤ :=
  A177493.P9951410185934880408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178638.P8804259736585962114

`A000005(n+1)-A089723(n+1)`
-/

namespace A178638.P8804259736585962114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A089723 (n + 1)

end

end A178638.P8804259736585962114

noncomputable section

/-- A178638: a(n) is the number of divisors d of n such that d^k is not equal to n for any k >= 1.

Offset 1, canonical program `A178638.P8804259736585962114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178638 (n : ℕ) : ℤ :=
  A178638.P8804259736585962114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180161.P5454680881153112469

`record[A052410(A000415(1+n))]`
-/

namespace A180161.P5454680881153112469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A000415 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180161.P5454680881153112469

noncomputable section

/-- A180161: Numbers that are the sum of two nonnegative squares but are not perfect powers.

Offset 1, canonical program `A180161.P5454680881153112469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A180161 (n : ℕ) : ℤ :=
  A180161.P5454680881153112469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A180161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185102.P5514190276231050090

`a(A157754(n+1)-1)+1` with `a(0)=0`
-/

namespace A185102.P5514190276231050090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A157754 (n + 1) - 1).toNat + 1

end

end A185102.P5514190276231050090

noncomputable section

/-- A185102: a(n) is the recursion depth of repeatedly factoring n and then the exponents in its prime product factorization, until 1 is reached.

Offset 1, canonical program `A185102.P5514190276231050090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185102 (n : ℕ) : ℤ :=
  (A185102.P5514190276231050090.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188828.P4417709929276257079

`(A153340(1+n)/A074828(A008458(n)))²`
-/

namespace A188828.P4417709929276257079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153340 (1 + n) : ℚ) / (A074828 (A008458 n).toNat : ℚ)) ^ 2

end

end A188828.P4417709929276257079

noncomputable section

/-- A188828: Number of 6 X n binary arrays without the pattern 0 1 diagonally or antidiagonally.

Offset 1, canonical program `A188828.P4417709929276257079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A188828 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A188828.P4417709929276257079.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A188828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212167.P5687651809221960298

`comp[A212164(n+1)-1]+1`
-/

namespace A212167.P5687651809221960298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A212167.P5687651809221960298

noncomputable section

/-- A212167: Numbers k such that the maximum exponent in its prime factorization is not greater than the number of positive exponents (A051903(k) <= A001221(k)).

Offset 1, canonical program `A212167.P5687651809221960298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212167 (n : ℕ) : ℤ :=
  (A212167.P5687651809221960298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214736.P16390306750706049632

`A060685(2+n)-(n+3)`
-/

namespace A214736.P16390306750706049632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060685 (2 + n) - (n + 3 : ℤ)

end

end A214736.P16390306750706049632

noncomputable section

/-- A214736: Least m>0 such that n-m divides n+1+m.

Offset 2, canonical program `A214736.P16390306750706049632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A214736 (n : ℕ) : ℤ :=
  A214736.P16390306750706049632.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A214736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243937.P13332543243628155675

`lt[A092067(n+1), A092067(n+3)]+5`
-/

namespace A243937.P13332543243628155675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 5

end

end A243937.P13332543243628155675

noncomputable section

/-- A243937: Even numbers n>=6 for which lpf(n-1) > lpf(n-3), where lpf = least prime factor.

Offset 1, canonical program `A243937.P13332543243628155675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A243937 (n : ℕ) : ℤ :=
  (A243937.P13332543243628155675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. -/
def A243937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248020.P6719666253864023266

`record[A052410(A095738(1+n))]`
-/

namespace A248020.P6719666253864023266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A095738 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248020.P6719666253864023266

noncomputable section

/-- A248020: Numbers which are coprime to the sum of their divisors, but are neither primes nor perfect powers.

Offset 1, canonical program `A248020.P6719666253864023266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A248020 (n : ℕ) : ℤ :=
  A248020.P6719666253864023266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. -/
def A248020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251727.P7570197047832034142

`lt[A074828(n+1)², A006530(n+1)]+1`
-/

namespace A251727.P7570197047832034142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A251727.P7570197047832034142

noncomputable section

/-- A251727: Numbers m > 1 such that gpf(m) > lpf(m)^2, where lpf and gpf (least and greatest prime factor of m) are given by A020639(m) and A006530(m).

Offset 1, canonical program `A251727.P7570197047832034142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251727 (n : ℕ) : ℤ :=
  (A251727.P7570197047832034142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252371.P7024407539575237769

`A243055(A251727(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252371.P7024407539575237769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A251727 (n + 1)).toNat

end

end A252371.P7024407539575237769

noncomputable section

/-- A252371: a(n) = A243055(A251727(n)).

Offset 1, canonical program `A252371.P7024407539575237769`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243055, A251727, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252371 (n : ℕ) : ℤ :=
  A252371.P7024407539575237769.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243055, A251727, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252461.P3748383216480772882

`A032742(1+n)*A117365(n+1)`
-/

namespace A252461.P3748383216480772882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (1 + n) * A117365 (n + 1)

end

end A252461.P3748383216480772882

noncomputable section

/-- A252461: Shift one instance of the smallest prime one step towards smaller primes: a(1) = 1, a(2n) = n, and for odd numbers > 1: a(n) = (n / prime(s)) * prime(s-1), where s = A055396(n), index of the smallest prime dividing n.

Offset 1, canonical program `A252461.P3748383216480772882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252461 (n : ℕ) : ℤ :=
  A252461.P3748383216480772882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253552.P2775586370480243469

`A252752(A005940(n+2))-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253552.P2775586370480243469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (A005940 (n + 2)).toNat - 1

end

end A253552.P2775586370480243469

noncomputable section

/-- A253552: Permutation of natural numbers: a(n) = A252752(A005940(n+1)) - 1.

Offset 1, canonical program `A253552.P2775586370480243469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253552 (n : ℕ) : ℤ :=
  A253552.P2775586370480243469.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253562.P855878760313902608

`A252752(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253562.P855878760313902608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (A122111 (n + 1)).toNat

end

end A253562.P855878760313902608

noncomputable section

/-- A253562: Inverse permutation to A253561: a(n) = A252752(A122111(n)).

Offset 1, canonical program `A253562.P855878760313902608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253562 (n : ℕ) : ℤ :=
  A253562.P855878760313902608.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259183.P10733071323112537095

`eq[1, 1-val(A089723(n+1)+1, 2)]+1`
-/

namespace A259183.P10733071323112537095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A089723 (n + 1) + 1).toNat 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259183.P10733071323112537095

noncomputable section

/-- A259183: Complement of A259444.

Offset 1, canonical program `A259183.P10733071323112537095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A259183 (n : ℕ) : ℤ :=
  (A259183.P10733071323112537095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A259183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259362.P4391851716344384891

`A089723(1+n)+A057428(n)`
-/

namespace A259362.P4391851716344384891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (1 + n) + A057428 n

end

end A259362.P4391851716344384891

noncomputable section

/-- A259362: a(1) = 1, for n > 1: a(n) is the number of ways to write n as a nontrivial perfect power.

Offset 1, canonical program `A259362.P4391851716344384891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259362 (n : ℕ) : ℤ :=
  A259362.P4391851716344384891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259444.P7980636661045444568

`eq[A010052(A253641(n)), A157928(n)]`
-/

namespace A259444.P7980636661045444568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259444.P7980636661045444568

noncomputable section

/-- A259444: a(1)=2. For n>1, a(n) = smallest number > a(n-1) which is different from all the numbers a(i)^a(j) for 1 <= i < n, 1 <= j < n.

Offset 1, canonical program `A259444.P7980636661045444568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9881 terms. -/
def A259444 (n : ℕ) : ℤ :=
  (A259444.P7980636661045444568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9881 terms. -/
def A259444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264752.P17279907533053984141

`Δ[record[A052410(A018252(3+n))]]`
-/

namespace A264752.P17279907533053984141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A018252 (3 + n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264752.P17279907533053984141

noncomputable section

/-- A264752: First differences of A106543.

Offset 1, canonical program `A264752.P17279907533053984141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264752 (n : ℕ) : ℤ :=
  A264752.P17279907533053984141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268386.P3095670448777005684

`A193231(A268387(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268386.P3095670448777005684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A268387 (n + 1)).toNat

end

end A268386.P3095670448777005684

noncomputable section

/-- A268386: a(n) = A193231(A268387(n)).

Offset 1, canonical program `A268386.P3095670448777005684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268386 (n : ℕ) : ℤ :=
  A268386.P3095670448777005684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273058.P8771580458606033264

`comp[A072413(n+1)-1]+1`
-/

namespace A273058.P8771580458606033264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A273058.P8771580458606033264

noncomputable section

/-- A273058: Numbers having pairwise coprime exponents in their canonical prime factorization.

Offset 1, canonical program `A273058.P8771580458606033264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273058 (n : ℕ) : ℤ :=
  (A273058.P8771580458606033264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276001.P13429958229266341358

`eq[A060130(n), A275811(n)]`
-/

namespace A276001.P13429958229266341358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276001.P13429958229266341358

noncomputable section

/-- A276001: Numbers n for which A060502(n) <= 1; numbers with at most one distinct slope in their factorial representation.

Offset 0, canonical program `A276001.P13429958229266341358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A276001 (n : ℕ) : ℤ :=
  (A276001.P13429958229266341358.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A276001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278261.P4182935939581493227

`A046523(A273671(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278261.P4182935939581493227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A273671 (n + 1)).toNat

end

end A278261.P4182935939581493227

noncomputable section

/-- A278261: a(n) = A046523(A273671(n)).

Offset 1, canonical program `A278261.P4182935939581493227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A273671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278261 (n : ℕ) : ℤ :=
  A278261.P4182935939581493227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A273671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280689.P6370222866789836264

`A105800(n+1)/A280688(n+1)`
-/

namespace A280689.P6370222866789836264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105800 (n + 1) : ℚ) / (A280688 (n + 1) : ℚ)

end

end A280689.P6370222866789836264

noncomputable section

/-- A280689: a(n) = A000045(A032742(n)) / A000045(A054576(n)), where A000045(n) gives the n-th Fibonacci number, A032742(n) = the largest proper divisor of n, and A054576(n) = A032742(A032742(n)).

Offset 1, canonical program `A280689.P6370222866789836264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105800, A280688, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280689.P6370222866789836264.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105800, A280688, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284257.P1463760783412794732

`A001222(n+1)-A284256(n+1)`
-/

namespace A284257.P1463760783412794732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A284256 (n + 1)

end

end A284257.P1463760783412794732

noncomputable section

/-- A284257: a(n) = number of prime factors of n that are < the square of smallest prime factor of n (counted with multiplicity), a(1) = 0.

Offset 1, canonical program `A284257.P1463760783412794732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284257 (n : ℕ) : ℤ :=
  A284257.P1463760783412794732.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284258.P13670865217046797129

`A284256(∏{p}[n+1, #])`
-/

namespace A284258.P13670865217046797129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284258.P13670865217046797129

noncomputable section

/-- A284258: a(n) = number of distinct prime factors of n that are > the square of smallest prime factor of n, a(1) = 0.

Offset 1, canonical program `A284258.P13670865217046797129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284258 (n : ℕ) : ℤ :=
  A284258.P13670865217046797129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284259.P2862339921561059590

`A001221(n+1)-A284258(n+1)`
-/

namespace A284259.P2862339921561059590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A284258 (n + 1)

end

end A284259.P2862339921561059590

noncomputable section

/-- A284259: a(n) = number of distinct prime factors of n that are < the square of smallest prime factor of n, a(1) = 0.

Offset 1, canonical program `A284259.P2862339921561059590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284259 (n : ℕ) : ℤ :=
  A284259.P2862339921561059590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284261.P8740968547699378345

`A284258(n+1)-A284258(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284261.P8740968547699378345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (n + 1) - A284258 (A003961 (n + 1)).toNat

end

end A284261.P8740968547699378345

noncomputable section

/-- A284261: a(n) = A284258(n) - A284258(A003961(n)).

Offset 1, canonical program `A284261.P8740968547699378345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A284258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284261 (n : ℕ) : ℤ :=
  A284261.P8740968547699378345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A284258, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289144.P1666819503692085293

`A092067(1+n)-A032742(n+2)`
-/

namespace A289144.P1666819503692085293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (1 + n) - A032742 (n + 2)

end

end A289144.P1666819503692085293

noncomputable section

/-- A289144: The difference between the second divisor of n and the penultimate divisor of n.

Offset 2, canonical program `A289144.P1666819503692085293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A289144 (n : ℕ) : ℤ :=
  A289144.P1666819503692085293.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A289144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293205.P6246207440513713671

`lt[1, and(3, A052410(A004277(n)))]`
-/

namespace A293205.P6246207440513713671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A052410 (A004277 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A293205.P6246207440513713671

noncomputable section

/-- A293205: Numbers n > 0 such that 2*n = (4*k-2)^m where k, m > 0.

Offset 1, canonical program `A293205.P6246207440513713671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5056 terms. -/
def A293205 (n : ℕ) : ℤ :=
  (A293205.P6246207440513713671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5056 terms. -/
def A293205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294875.P7688945310452670398

`∏{d}[1+n, A008578(A253641(#))]`
-/

namespace A294875.P7688945310452670398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008578 (A253641 d).toNat

end

end A294875.P7688945310452670398

noncomputable section

/-- A294875: a(n) = Product_{d|n, d = x^k, with x,k > 1} prime(A052409(d)-1).

Offset 1, canonical program `A294875.P7688945310452670398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294875 (n : ℕ) : ℤ :=
  A294875.P7688945310452670398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295931.P15567185849400187992

`∑{d}[A253641(n+1), A000005(#)]`
-/

namespace A295931.P15567185849400187992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A295931.P15567185849400187992

noncomputable section

/-- A295931: Number of ways to write n in the form n = (x^y)^z where x, y, and z are positive integers.

Offset 1, canonical program `A295931.P15567185849400187992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295931 (n : ℕ) : ℤ :=
  A295931.P15567185849400187992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299150.P3795475608102794918

`A046644(n+1)/A006519(n+1)`
-/

namespace A299150.P3795475608102794918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A299150.P3795475608102794918

noncomputable section

/-- A299150: Denominators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299150.P3795475608102794918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A299150.P3795475608102794918.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299152.P7362327138160881266

`ceil(A317932(A003961(n+1))/A167343(n+1))`
-/

namespace A299152.P7362327138160881266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317932 (A003961 (n + 1)).toNat : ℚ) / (A167343 (n + 1) : ℚ)⌉

end

end A299152.P7362327138160881266

noncomputable section

/-- A299152: Denominators of the positive solution to 2^(n-1) = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299152.P7362327138160881266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A299152 (n : ℕ) : ℤ :=
  A299152.P7362327138160881266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A299152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300722.P8317627938057624643

`A060681(n+1)-A300721(n+1)`
-/

namespace A300722.P8317627938057624643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) - A300721 (n + 1)

end

end A300722.P8317627938057624643

noncomputable section

/-- A300722: Difference between A060681 (largest difference between consecutive divisors of n as ordered by size) and its Möbius transform.

Offset 1, canonical program `A300722.P8317627938057624643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, A300721, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300722 (n : ℕ) : ℤ :=
  A300722.P8317627938057624643.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, A300721, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302569.P14356734301592771107

`eq[1, A290104(2+n)]+2`
-/

namespace A302569.P14356734301592771107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A302569.P14356734301592771107

noncomputable section

/-- A302569: Numbers that are either prime or whose prime indices are pairwise coprime. Heinz numbers of integer partitions with pairwise coprime parts.

Offset 1, canonical program `A302569.P14356734301592771107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5370 terms. -/
def A302569 (n : ℕ) : ℤ :=
  (A302569.P14356734301592771107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5370 terms. -/
def A302569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303946.P17735146368031515798

`record[A052410(A013929(n+4))]`
-/

namespace A303946.P17735146368031515798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A013929 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303946.P17735146368031515798

noncomputable section

/-- A303946: Numbers that are neither squarefree nor perfect powers.

Offset 1, canonical program `A303946.P17735146368031515798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303946 (n : ℕ) : ℤ :=
  A303946.P17735146368031515798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304449.P7931150842047874865

`comp[A303946(n+1)-1]+1`
-/

namespace A304449.P7931150842047874865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304449.P7931150842047874865

noncomputable section

/-- A304449: Numbers that are either squarefree or a perfect power.

Offset 1, canonical program `A304449.P7931150842047874865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304449 (n : ℕ) : ℤ :=
  (A304449.P7931150842047874865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305634.P6719880355670856514

`record[A052410(2*(1+n))]`
-/

namespace A305634.P6719880355670856514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (2 * (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305634.P6719880355670856514

noncomputable section

/-- A305634: Even numbers that are not perfect powers.

Offset 1, canonical program `A305634.P6719880355670856514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305634 (n : ℕ) : ℤ :=
  A305634.P6719880355670856514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305635.P18163822070093918249

`filter[A175082(n+1), A379952(#)]`
-/

namespace A305635.P18163822070093918249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A305635.P18163822070093918249

noncomputable section

/-- A305635: 1 and odd numbers that are not perfect powers.

Offset 1, canonical program `A305635.P18163822070093918249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A305635 (n : ℕ) : ℤ :=
  A305635.P18163822070093918249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A305635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307742.P17097547645030697459

`A064097(A014963(n+1))`
-/

namespace A307742.P17097547645030697459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A014963 (n + 1)).toNat

end

end A307742.P17097547645030697459

noncomputable section

/-- A307742: Quasi-logarithm A064097(n) of von Mangoldt's exponential function A014963(n).

Offset 1, canonical program `A307742.P17097547645030697459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307742 (n : ℕ) : ℤ :=
  A307742.P17097547645030697459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A307742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307743.P15239747179216998739

`∑[A307742(1+n)]`
-/

namespace A307743.P15239747179216998739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307743.P15239747179216998739

noncomputable section

/-- A307743: a(n) = Sum_{k=1..n} A307742(k).

Offset 1, canonical program `A307743.P15239747179216998739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307743 (n : ℕ) : ℤ :=
  A307743.P15239747179216998739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309891.P3186262545884816110

`A169594(n+1)-1`
-/

namespace A309891.P3186262545884816110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (n + 1) - 1

end

end A309891.P3186262545884816110

noncomputable section

/-- A309891: a(n) is the total number of trailing zeros in the representations of n over all bases b >= 2.

Offset 1, canonical program `A309891.P3186262545884816110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309891 (n : ℕ) : ℤ :=
  A309891.P3186262545884816110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318450.P10889155975316061749

`A046644(A000265(n+1))`
-/

namespace A318450.P10889155975316061749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A000265 (n + 1)).toNat

end

end A318450.P10889155975316061749

noncomputable section

/-- A318450: Denominators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318450.P10889155975316061749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450 (n : ℕ) : ℤ :=
  A318450.P10889155975316061749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318451.P4161075931148706271

`val(A318450(n+1), 2)`
-/

namespace A318451.P4161075931148706271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318450 (n + 1)).toNat 2

end

end A318451.P4161075931148706271

noncomputable section

/-- A318451: The 2-adic valuation of A318450.

Offset 1, canonical program `A318451.P4161075931148706271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318451 (n : ℕ) : ℤ :=
  (A318451.P4161075931148706271.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318454.P17241560153575372680

`A046644(A006519(n+1))`
-/

namespace A318454.P17241560153575372680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A006519 (n + 1)).toNat

end

end A318454.P17241560153575372680

noncomputable section

/-- A318454: Denominators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318454.P17241560153575372680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454 (n : ℕ) : ℤ :=
  A318454.P17241560153575372680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318455.P12423452328214462674

`val(A318454(n+1), 2)`
-/

namespace A318455.P12423452328214462674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318454 (n + 1)).toNat 2

end

end A318455.P12423452328214462674

noncomputable section

/-- A318455: The 2-adic valuation of A318454(n).

Offset 1, canonical program `A318455.P12423452328214462674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318455 (n : ℕ) : ℤ :=
  (A318455.P12423452328214462674.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318512.P17152244906020944566

`ceil(A299150(n+1)/A006519(n+1))`
-/

namespace A318512.P17152244906020944566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299150 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A318512.P17152244906020944566

noncomputable section

/-- A318512: Denominators (in their lowest terms) of the sequence whose Dirichlet convolution with itself yields squares (A000290), or equally A064549.

Offset 1, canonical program `A318512.P17152244906020944566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512 (n : ℕ) : ℤ :=
  A318512.P17152244906020944566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318513.P1269522289693333221

`val(A318512(n+1), 2)`
-/

namespace A318513.P1269522289693333221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318512 (n + 1)).toNat 2

end

end A318513.P1269522289693333221

noncomputable section

/-- A318513: The 2-adic valuation of A318512.

Offset 1, canonical program `A318513.P1269522289693333221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513 (n : ℕ) : ℤ :=
  (A318513.P1269522289693333221.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318649.P4247351377528363883

`(n+1)*A318512(n+1)*A299149(n+1)/A299150(n+1)`
-/

namespace A318649.P4247351377528363883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A318512 (n + 1) * A299149 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ)

end

end A318649.P4247351377528363883

noncomputable section

/-- A318649: Numerators of the sequence whose Dirichlet convolution with itself yields squares, A000290.

Offset 1, canonical program `A318649.P4247351377528363883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318649.P4247351377528363883.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A318652.P1218394255038798337

`A046645(n+1)-A318513(n+1)`
-/

namespace A318652.P1218394255038798337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318513 (n + 1)

end

end A318652.P1218394255038798337

noncomputable section

/-- A318652: The 2-adic valuation of A046644(n)/A318512(n) (A318651).

Offset 1, canonical program `A318652.P1218394255038798337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652 (n : ℕ) : ℤ :=
  A318652.P1218394255038798337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318655.P15870475144563533263

`val(A318649(n+1), 2)`
-/

namespace A318655.P15870475144563533263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318649 (n + 1)).toNat 2

end

end A318655.P15870475144563533263

noncomputable section

/-- A318655: The 2-adic valuation of A318649, the numerators of "Dirichlet Square Root" of squares.

Offset 1, canonical program `A318655.P15870475144563533263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655 (n : ℕ) : ℤ :=
  (A318655.P15870475144563533263.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318658.P5559540085635569704

`A046644(C(or(1, n), n))`
-/

namespace A318658.P5559540085635569704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (Nat.choose (Nat.lor 1 n) n)

end

end A318658.P5559540085635569704

noncomputable section

/-- A318658: Denominators of the sequence whose Dirichlet convolution with itself yields A087003, a(2n) = 0 and a(2n+1) = moebius(2n+1).

Offset 1, canonical program `A318658.P5559540085635569704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318658 (n : ℕ) : ℤ :=
  A318658.P5559540085635569704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318659.P7263319046953308454

`val(A318658(n+1), 2)`
-/

namespace A318659.P7263319046953308454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318658 (n + 1)).toNat 2

end

end A318659.P7263319046953308454

noncomputable section

/-- A318659: The 2-adic valuation of A318658.

Offset 1, canonical program `A318659.P7263319046953308454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318659 (n : ℕ) : ℤ :=
  (A318659.P7263319046953308454.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322982.P6944421931770551639

`(A089026(n+1)+n)/A089026(A074828(n+1))`
-/

namespace A322982.P6944421931770551639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (n + 1) + (n : ℤ) : ℚ) / (A089026 (A074828 (n + 1)).toNat : ℚ)

end

end A322982.P6944421931770551639

noncomputable section

/-- A322982: If n is a noncomposite, then a(n) = 2*n - 1, otherwise a(n) = A032742(n), the largest proper divisor of n.

Offset 1, canonical program `A322982.P6944421931770551639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A322982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322982.P6944421931770551639.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A322982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323072.P7369879891192083025

`(n+1)/A323071(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323072.P7369879891192083025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323071 (n + 1) : ℚ)

end

end A323072.P7369879891192083025

noncomputable section

/-- A323072: a(n) = n/A323071(n) = n/gcd(n, 1+A060681(n)).

Offset 1, canonical program `A323072.P7369879891192083025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323072 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323072.P7369879891192083025.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323077.P1062725111045104431

`A064097(A052126(n+1))`
-/

namespace A323077.P1062725111045104431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A052126 (n + 1)).toNat

end

end A323077.P1062725111045104431

noncomputable section

/-- A323077: Number of iterations of map x -> (x - (largest divisor d < x)) needed to reach 1 or a prime, when starting at x = n.

Offset 1, canonical program `A323077.P1062725111045104431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323077 (n : ℕ) : ℤ :=
  A323077.P1062725111045104431.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323506.P376847477820473957

`A323505(n)/A246660(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323506.P376847477820473957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A246660 n : ℚ)

end

end A323506.P376847477820473957

noncomputable section

/-- A323506: a(n) = A323505(n) / A246660(n).

Offset 0, canonical program `A323506.P376847477820473957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323506.P376847477820473957.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324519.P16399017913108924069

`eq[A046660(n+1), A117365(n+1)]+1`
-/

namespace A324519.P16399017913108924069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324519.P16399017913108924069

noncomputable section

/-- A324519: Numbers > 1 where the minimum prime index equals the number of prime factors minus the number of distinct prime factors.

Offset 1, canonical program `A324519.P16399017913108924069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A324519 (n : ℕ) : ℤ :=
  (A324519.P16399017913108924069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A324519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325241.P7570542115971715499

`eq[1, A062977(n+1)]+1`
-/

namespace A325241.P7570542115971715499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325241.P7570542115971715499

noncomputable section

/-- A325241: Numbers > 1 whose maximum prime exponent is one greater than their minimum.

Offset 1, canonical program `A325241.P7570542115971715499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325241 (n : ℕ) : ℤ :=
  (A325241.P7570542115971715499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327527.P5386732114295116358

`∑{d}[1+n, A000007(A062977(#))]`
-/

namespace A327527.P5386732114295116358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (A062977 d).toNat

end

end A327527.P5386732114295116358

noncomputable section

/-- A327527: Number of uniform divisors of n.

Offset 1, canonical program `A327527.P5386732114295116358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327527 (n : ℕ) : ℤ :=
  A327527.P5386732114295116358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328304.P1864302713347206541

`∩[A067259(n+1), A328303(n+1)]`
-/

namespace A328304.P1864302713347206541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328304.P1864302713347206541

noncomputable section

/-- A328304: Numbers that are cubefree, but not squarefree and whose arithmetic derivative is not squarefree.

Offset 1, canonical program `A328304.P1864302713347206541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A328304 (n : ℕ) : ℤ :=
  (A328304.P1864302713347206541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A328304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328311.P5854851279908461926

`A328310(floor(acot(n)+n)+1)+1`
-/

namespace A328311.P5854851279908461926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat + 1

end

end A328311.P5854851279908461926

noncomputable section

/-- A328311: a(n) = 1 + A051903(A003415(n)) - A051903(n), a(1) = 0 by convention.

Offset 1, canonical program `A328311.P5854851279908461926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328311 (n : ℕ) : ℤ :=
  A328311.P5854851279908461926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328320.P12302822664255965692

`eq[16, a(A328311(n))²]` with `a(0)=4`
-/

namespace A328320.P12302822664255965692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (A328311 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328320.P12302822664255965692

noncomputable section

/-- A328320: Numbers for which A328311(n) = 1 + A051903(A003415(n)) - A051903(n) is zero (including 1 as the initial term).

Offset 1, canonical program `A328320.P12302822664255965692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328320 (n : ℕ) : ℤ :=
  (A328320.P12302822664255965692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328321.P3480130997520919797

`lt[0, A328311(n+1)]+1`
-/

namespace A328321.P3480130997520919797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328321.P3480130997520919797

noncomputable section

/-- A328321: Numbers n for which A328311(n) = 1 + A051903(A003415(n)) - A051903(n) is strictly positive.

Offset 1, canonical program `A328321.P3480130997520919797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328321 (n : ℕ) : ℤ :=
  (A328321.P3480130997520919797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328389.P7297590739750038343

`A328114(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328389.P7297590739750038343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A276086 n).toNat

end

end A328389.P7297590739750038343

noncomputable section

/-- A328389: Maximal digit value in primorial base expansion of A276086(n): a(n) = A328114(A276086(n)).

Offset 0, canonical program `A328389.P7297590739750038343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328389 (n : ℕ) : ℤ :=
  A328389.P7297590739750038343.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328390.P1116967176736844938

`A328114(A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328390.P1116967176736844938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A003415 (n + 1)).toNat

end

end A328390.P1116967176736844938

noncomputable section

/-- A328390: Maximal digit value in primorial base expansion of the arithmetic derivative of n: a(n) = A328114(A003415(n)).

Offset 1, canonical program `A328390.P1116967176736844938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328390 (n : ℕ) : ℤ :=
  A328390.P1116967176736844938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328392.P7452589730230587386

`A328114(A327860(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328392.P7452589730230587386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A327860 n).toNat

end

end A328392.P7452589730230587386

noncomputable section

/-- A328392: Maximal digit value in primorial base expansion of A327860(n): a(n) = A328114(A327860(n)).

Offset 0, canonical program `A328392.P7452589730230587386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328392 (n : ℕ) : ℤ :=
  A328392.P7452589730230587386.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328394.P17360495409516673641

`A328114(A276087(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328394.P17360495409516673641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A276087 n).toNat

end

end A328394.P17360495409516673641

noncomputable section

/-- A328394: Maximal digit value in primorial base expansion of A276087(n): a(n) = A328114(A276087(n)).

Offset 0, canonical program `A328394.P17360495409516673641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328394 (n : ℕ) : ℤ :=
  A328394.P17360495409516673641.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328398.P17348641706548062803

`A328394(A276086(n))`
-/

namespace A328398.P17348641706548062803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A276086 n).toNat

end

end A328398.P17348641706548062803

noncomputable section

/-- A328398: Maximal digit value in primorial base expansion of A276086(A276086(A276086(n))), where A276086(n) converts primorial base expansion of n into its prime product form.

Offset 0, canonical program `A328398.P17348641706548062803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328394, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328398 (n : ℕ) : ℤ :=
  A328398.P17348641706548062803.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328394, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328772.P15330017436318976668

`A276150(A328769(n))`
-/

namespace A328772.P15330017436318976668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A328769 n).toNat

end

end A328772.P15330017436318976668

noncomputable section

/-- A328772: Minimal number of primorials (A002110) that add to A328769(n), where A328769 is the second primorial based variant of arithmetic derivative.

Offset 0, canonical program `A328772.P15330017436318976668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A328769, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328772 (n : ℕ) : ℤ :=
  A328772.P15330017436318976668.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A328769, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328842.P10384136373523695531

`n-A328841(n)`
-/

namespace A328842.P10384136373523695531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A328841 n

end

end A328842.P10384136373523695531

noncomputable section

/-- A328842: Decrement each nonzero digit by one in primorial base representation of n, then convert back to decimal.

Offset 0, canonical program `A328842.P10384136373523695531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328842 (n : ℕ) : ℤ :=
  A328842.P10384136373523695531.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328843.P4196272904461902794

`A328841(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328843.P4196272904461902794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328841 (A276086 n).toNat

end

end A328843.P4196272904461902794

noncomputable section

/-- A328843: a(n) = A328841(A276086(n)).

Offset 0, canonical program `A328843.P4196272904461902794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328843 (n : ℕ) : ℤ :=
  A328843.P4196272904461902794.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328844.P16276926669184660037

`A328842(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328844.P16276926669184660037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 (A276086 n).toNat

end

end A328844.P16276926669184660037

noncomputable section

/-- A328844: a(n) = A328842(A276086(n)).

Offset 0, canonical program `A328844.P16276926669184660037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328844 (n : ℕ) : ℤ :=
  A328844.P16276926669184660037.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333793.P11711561047129840571

`A333794(n+1)-A073934(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333793.P11711561047129840571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333794 (n + 1) - A073934 (n + 1)

end

end A333793.P11711561047129840571

noncomputable section

/-- A333793: a(n) = A333794(n) - A073934(n).

Offset 1, canonical program `A333793.P11711561047129840571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073934, A333794, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333793 (n : ℕ) : ℤ :=
  A333793.P11711561047129840571.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073934, A333794, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334090.P14988327710056843915

`Δ[∑{d}[n, A307742(#)]]`
-/

namespace A334090.P14988327710056843915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A307742 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334090.P14988327710056843915

noncomputable section

/-- A334090: a(1) = 0, and then after the first differences of A064097.

Offset 1, canonical program `A334090.P14988327710056843915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334090 (n : ℕ) : ℤ :=
  A334090.P14988327710056843915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334195.P3591881704032605966

`Δ[A064415(A028310(n))]`
-/

namespace A334195.P3591881704032605966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334195.P3591881704032605966

noncomputable section

/-- A334195: a(1) = 0, then after the first differences of A064415.

Offset 1, canonical program `A334195.P3591881704032605966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334195 (n : ℕ) : ℤ :=
  A334195.P3591881704032605966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334202.P7627444287747604241

`A064097(n+1)-A323077(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334202.P7627444287747604241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A323077 (n + 1)

end

end A334202.P7627444287747604241

noncomputable section

/-- A334202: a(n) = A064097(n) - A323077(n).

Offset 1, canonical program `A334202.P7627444287747604241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A323077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334202 (n : ℕ) : ℤ :=
  A334202.P7627444287747604241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, A323077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334202.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334203.P16025289003160081664

`A064097(A032742(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334203.P16025289003160081664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A032742 (n + 1)).toNat

end

end A334203.P16025289003160081664

noncomputable section

/-- A334203: a(n) = A064097(A032742(n)).

Offset 1, canonical program `A334203.P16025289003160081664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334203 (n : ℕ) : ℤ :=
  A334203.P16025289003160081664.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334573.P9554374413534546838

`∑[A334572(2+n)]`
-/

namespace A334573.P9554374413534546838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334572 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334573.P9554374413534546838

noncomputable section

/-- A334573: Partial sums of A334572.

Offset 2, canonical program `A334573.P9554374413534546838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334573 (n : ℕ) : ℤ :=
  A334573.P9554374413534546838.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334862.P3844558165305347707

`A334097(n+1)-A064415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334862.P3844558165305347707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 1) - A064415 (n + 1)

end

end A334862.P3844558165305347707

noncomputable section

/-- A334862: a(n) = A334097(n) - A064415(n).

Offset 1, canonical program `A334862.P3844558165305347707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064415, A334097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334862 (n : ℕ) : ℤ :=
  A334862.P3844558165305347707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064415, A334097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334862.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334863.P12100679385437782938

`A064097(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334863.P12100679385437782938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A003961 (n + 1)).toNat

end

end A334863.P12100679385437782938

noncomputable section

/-- A334863: a(n) = A064097(A003961(n)).

Offset 1, canonical program `A334863.P12100679385437782938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334863 (n : ℕ) : ℤ :=
  A334863.P12100679385437782938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334864.P1367221112009939634

`A064097(A003961(n+1))-A064097(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A334864.P1367221112009939634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A003961 (n + 1)).toNat - A064097 (n + 1)

end

end A334864.P1367221112009939634

noncomputable section

/-- A334864: a(n) = A064097(A003961(n)) - A064097(n).

Offset 1, canonical program `A334864.P1367221112009939634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334864 (n : ℕ) : ℤ :=
  A334864.P1367221112009939634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334871.P12161263468435973650

`A331740(n+1)+A299090(A000188(n+1))`
-/

namespace A334871.P12161263468435973650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1) + A299090 (A000188 (n + 1)).toNat

end

end A334871.P12161263468435973650

noncomputable section

/-- A334871: Number of steps needed to reach 1 when starting from n and iterating with A334870.

Offset 1, canonical program `A334871.P12161263468435973650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A334871 (n : ℕ) : ℤ :=
  A334871.P12161263468435973650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A334871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336837.P12627212875986616411

`A336841(n+1)/A336856(n+1)`
-/

namespace A336837.P12627212875986616411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336837.P12627212875986616411

noncomputable section

/-- A336837: Numerator of ratio A336841(n)/A000005(n).

Offset 1, canonical program `A336837.P12627212875986616411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336837 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336837.P12627212875986616411.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339913.P16219297945263643524

`(1+A060681(n+1))/A323071(n+1)`
-/

namespace A339913.P16219297945263643524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A060681 (n + 1) : ℚ) / (A323071 (n + 1) : ℚ)

end

end A339913.P16219297945263643524

noncomputable section

/-- A339913: a(n) = x/gcd(n,x), where x = 1+A060681(n).

Offset 1, canonical program `A339913.P16219297945263643524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, A323071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339913 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339913.P16219297945263643524.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, A323071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340932.P18395906127093253061

`lt[0, 1-a(A117365(n))]` with `a(0)=0, a(1)=0`
-/

namespace A340932.P18395906127093253061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  1 - f2 (A117365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340932.P18395906127093253061

noncomputable section

/-- A340932: Numbers whose least prime index is odd. Heinz numbers of integer partitions whose last part is odd.

Offset 1, canonical program `A340932.P18395906127093253061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6866 terms. -/
def A340932 (n : ℕ) : ℤ :=
  (A340932.P18395906127093253061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6866 terms. -/
def A340932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341446.P320362893789303954

`filter[A340932(n+1), A257991(#)]`
-/

namespace A341446.P320362893789303954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257991 (f1 j).toNat = 1) n)

end

end A341446.P320362893789303954

noncomputable section

/-- A341446: Heinz numbers of integer partitions whose only odd part is the smallest.

Offset 1, canonical program `A341446.P320362893789303954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2751 terms. -/
def A341446 (n : ℕ) : ℤ :=
  A341446.P320362893789303954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2751 terms. -/
def A341446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342004.P4218786891331753066

`Δ[fp[A328320(n+1)]]`
-/

namespace A342004.P4218786891331753066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328320 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A342004.P4218786891331753066

noncomputable section

/-- A342004: a(n) = 1 if the maximal exponent in the prime factorization of the arithmetic derivative of n (A003415) is less than the maximal exponent in n, otherwise 0. a(1) = 1 by convention.

Offset 1, canonical program `A342004.P4218786891331753066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004 (n : ℕ) : ℤ :=
  A342004.P4218786891331753066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342005.P5236281977901263152

`A342004(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342005.P5236281977901263152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (A276086 n).toNat

end

end A342005.P5236281977901263152

noncomputable section

/-- A342005: a(n) = A342004(A276086(n)).

Offset 0, canonical program `A342005.P5236281977901263152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342004, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342005 (n : ℕ) : ℤ :=
  A342005.P5236281977901263152.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342004, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342006.P913528884085402957

`eq[0, A342005(n)]`
-/

namespace A342006.P913528884085402957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342006.P913528884085402957

noncomputable section

/-- A342006: Numbers k where the maximal prime exponent in the arithmetic derivative of A276086(k) attains the maximal exponent in A276086(k), where A276086 gives the prime product form of primorial base expansion of its argument.

Offset 1, canonical program `A342006.P913528884085402957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A342006 (n : ℕ) : ℤ :=
  (A342006.P913528884085402957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. -/
def A342006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342026.P3772476229816597139

`A328391(n+1)-A328114(n+1)`
-/

namespace A342026.P3772476229816597139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A328114 (n + 1)

end

end A342026.P3772476229816597139

noncomputable section

/-- A342026: Difference in the maximal prime exponents between the arithmetic derivative of A276086(n) and A276086(n) itself, which is the prime product form of primorial base expansion of n.

Offset 1, canonical program `A342026.P3772476229816597139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, A328391, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342026 (n : ℕ) : ℤ :=
  A342026.P3772476229816597139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, A328391, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342464.P7628047389321257062

`A328114(A329886(n))`
-/

namespace A342464.P7628047389321257062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A329886 n).toNat

end

end A342464.P7628047389321257062

noncomputable section

/-- A342464: Largest digit value when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree.

Offset 0, canonical program `A342464.P7628047389321257062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, A329886, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342464 (n : ℕ) : ℤ :=
  A342464.P7628047389321257062.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328114, A329886, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343044.P4436966438314129501

`row(n)-A324351(n)`
-/

namespace A343044.P4436966438314129501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - A324351 n

end

end A343044.P4436966438314129501

noncomputable section

/-- A343044: Array T(n, k), n, k >= 0, read by antidiagonals; lunar addition table for the primorial base.

Offset 0, canonical program `A343044.P4436966438314129501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343044 (n : ℕ) : ℤ :=
  A343044.P4436966438314129501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343045.P7291903579203974821

`A343044(C(a(n-1)+n+1, 2)+n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343045.P7291903579203974821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A343044 (Nat.choose (a (n - 1) + (n : ℤ) + 1).toNat 2 + n)

end

end A343045.P7291903579203974821

noncomputable section

/-- A343045: a(0) = 0 and for any n > 0, a(n) = A343044(a(n-1), n).

Offset 0, canonical program `A343045.P7291903579203974821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343045 (n : ℕ) : ℤ :=
  A343045.P7291903579203974821.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343827.P5068146219944331845

`∩[A291180(n+1), A328304(n+1)]`
-/

namespace A343827.P5068146219944331845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343827.P5068146219944331845

noncomputable section

/-- A343827: Numbers which are the product of two S-primes (A057948) in exactly two ways.

Offset 1, canonical program `A343827.P5068146219944331845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A343827 (n : ℕ) : ℤ :=
  (A343827.P5068146219944331845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. -/
def A343827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346403.P9961998828298484879

`A000203(A253641(n+1))`
-/

namespace A346403.P9961998828298484879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A253641 (n + 1)).toNat

end

end A346403.P9961998828298484879

noncomputable section

/-- A346403: a(1)=1; for n>1, a(n) gives the sum of the exponents in the different ways to write n as n = x^y, 2 <= x, 1 <= y.

Offset 1, canonical program `A346403.P9961998828298484879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346403 (n : ℕ) : ℤ :=
  A346403.P9961998828298484879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346704.P9750174064402642821

`A346703(A032742(1+n))`
-/

namespace A346704.P9750174064402642821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A032742 (1 + n)).toNat

end

end A346704.P9750174064402642821

noncomputable section

/-- A346704: Product of primes at even positions in the weakly increasing list (with multiplicity) of prime factors of n.

Offset 1, canonical program `A346704.P9750174064402642821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346704 (n : ℕ) : ℤ :=
  A346704.P9750174064402642821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348978.P606956241417076387

`A332993(n+1)/A348977(n+1)`
-/

namespace A348978.P606956241417076387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332993 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348978.P606956241417076387

noncomputable section

/-- A348978: Numerator of ratio A332993(n) / sigma(n).

Offset 1, canonical program `A348978.P606956241417076387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, A348977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348978 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348978.P606956241417076387.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332993, A348977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348979.P15532692036909443139

`A000203(n+1)/A348977(n+1)`
-/

namespace A348979.P15532692036909443139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348977 (n + 1) : ℚ)

end

end A348979.P15532692036909443139

noncomputable section

/-- A348979: Denominator of ratio A332993(n) / sigma(n).

Offset 1, canonical program `A348979.P15532692036909443139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348979 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348979.P15532692036909443139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348991.P15825205112431336988

`A333791(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348991.P15825205112431336988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333791 (A276086 n).toNat

end

end A348991.P15825205112431336988

noncomputable section

/-- A348991: a(n) = A333791(A276086(n)).

Offset 0, canonical program `A348991.P15825205112431336988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333791, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348991 (n : ℕ) : ℤ :=
  A348991.P15825205112431336988.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333791, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349667.P3842805946856830097

`p?[(4*n+1)*A318451(3*n+1)]`
-/

namespace A349667.P3842805946856830097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A318451 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P3842805946856830097

noncomputable section

/-- A349667: Primes of the form 4*k+1 which are a prime after the Collatz step *3+1 and a maximal reduction by 2.

Offset 1, canonical program `A349667.P3842805946856830097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667 (n : ℕ) : ℤ :=
  A349667.P3842805946856830097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350074.P10023156551574996477

`A328114(n+1)-A051903(n+1)`
-/

namespace A350074.P10023156551574996477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) - A051903 (n + 1)

end

end A350074.P10023156551574996477

noncomputable section

/-- A350074: Difference between the maximal digit in the primorial base expansion of n and the maximal exponent in the prime factorization of n.

Offset 1, canonical program `A350074.P10023156551574996477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350074 (n : ℕ) : ℤ :=
  A350074.P10023156551574996477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350076.P7815831032060744758

`lt[-1, A350074(1+n)]+1`
-/

namespace A350076.P7815831032060744758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350074 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A350076.P7815831032060744758

noncomputable section

/-- A350076: Numbers k for which the maximal digit in their primorial base expansion (A328114) is greater than or equal to the maximal exponent in the prime factorization of k (A051903).

Offset 1, canonical program `A350076.P7815831032060744758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350076 (n : ℕ) : ℤ :=
  (A350076.P7815831032060744758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351039.P10208737902937435618

`A275973(A350074(1+n)+16)`
-/

namespace A351039.P10208737902937435618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (A350074 (1 + n) + 16).toNat

end

end A351039.P10208737902937435618

noncomputable section

/-- A351039: a(n) = 1 if the maximal digit in the primorial base expansion of n is less than or equal to the maximal exponent in the prime factorization of n.

Offset 1, canonical program `A351039.P10208737902937435618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351039 (n : ℕ) : ℤ :=
  A351039.P10208737902937435618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351074.P18208455295693580235

`A328391(n+1)-A051903(n+1)`
-/

namespace A351074.P18208455295693580235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A051903 (n + 1)

end

end A351074.P18208455295693580235

noncomputable section

/-- A351074: Difference between the maximal exponent in the prime factorization of A327860(n) and the maximal exponent in the prime factorization of n.

Offset 1, canonical program `A351074.P18208455295693580235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328391, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351074 (n : ℕ) : ℤ :=
  A351074.P18208455295693580235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328391, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351076.P15019775653401421999

`lt[-1, A351074(n+1)]+1`
-/

namespace A351076.P15019775653401421999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351076.P15019775653401421999

noncomputable section

/-- A351076: Numbers k such that the maximal exponent in the prime factorization of A327860(k) is greater than or equal to A051903(k), the maximal exponent in the prime factorization of k.

Offset 1, canonical program `A351076.P15019775653401421999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351076 (n : ℕ) : ℤ :=
  (A351076.P15019775653401421999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351077.P14409744040381251601

`Δ[fp[A351076(n+1)]]`
-/

namespace A351077.P14409744040381251601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351076 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A351077.P14409744040381251601

noncomputable section

/-- A351077: a(n) = 1 if the maximal exponent in the prime factorization of A327860(n) is greater than or equal to the maximal exponent in the prime factorization of n, otherwise 0.

Offset 1, canonical program `A351077.P14409744040381251601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351077 (n : ℕ) : ℤ :=
  A351077.P14409744040381251601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351097.P8782879779390554871

`A328390(n+1)-A051903(n+1)`
-/

namespace A351097.P8782879779390554871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (n + 1) - A051903 (n + 1)

end

end A351097.P8782879779390554871

noncomputable section

/-- A351097: Difference between {the maximal digit value in primorial base expansion of the arithmetic derivative of n} and {the maximal exponent in the prime factorization of n}.

Offset 1, canonical program `A351097.P8782879779390554871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351097 (n : ℕ) : ℤ :=
  A351097.P8782879779390554871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A328390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351097.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351576.P4484530906469466773

`A277021(A277012(n))`
-/

namespace A351576.P4484530906469466773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A277012 n).toNat

end

end A351576.P4484530906469466773

noncomputable section

/-- A351576: Factorial base expansion of n reinterpreted as a primorial base expansion, then converted back to decimal.

Offset 0, canonical program `A351576.P4484530906469466773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A351576 (n : ℕ) : ℤ :=
  A351576.P4484530906469466773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A351576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351923.P5900735276508586646

`A309891(n+1)+n+1`
-/

namespace A351923.P5900735276508586646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1) + (n + 1 : ℤ)

end

end A351923.P5900735276508586646

noncomputable section

/-- A351923: Number of ordered pairs of positive integers (s,t), s,t <= n, such that (s^t) | n.

Offset 1, canonical program `A351923.P5900735276508586646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351923 (n : ℕ) : ℤ :=
  A351923.P5900735276508586646.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353475.P5021502072303716722

`A064911(n+1)*A284256(n+1)`
-/

namespace A353475.P5021502072303716722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A284256 (n + 1)

end

end A353475.P5021502072303716722

noncomputable section

/-- A353475: a(n) = 1 if n is a semiprime of the form p * q, where p and q are primes with p^2 < q, otherwise 0.

Offset 1, canonical program `A353475.P5021502072303716722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353475 (n : ℕ) : ℤ :=
  A353475.P5021502072303716722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353476.P8920945796544708719

`A064911(n+1)-A353475(n+1)`
-/

namespace A353476.P8920945796544708719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) - A353475 (n + 1)

end

end A353476.P8920945796544708719

noncomputable section

/-- A353476: a(n) = 1 if n is a semiprime of the form p * q, where p and q are (not necessarily distinct) primes with p <= q < p^2, otherwise 0.

Offset 1, canonical program `A353476.P8920945796544708719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064911, A353475, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353476 (n : ℕ) : ℤ :=
  A353476.P8920945796544708719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064911, A353475, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353517.P15538557700193134453

`A353516(2*n)`
-/

namespace A353517.P15538557700193134453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353516 (2 * n)

end

end A353517.P15538557700193134453

noncomputable section

/-- A353517: The largest proper divisor of A276086(2*n) reduced modulo 4, where A276086(n) the primorial base exp-function.

Offset 0, canonical program `A353517.P15538557700193134453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353517 (n : ℕ) : ℤ :=
  A353517.P15538557700193134453.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355001.P13923031846872073139

`A020639(A355442(n+1))`
-/

namespace A355001.P13923031846872073139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A355442 (n + 1)).toNat

end

end A355001.P13923031846872073139

noncomputable section

/-- A355001: Smallest common prime factor of A003961(n) and A276086(n), or 1 if they are coprime, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

Offset 1, canonical program `A355001.P13923031846872073139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A355442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355001 (n : ℕ) : ℤ :=
  A355001.P13923031846872073139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A355442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359426.P3948860908790500283

`A342001(A358764(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359426.P3948860908790500283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A358764 (n + 1)).toNat

end

end A359426.P3948860908790500283

noncomputable section

/-- A359426: a(n) = A342001(A358764(n)).

Offset 1, canonical program `A359426.P3948860908790500283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359426 (n : ℕ) : ℤ :=
  A359426.P3948860908790500283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362620.P6988714165435039532

`comp[A362619(1+n)-1]+1`
-/

namespace A362620.P6988714165435039532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362619 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362620.P6988714165435039532

noncomputable section

/-- A362620: Numbers whose greatest prime factor is not a mode, meaning it appears fewer times than some other.

Offset 1, canonical program `A362620.P6988714165435039532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5781 terms. -/
def A362620 (n : ℕ) : ℤ :=
  (A362620.P6988714165435039532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5781 terms. -/
def A362620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366281.P7181137604346336267

`A365805(A057889(n))`
-/

namespace A366281.P7181137604346336267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365805 (A057889 n).toNat

end

end A366281.P7181137604346336267

noncomputable section

/-- A366281: a(n) = largest exponent m for which a representation of the form A366275(n) = k^m exists (for some k). a(0) = 0 by convention.

Offset 0, canonical program `A366281.P7181137604346336267`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A365805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366281 (n : ℕ) : ℤ :=
  A366281.P7181137604346336267.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A365805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366807.P2511539940093670206

`A020639(A120944(n+1))*A120944(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366807.P2511539940093670206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120944 (n + 1)).toNat * A120944 (n + 1)

end

end A366807.P2511539940093670206

noncomputable section

/-- A366807: a(n) = A020639(A120944(n))*A120944(n).

Offset 1, canonical program `A366807.P2511539940093670206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366807 (n : ℕ) : ℤ :=
  A366807.P2511539940093670206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366807.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A368251.P3199248697924659099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368251 (n : ℕ) : ℤ :=
  A368251.P3199248697924659099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369021.P17917779173175254819

`∩[A369020(n+1)-1, A369020(n+1)]`
-/

namespace A369021.P17917779173175254819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369021.P17917779173175254819

noncomputable section

/-- A369021: Numbers k such that k, k+1 and k+2 have the same maximal exponent in their prime factorization.

Offset 1, canonical program `A369021.P17917779173175254819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. -/
def A369021 (n : ℕ) : ℤ :=
  (A369021.P17917779173175254819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. -/
def A369021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369637.P15149140794816604274

`-floor(A351097(n+1)/(n+1))`
-/

namespace A369637.P15149140794816604274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(A351097 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A369637.P15149140794816604274

noncomputable section

/-- A369637: a(n) = 1 if the maximal digit in the primorial base representation of n' is less than the maximal exponent in the prime factorization of n, where n' stands for the arithmetic derivative of n, A003415.

Offset 1, canonical program `A369637.P15149140794816604274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369637 (n : ℕ) : ℤ :=
  A369637.P15149140794816604274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369934.P13862989399101401455

`log2(A369933(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369934.P13862989399101401455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A369933 (n + 2) : ℝ)

end

end A369934.P13862989399101401455

noncomputable section

/-- A369934: a(n) = log_2(A369933(n)).

Offset 2, canonical program `A369934.P13862989399101401455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369934.P13862989399101401455.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369936.P10217003281748854646

`sqrt(A369935(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369936.P10217003281748854646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A369935 (n + 1) : ℝ)

end

end A369936.P10217003281748854646

noncomputable section

/-- A369936: a(n) = sqrt(A369935(n)).

Offset 1, canonical program `A369936.P10217003281748854646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369936 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369936.P10217003281748854646.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370076.P2093269358058459657

`filter[A074661(1+n), A359466(#)]`
-/

namespace A370076.P2093269358058459657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A370076.P2093269358058459657

noncomputable section

/-- A370076: Numbers k such that A005361(k) is prime.

Offset 1, canonical program `A370076.P2093269358058459657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8663 terms. -/
def A370076 (n : ℕ) : ℤ :=
  A370076.P2093269358058459657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8663 terms. -/
def A370076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370132.P9937254118189264535

`lt[A328114(n)-1, 2]`
-/

namespace A370132.P9937254118189264535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370132.P9937254118189264535

noncomputable section

/-- A370132: Numbers with no digit larger than 2 in primorial base, A049345.

Offset 1, canonical program `A370132.P9937254118189264535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A370132 (n : ℕ) : ℤ :=
  (A370132.P9937254118189264535.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A370132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370133.P15920512231563652372

`lt[A328114(n), 4]`
-/

namespace A370133.P15920512231563652372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370133.P15920512231563652372

noncomputable section

/-- A370133: Numbers with no digit larger than 3 in primorial base, A049345.

Offset 1, canonical program `A370133.P15920512231563652372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. -/
def A370133 (n : ℕ) : ℤ :=
  (A370133.P15920512231563652372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1537 terms. -/
def A370133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370137.P8826498851763070681

`A277021(2*A014311(1+n))`
-/

namespace A370137.P8826498851763070681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (2 * A014311 (1 + n)).toNat

end

end A370137.P8826498851763070681

noncomputable section

/-- A370137: Sums of three primorials > 1.

Offset 1, canonical program `A370137.P8826498851763070681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A370137 (n : ℕ) : ℤ :=
  A370137.P8826498851763070681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A370137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370138.P16155713201803020346

`A003415(A370137(n+1))`
-/

namespace A370138.P16155713201803020346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370137 (n + 1)).toNat

end

end A370138.P16155713201803020346

noncomputable section

/-- A370138: Arithmetic derivatives of the sums of three primorials > 1.

Offset 1, canonical program `A370138.P16155713201803020346`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370138 (n : ℕ) : ℤ :=
  A370138.P16155713201803020346.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371188.P488392441008500169

`lt[A368712(1+n), 2]+1`
-/

namespace A371188.P488392441008500169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368712 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371188.P488392441008500169

noncomputable section

/-- A371188: Indices of the squarefree numbers in the sequence of cubefree numbers.

Offset 1, canonical program `A371188.P488392441008500169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188 (n : ℕ) : ℤ :=
  (A371188.P488392441008500169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373137.P12052186236849325634

`A253513(A372576(1+n))`
-/

namespace A373137.P12052186236849325634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A372576 (1 + n)).toNat

end

end A373137.P12052186236849325634

noncomputable section

/-- A373137: a(n) = 1 if A276085(n) is a multiple of 8, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373137.P12052186236849325634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373137 (n : ℕ) : ℤ :=
  A373137.P12052186236849325634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373138.P8055344566125608397

`eq[1, A373137(n+1)]+1`
-/

namespace A373138.P8055344566125608397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373138.P8055344566125608397

noncomputable section

/-- A373138: Numbers k such that A276085(k) is a multiple of 8, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373138.P8055344566125608397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8266 terms. -/
def A373138 (n : ℕ) : ℤ :=
  (A373138.P8055344566125608397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8266 terms. -/
def A373138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373139.P12189043771799804340

`a(A372576(n+1)%5)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A373139.P12189043771799804340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (Int.tmod (A372576 (n + 1)) 5).toNat

end

end A373139.P12189043771799804340

noncomputable section

/-- A373139: a(n) = 1 if A276085(n) is a multiple of 5, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373139.P12189043771799804340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373139 (n : ℕ) : ℤ :=
  (A373139.P12189043771799804340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373140.P14225362461454571500

`eq[1, A373139(1+n)]+1`
-/

namespace A373140.P14225362461454571500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373139 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373140.P14225362461454571500

noncomputable section

/-- A373140: Numbers k such that A276085(k) is a multiple of 5, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373140.P14225362461454571500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373140 (n : ℕ) : ℤ :=
  (A373140.P14225362461454571500.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373258.P7426803091222607913

`A369004(n+1)*A373137(n+1)`
-/

namespace A373258.P7426803091222607913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1) * A373137 (n + 1)

end

end A373258.P7426803091222607913

noncomputable section

/-- A373258: a(n) = 1 if n' / gcd(n,n') is a multiple of 4 and A276085(n) is a multiple of 8, otherwise 0, where n' stands for the arithmetic derivative of n, A003415, and A276085 is the primorial base log-function.

Offset 1, canonical program `A373258.P7426803091222607913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373258 (n : ℕ) : ℤ :=
  A373258.P7426803091222607913.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373259.P15978814945549394217

`filter[A373138(n+1), A373258(#)]`
-/

namespace A373259.P15978814945549394217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P15978814945549394217

noncomputable section

/-- A373259: Numbers k such that k' / gcd(k,k') is a multiple of 4 and A276085(k) is a multiple of 8, where k' stands for the arithmetic derivative of k, A003415, and A276085 is the primorial base log-function.

Offset 1, canonical program `A373259.P15978814945549394217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8325 terms. -/
def A373259 (n : ℕ) : ℤ :=
  A373259.P15978814945549394217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8325 terms. -/
def A373259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373266.P11769714245437534244

`A369001(n+1)-A373137(n+1)`
-/

namespace A373266.P11769714245437534244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (n + 1) - A373137 (n + 1)

end

end A373266.P11769714245437534244

noncomputable section

/-- A373266: a(n) = 1 if A276085(n) is of the form 8m+4, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373266.P11769714245437534244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373266 (n : ℕ) : ℤ :=
  A373266.P11769714245437534244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373267.P2578606794001800641

`eq[1, A373266(n+1)]+1`
-/

namespace A373267.P2578606794001800641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373267.P2578606794001800641

noncomputable section

/-- A373267: Numbers k for which A276085(k) is of the form 8m+4, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373267.P2578606794001800641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8323 terms. -/
def A373267 (n : ℕ) : ℤ :=
  (A373267.P2578606794001800641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8323 terms. -/
def A373267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373365.P4265331062570760901

`gcd(A001414(n+1), A064097(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373365.P4265331062570760901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A064097 (n + 1))

end

end A373365.P4265331062570760901

noncomputable section

/-- A373365: a(n) = gcd(A001414(n), A064097(n)), where A001414 is the sum of prime factors with repetition, and A064097 is a quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A373365.P4265331062570760901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373365 (n : ℕ) : ℤ :=
  (A373365.P4265331062570760901.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373366.P11726240671660243097

`gcd(A064097(n+1), A083345(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373366.P11726240671660243097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064097 (n + 1)) (A083345 (n + 1))

end

end A373366.P11726240671660243097

noncomputable section

/-- A373366: a(n) = gcd(A064097(n), A083345(n)).

Offset 1, canonical program `A373366.P11726240671660243097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373366 (n : ℕ) : ℤ :=
  (A373366.P11726240671660243097.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373367.P11671728222294017214

`gcd(A373145(n+1), A373362(n+1))`
-/

namespace A373367.P11671728222294017214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A373145 (n + 1)) (A373362 (n + 1))

end

end A373367.P11671728222294017214

noncomputable section

/-- A373367: a(n) is the greatest common divisor of A001414(n), A003415(n), and A276085(n).

Offset 1, canonical program `A373367.P11671728222294017214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373145, A373362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373367 (n : ℕ) : ℤ :=
  (A373367.P11671728222294017214.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373145, A373362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373370.P12452585226732295162

`gcd(A001222(n+1), A064097(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373370.P12452585226732295162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A064097 (n + 1))

end

end A373370.P12452585226732295162

noncomputable section

/-- A373370: a(n) = gcd(bigomega(n), A064097(n)), where bigomega is number of prime factors with repetition, and A064097 is a quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A373370.P12452585226732295162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373370 (n : ℕ) : ℤ :=
  (A373370.P12452585226732295162.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373486.P4560497335640009081

`C(A373145(n+1), A003415(n+1))`
-/

namespace A373486.P4560497335640009081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373145 (n + 1)).toNat (A003415 (n + 1)).toNat

end

end A373486.P4560497335640009081

noncomputable section

/-- A373486: a(n) = 1 if A276085(n) is a multiple of A003415(n), otherwise 0, where A003415 is the arithmetic derivative and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A373486.P4560497335640009081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373486 (n : ℕ) : ℤ :=
  (A373486.P4560497335640009081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373487.P12079239083756637001

`record[(n+1)*A373486(n+1)]`
-/

namespace A373487.P12079239083756637001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373487.P12079239083756637001

noncomputable section

/-- A373487: Numbers k such that A276085(k) is a multiple of A003415(k), where A003415 is the arithmetic derivative and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A373487.P12079239083756637001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373487 (n : ℕ) : ℤ :=
  A373487.P12079239083756637001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373488.P4849159073643655447

`filter[A373487(n+1), A005171(#)]`
-/

namespace A373488.P4849159073643655447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A373488.P4849159073643655447

noncomputable section

/-- A373488: Nonprime natural numbers k such that A276085(k) is a multiple of A003415(k), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373488.P4849159073643655447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. -/
def A373488 (n : ℕ) : ℤ :=
  A373488.P4849159073643655447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. -/
def A373488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373703.P799095936400560943

`A062760(n+1)*A066636(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373703.P799095936400560943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1) * A066636 (n + 1)

end

end A373703.P799095936400560943

noncomputable section

/-- A373703: a(n) = A062760(n)*A066636(n).

Offset 1, canonical program `A373703.P799095936400560943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062760, A066636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373703 (n : ℕ) : ℤ :=
  A373703.P799095936400560943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062760, A066636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373703.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373836.P9775404234224644830

`A079978(A373835(n+1))`
-/

namespace A373836.P9775404234224644830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373835 (n + 1)).toNat

end

end A373836.P9775404234224644830

noncomputable section

/-- A373836: a(n) = 1 if bigomega(n) and A276085(n) are both multiples of 3, otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373836.P9775404234224644830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373836 (n : ℕ) : ℤ :=
  A373836.P9775404234224644830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373836.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373837.P11600665445971385302

`filter[A305800(n+1), A373836(#)]`
-/

namespace A373837.P11600665445971385302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A373837.P11600665445971385302

noncomputable section

/-- A373837: Numbers k such that bigomega(k) and A276085(k) are both multiples of 3, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373837.P11600665445971385302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A373837 (n : ℕ) : ℤ :=
  A373837.P11600665445971385302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A373837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373843.P4252622682383088569

`gcd(n+1, A373842(n+1))`
-/

namespace A373843.P4252622682383088569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A373842 (n + 1))

end

end A373843.P4252622682383088569

noncomputable section

/-- A373843: a(n) = gcd(n, A003415(A276085(n))), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373843.P4252622682383088569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373843 (n : ℕ) : ℤ :=
  (A373843.P4252622682383088569.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373851.P6816487822836138479

`C(A373835(n+1), ∑{e}[n+1, #])`
-/

namespace A373851.P6816487822836138479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373835 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A373851.P6816487822836138479

noncomputable section

/-- A373851: a(n) = 1 if A276085(n) is a multiple of bigomega(n), otherwise 0, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373851.P6816487822836138479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373851 (n : ℕ) : ℤ :=
  (A373851.P6816487822836138479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373852.P1180649417601384956

`eq[1, A373851(1+n)]+1`
-/

namespace A373852.P1180649417601384956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373851 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373852.P1180649417601384956

noncomputable section

/-- A373852: Numbers k such that A276085(k) is a multiple of bigomega(k), where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373852.P1180649417601384956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373852 (n : ℕ) : ℤ :=
  (A373852.P1180649417601384956.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373984.P1990840556673078357

`A108951(n+1)-A373158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373984.P1990840556673078357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A373158 (n + 1)

end

end A373984.P1990840556673078357

noncomputable section

/-- A373984: a(n) = A108951(n) - A373158(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373984.P1990840556673078357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373984 (n : ℕ) : ℤ :=
  A373984.P1990840556673078357.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373985.P17399683127926261314

`gcd(A108951(n+1), A373158(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373985.P17399683127926261314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108951 (n + 1)) (A373158 (n + 1))

end

end A373985.P17399683127926261314

noncomputable section

/-- A373985: a(n) = gcd(A108951(n), A373158(n)), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373985.P17399683127926261314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373985 (n : ℕ) : ℤ :=
  (A373985.P17399683127926261314.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373986.P8203815680597289083

`A373158(n+1)/A373985(n+1)`
-/

namespace A373986.P8203815680597289083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373158 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373986.P8203815680597289083

noncomputable section

/-- A373986: Numerator of A373158(n) / A108951(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373986.P8203815680597289083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373986.P8203815680597289083.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373158, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373987.P5061914862626044472

`A108951(n+1)/A373985(n+1)`
-/

namespace A373987.P5061914862626044472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373987.P5061914862626044472

noncomputable section

/-- A373987: Denominator of A373158(n) / A108951(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

Offset 1, canonical program `A373987.P5061914862626044472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373987 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373987.P5061914862626044472.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A373985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374324.P17751175072152199206

`A051903(A368714(n+1))`
-/

namespace A374324.P17751175072152199206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A368714 (n + 1)).toNat

end

end A374324.P17751175072152199206

noncomputable section

/-- A374324: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is even.

Offset 1, canonical program `A374324.P17751175072152199206`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368714, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374324 (n : ℕ) : ℤ :=
  A374324.P17751175072152199206.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368714, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374325.P10189443371500912035

`A051903(A369937(n+1))`
-/

namespace A374325.P10189443371500912035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369937 (n + 1)).toNat

end

end A374325.P10189443371500912035

noncomputable section

/-- A374325: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

Offset 1, canonical program `A374325.P10189443371500912035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374325 (n : ℕ) : ℤ :=
  A374325.P10189443371500912035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374326.P8962171448566803801

`sqrt(A374325(n+1))`
-/

namespace A374326.P8962171448566803801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374325 (n + 1) : ℝ)

end

end A374326.P8962171448566803801

noncomputable section

/-- A374326: The square root of the maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a square.

Offset 1, canonical program `A374326.P8962171448566803801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374326 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374326.P8962171448566803801.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374327.P9816410102867330981

`A051903(A369938(n+1))`
-/

namespace A374327.P9816410102867330981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369938 (n + 1)).toNat

end

end A374327.P9816410102867330981

noncomputable section

/-- A374327: The maximal exponent in the prime factorization of the numbers whose maximal exponent in their prime factorization is a power of 2.

Offset 1, canonical program `A374327.P9816410102867330981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374327 (n : ℕ) : ℤ :=
  A374327.P9816410102867330981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374460.P17083838947933679680

`lt[1, A368711(n+1)]+1`
-/

namespace A374460.P17083838947933679680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374460.P17083838947933679680

noncomputable section

/-- A374460: Indices of the nonsquarefree terms in the sequence of exponentially odd numbers (A268335).

Offset 1, canonical program `A374460.P17083838947933679680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A374460 (n : ℕ) : ℤ :=
  (A374460.P17083838947933679680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A374460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374586.P1168262897995380025

`A051903(A336064(n+1))`
-/

namespace A374586.P1168262897995380025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A336064 (n + 1)).toNat

end

end A374586.P1168262897995380025

noncomputable section

/-- A374586: The maximum exponent in the prime factorization of the numbers that are divisible by the maximum exponent in their prime factorization.

Offset 1, canonical program `A374586.P1168262897995380025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A336064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374586 (n : ℕ) : ℤ :=
  A374586.P1168262897995380025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A336064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374587.P4037298411033951044

`A051903(A368715(n+1))`
-/

namespace A374587.P4037298411033951044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A368715 (n + 1)).toNat

end

end A374587.P4037298411033951044

noncomputable section

/-- A374587: The maximum exponent in the prime factorization of the numbers that are not coprime to the maximum exponent in their prime factorization.

Offset 1, canonical program `A374587.P4037298411033951044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374587 (n : ℕ) : ℤ :=
  A374587.P4037298411033951044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375034.P14557958102364292036

`A375032(n+1)-A375033(n+1)`
-/

namespace A375034.P14557958102364292036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375032 (n + 1) - A375033 (n + 1)

end

end A375034.P14557958102364292036

noncomputable section

/-- A375034: The difference between the maximum odd exponent and the maximum even exponent in the prime factorization of n, where 0 is assigned to each maximum exponent if no such exponent exists.

Offset 1, canonical program `A375034.P14557958102364292036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375032, A375033, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375034 (n : ℕ) : ℤ :=
  A375034.P14557958102364292036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375032, A375033, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375767.P11029837342179991351

`A130233(A375766(n+1))`
-/

namespace A375767.P11029837342179991351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A375766 (n + 1)).toNat

end

end A375767.P11029837342179991351

noncomputable section

/-- A375767: The indices of the terms of A375766 in the Fibonacci sequence.

Offset 1, canonical program `A375767.P11029837342179991351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375767 (n : ℕ) : ℤ :=
  A375767.P11029837342179991351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375769.P9275196494981059329

`A130233(A375768(1+n))`
-/

namespace A375769.P9275196494981059329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A375768 (1 + n)).toNat

end

end A375769.P9275196494981059329

noncomputable section

/-- A375769: The indices of the terms of A375768 in the Fibonacci sequence.

Offset 1, canonical program `A375769.P9275196494981059329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375769 (n : ℕ) : ℤ :=
  A375769.P9275196494981059329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376141.P3226871347673056162

`A051903(A369020(n+1))`
-/

namespace A376141.P3226871347673056162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369020 (n + 1)).toNat

end

end A376141.P3226871347673056162

noncomputable section

/-- A376141: The maximum exponent in the prime factorization of the numbers k such that k and k+1 have the same maximum exponent in their prime factorization.

Offset 1, canonical program `A376141.P3226871347673056162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376141 (n : ℕ) : ℤ :=
  A376141.P3226871347673056162.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376141.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376170.P4489844541037532386

`filter[A368714(n+1), A112526(#)]`
-/

namespace A376170.P4489844541037532386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A376170.P4489844541037532386

noncomputable section

/-- A376170: Powerful numbers whose prime factorization has an even maximum exponent.

Offset 1, canonical program `A376170.P4489844541037532386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A376170 (n : ℕ) : ℤ :=
  A376170.P4489844541037532386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A376170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376645.P39489248175618375

`max(2*A007814(n+1), A375669(n+1))`
-/

namespace A376645.P39489248175618375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (2 * A007814 (n + 1)) (A375669 (n + 1))

end

end A376645.P39489248175618375

noncomputable section

/-- A376645: The maximum exponent in the factorization of n into powers of Gaussian primes.

Offset 1, canonical program `A376645.P39489248175618375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376645 (n : ℕ) : ℤ :=
  A376645.P39489248175618375.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376833.P3930033897863993129

`A119288(A120944(n+1))`
-/

namespace A376833.P3930033897863993129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A120944 (n + 1)).toNat

end

end A376833.P3930033897863993129

noncomputable section

/-- A376833: Second smallest prime factor of numbers m that are both squarefree and composite.

Offset 1, canonical program `A376833.P3930033897863993129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376833 (n : ℕ) : ℤ :=
  A376833.P3930033897863993129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377160.P11394877982396804790

`lt[2, A176166(1+n)]+1`
-/

namespace A377160.P11394877982396804790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176166 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377160.P11394877982396804790

noncomputable section

/-- A377160: Numbers k such that A000217(k) is not cubefree.

Offset 1, canonical program `A377160.P11394877982396804790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A377160 (n : ℕ) : ℤ :=
  (A377160.P11394877982396804790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A377160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377723.P18058257145428900685

`comp[A091377(1+n)-1]+1`
-/

namespace A377723.P18058257145428900685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377723.P18058257145428900685

noncomputable section

/-- A377723: Numbers whose number of prime factors (counted with repetition) is greater than or equal to its smallest prime factor.

Offset 1, canonical program `A377723.P18058257145428900685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377723 (n : ℕ) : ℤ :=
  (A377723.P18058257145428900685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377871.P15364490249703246391

`eq[1, A377870(1+n)]+1`
-/

namespace A377871.P15364490249703246391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377870 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377871.P15364490249703246391

noncomputable section

/-- A377871: Numbers k such that neither k nor A276085(k) has divisors of the form p^p, where A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A377871.P15364490249703246391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377871 (n : ℕ) : ℤ :=
  (A377871.P15364490249703246391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377983.P4142556611806405046

`fp[A377871(n+1)]`
-/

namespace A377983.P4142556611806405046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A377983.P4142556611806405046

noncomputable section

/-- A377983: a(n) is the number of terms in the range of A276087 that are <= n, where A276087(n) = A276086(A276086(n)) [the twofold application of the primorial base exp-function].

Offset 0, canonical program `A377983.P4142556611806405046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377983 (n : ℕ) : ℤ :=
  (A377983.P4142556611806405046.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380692.P12294992463920302040

`lt[A051903(n+1), A074828(n+1)]+1`
-/

namespace A380692.P12294992463920302040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380692.P12294992463920302040

noncomputable section

/-- A380692: Numbers k such that the least prime dividing k is larger than the maximum exponent in the prime factorization of k; a(1) = 1 by convention.

Offset 1, canonical program `A380692.P12294992463920302040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380692 (n : ℕ) : ℤ :=
  (A380692.P12294992463920302040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381313.P16274540658270787532

`lt[2, A375669(n+1)]+1`
-/

namespace A381313.P16274540658270787532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A381313.P16274540658270787532

noncomputable section

/-- A381313: Numbers that are divisible by the cube of an odd prime.

Offset 1, canonical program `A381313.P16274540658270787532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A381313 (n : ℕ) : ℤ :=
  (A381313.P16274540658270787532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A381313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382965.P13561959687665380359

`A046660(A067259(n+1))`
-/

namespace A382965.P13561959687665380359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A067259 (n + 1)).toNat

end

end A382965.P13561959687665380359

noncomputable section

/-- A382965: The number of non-unitary prime divisors of the n-th cubefree number that is not squarefree.

Offset 1, canonical program `A382965.P13561959687665380359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382965 (n : ℕ) : ℤ :=
  A382965.P13561959687665380359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382967.P10174972740496609768

`eq[2, A299090(1+n)]+1`
-/

namespace A382967.P10174972740496609768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P10174972740496609768

noncomputable section

/-- A382967: Biquadratefree numbers (A046100) that are not squarefree (A005117).

Offset 1, canonical program `A382967.P10174972740496609768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382967 (n : ℕ) : ℤ :=
  (A382967.P10174972740496609768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382968.P9973608297298639006

`A056170(A382967(n+1))`
-/

namespace A382968.P9973608297298639006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A382967 (n + 1)).toNat

end

end A382968.P9973608297298639006

noncomputable section

/-- A382968: The number of non-unitary prime divisors of the n-th biquadratefree number that is not squarefree.

Offset 1, canonical program `A382968.P9973608297298639006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382968 (n : ℕ) : ℤ :=
  A382968.P9973608297298639006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383288.P8330207699050521713

`filter[A003159(n+1), A383287(#)]`
-/

namespace A383288.P8330207699050521713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A383288.P8330207699050521713

noncomputable section

/-- A383288: Numbers k for which A276075(k) is a multiple of 4, where A276075 is fully additive with a(p) = PrimePi(p)!.

Offset 1, canonical program `A383288.P8330207699050521713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A383288 (n : ℕ) : ℤ :=
  A383288.P8330207699050521713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. -/
def A383288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383769.P6860072968184239956

`ceil(A318512(n+1)/A006519(n+1))`
-/

namespace A383769.P6860072968184239956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318512 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A383769.P6860072968184239956

noncomputable section

/-- A383769: Denominators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

Offset 1, canonical program `A383769.P6860072968184239956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769 (n : ℕ) : ℤ :=
  A383769.P6860072968184239956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384657.P17476913378836847897

`lt[n+1, A384655(n+1)]+1`
-/

namespace A384657.P17476913378836847897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A384657.P17476913378836847897

noncomputable section

/-- A384657: Numbers k such that A384655(k) > k.

Offset 1, canonical program `A384657.P17476913378836847897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A384657 (n : ℕ) : ℤ :=
  (A384657.P17476913378836847897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A384657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386536.P5039393821723974418

`A007814(A067259(n+1))`
-/

namespace A386536.P5039393821723974418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A067259 (n + 1)).toNat

end

end A386536.P5039393821723974418

noncomputable section

/-- A386536: Exponent of the highest power of 2 dividing the n-th number that is cubefree but not squarefree.

Offset 1, canonical program `A386536.P5039393821723974418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386536 (n : ℕ) : ℤ :=
  A386536.P5039393821723974418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386684.P6936343892752032316

`filter[A067259(n+1), A049240(#)]`
-/

namespace A386684.P6936343892752032316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A386684.P6936343892752032316

noncomputable section

/-- A386684: Cubefree nonsquares with at least one prime power factor that is not square.

Offset 1, canonical program `A386684.P6936343892752032316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A386684 (n : ℕ) : ℤ :=
  A386684.P6936343892752032316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A386684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390126.P4203344648687792492

`∪[A177492(n+1), A177493(n+1)]`
-/

namespace A390126.P4203344648687792492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P4203344648687792492

noncomputable section

/-- A390126: Powers k^m, m = 2..3, of squarefree composite k.

Offset 1, canonical program `A390126.P4203344648687792492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126 (n : ℕ) : ℤ :=
  (A390126.P4203344648687792492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391023.P8301791934320593997

`filter[A067259(1+n), A355447(#)]`
-/

namespace A391023.P8301791934320593997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P8301791934320593997

noncomputable section

/-- A391023: Numbers with more than 1 distinct prime factor and whose largest prime factor exponent is 2.

Offset 1, canonical program `A391023.P8301791934320593997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023 (n : ℕ) : ℤ :=
  A391023.P8301791934320593997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A391074.P7066598171140740427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391074 (n : ℕ) : ℤ :=
  A391074.P7066598171140740427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391415.P5836961313597618473

`record[A052410(A378767(n+1))]`
-/

namespace A391415.P5836961313597618473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A378767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391415.P5836961313597618473

noncomputable section

/-- A391415: Nonsquarefree numbers that are neither cubefree nor perfect powers.

Offset 1, canonical program `A391415.P5836961313597618473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9902 terms. -/
def A391415 (n : ℕ) : ℤ :=
  A391415.P5836961313597618473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9902 terms. -/
def A391415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391862.P7954269909113733652

`eq[1, A373361(1+n)]+1`
-/

namespace A391862.P7954269909113733652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373361 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391862.P7954269909113733652

noncomputable section

/-- A391862: Numbers k that are coprime to A276085(k), where A276085 is the primorial base log-function.

Offset 1, canonical program `A391862.P7954269909113733652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391862 (n : ℕ) : ℤ :=
  (A391862.P7954269909113733652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391863.P11409950270662709404

`filter[A048103(n+1), A373361(#)]`
-/

namespace A391863.P11409950270662709404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373361 (f1 j).toNat = 1) n)

end

end A391863.P11409950270662709404

noncomputable section

/-- A391863: Numbers k that are coprime to A276085(k) and that are not divisible by p^p for any prime p, where A276085 is the primorial base log-function.

Offset 1, canonical program `A391863.P11409950270662709404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8851 terms. -/
def A391863 (n : ℕ) : ℤ :=
  A391863.P11409950270662709404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8851 terms. -/
def A391863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391922.P16311952862466852475

`∩[A212164(n+1), A345381(n+1)]`
-/

namespace A391922.P16311952862466852475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P16311952862466852475

noncomputable section

/-- A391922: Numbers that are neither cubefree nor powerful and have exactly 2 distinct prime factors.

Offset 1, canonical program `A391922.P16311952862466852475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4423 terms. -/
def A391922 (n : ℕ) : ℤ :=
  (A391922.P16311952862466852475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4423 terms. -/
def A391922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391927.P5320938749559707016

`lt[n, A373842(n+1)]+1`
-/

namespace A391927.P5320938749559707016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391927.P5320938749559707016

noncomputable section

/-- A391927: Numbers k for which A373842(k) >= k, where A373842 is the arithmetic derivative of the primorial base log-function.

Offset 1, canonical program `A391927.P5320938749559707016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391927 (n : ℕ) : ℤ :=
  (A391927.P5320938749559707016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391938.P2233088175507154711

`filter[A391927(n+1), A359550(#)]`
-/

namespace A391938.P2233088175507154711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A391938.P2233088175507154711

noncomputable section

/-- A391938: Numbers k not divisible by p^p for any prime p, and for which A373842(k) >= k, where A373842 is the arithmetic derivative of the primorial base log-function.

Offset 1, canonical program `A391938.P2233088175507154711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 697 terms. -/
def A391938 (n : ℕ) : ℤ :=
  A391938.P2233088175507154711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 697 terms. -/
def A391938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392280.P9803896424176821439

`A053644(A372604(n+1)+A372603(n+1))`
-/

namespace A392280.P9803896424176821439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A372604 (n + 1) + A372603 (n + 1)).toNat

end

end A392280.P9803896424176821439

noncomputable section

/-- A392280: The maximum exponent in the prime factorization of the smallest multiple of n whose prime factorization exponents are all powers of 2.

Offset 1, canonical program `A392280.P9803896424176821439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392280 (n : ℕ) : ℤ :=
  A392280.P9803896424176821439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392537.P5789005694378708755

`∩[A332785(n+1), A382967(n+1)]`
-/

namespace A392537.P5789005694378708755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392537.P5789005694378708755

noncomputable section

/-- A392537: Biquadratefree numbers that are neither squareful nor squarefree.

Offset 1, canonical program `A392537.P5789005694378708755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537 (n : ℕ) : ℤ :=
  (A392537.P5789005694378708755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8135 terms. -/
def A392537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392698.P11584319785320885768

`filter[A362619(n+1), A359471(#)]`
-/

namespace A392698.P11584319785320885768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A392698.P11584319785320885768

noncomputable section

/-- A392698: Numbers whose reversed prime indices are the 0-prepended first sums of some finite sequence of distinct integers.

Offset 1, canonical program `A392698.P11584319785320885768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9780 terms. -/
def A392698 (n : ℕ) : ℤ :=
  A392698.P11584319785320885768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9780 terms. -/
def A392698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393947.P11959120361459312155

`filter[A072413(n+1), A389905(#)]`
-/

namespace A393947.P11959120361459312155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A393947.P11959120361459312155

noncomputable section

/-- A393947: Numbers that are neither squarefree nor squareful with prime power factor exponents that are not all pairwise coprime.

Offset 1, canonical program `A393947.P11959120361459312155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A393947 (n : ℕ) : ℤ :=
  A393947.P11959120361459312155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A393947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394049.P14023928957558719581

`A020639(A120944(n+1))²*A119288(A120944(n+1))`
-/

namespace A394049.P14023928957558719581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120944 (n + 1)).toNat ^ 2 * A119288 (A120944 (n + 1)).toNat

end

end A394049.P14023928957558719581

noncomputable section

/-- A394049: Smallest number k that is neither squarefree nor squareful such that rad(k) | s(n), where s = A120944 is the sequence of squarefree composite numbers and rad = A007947.

Offset 1, canonical program `A394049.P14023928957558719581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394049 (n : ℕ) : ℤ :=
  A394049.P14023928957558719581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396269.P4590932951071944405

`filter[A386684(n+1), A379958(#)]`
-/

namespace A396269.P4590932951071944405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A396269.P4590932951071944405

noncomputable section

/-- A396269: Cubefree k that are neither squarefree nor squareful that have more than 2 distinct prime factors.

Offset 1, canonical program `A396269.P4590932951071944405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A396269 (n : ℕ) : ℤ :=
  A396269.P4590932951071944405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A396269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396710.P10226979819799223403

`A259936(A066636(n+1))`
-/

namespace A396710.P10226979819799223403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (A066636 (n + 1)).toNat

end

end A396710.P10226979819799223403

noncomputable section

/-- A396710: Number of unordered factorizations of n into exactly k squarefree factors, where k is the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A396710.P10226979819799223403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A396710 (n : ℕ) : ℤ :=
  A396710.P10226979819799223403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A396710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397805.P13663769163111520641

`lt[1, A284259(n+1)]+1`
-/

namespace A397805.P13663769163111520641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A397805.P13663769163111520641

noncomputable section

/-- A397805: Composite numbers whose 3rd smallest divisor is less than the square of their least prime factor.

Offset 1, canonical program `A397805.P13663769163111520641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3324 terms. -/
def A397805 (n : ℕ) : ℤ :=
  (A397805.P13663769163111520641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3324 terms. -/
def A397805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397962.P1462171921949038625

`comp[A397805(n+1)-1]+1`
-/

namespace A397962.P1462171921949038625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A397962.P1462171921949038625

noncomputable section

/-- A397962: Complement of A397805: numbers that have fewer than 3 divisors that are smaller than the square of their least prime factor.

Offset 1, canonical program `A397962.P1462171921949038625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397962 (n : ℕ) : ℤ :=
  (A397962.P1462171921949038625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398316.P8351843934457800232

`filter[A396269(n+1), A359466(#)]`
-/

namespace A398316.P8351843934457800232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A398316.P8351843934457800232

noncomputable section

/-- A398316: Numbers of the form p^2*s, where p is prime, s is squarefree, gcd(p,s) = 1, and A001221(s) >= 2.

Offset 1, canonical program `A398316.P8351843934457800232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8673 terms. -/
def A398316 (n : ℕ) : ℤ :=
  A398316.P8351843934457800232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8673 terms. -/
def A398316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398442.P7473763180708318726

`filter[A398375(1+n), A359471(#)]`
-/

namespace A398442.P7473763180708318726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398442.P7473763180708318726

noncomputable section

/-- A398442: Numbers k of the form q(k) * rad(k), where rad = A007947 and q(k) is the second smallest distinct prime factor of k.

Offset 1, canonical program `A398442.P7473763180708318726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3746 terms. -/
def A398442 (n : ℕ) : ℤ :=
  A398442.P7473763180708318726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3746 terms. -/
def A398442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398787.P8559661131929552719

`∩[2*n, A398316(n+1)]`
-/

namespace A398787.P8559661131929552719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398787.P8559661131929552719

noncomputable section

/-- A398787: Even numbers m such that A001221(m) >= 3 and A001222(m) = A001221(m) + 1.

Offset 1, canonical program `A398787.P8559661131929552719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7440 terms. -/
def A398787 (n : ℕ) : ℤ :=
  (A398787.P8559661131929552719.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7440 terms. -/
def A398787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398802.P9625537072785539984

`∩[A048109(n+1), A398375(n+1)]`
-/

namespace A398802.P9625537072785539984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398802.P9625537072785539984

noncomputable section

/-- A398802: Numbers k of the form q(k)^2 * rad(k), where rad = A007947, and q(k) the second smallest distinct prime factor of k.

Offset 1, canonical program `A398802.P9625537072785539984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A398802 (n : ℕ) : ℤ :=
  (A398802.P9625537072785539984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A398802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400435.P2332655486521523531

`A277011(eq[4, a(and(n, n-1))+1])` with `a(0)=1`
-/

namespace A400435.P2332655486521523531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A400435.P2332655486521523531

noncomputable section

/-- A400435: Integers that can be expressed as the sum of 3 factorials.

Offset 1, canonical program `A400435.P2332655486521523531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A400435 (n : ℕ) : ℤ :=
  A400435.P2332655486521523531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A400435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401232.P7500020941983931709

`lt[A401066(n+1), 1]+1`
-/

namespace A401232.P7500020941983931709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A401232.P7500020941983931709

noncomputable section

/-- A401232: Numbers k such that A006530(k) divides A276085(k), where A006530(k) is the largest prime dividing k, 1 if k is 1, and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A401232.P7500020941983931709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A401232 (n : ℕ) : ℤ :=
  (A401232.P7500020941983931709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A401232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401233.P6384652756716139633

`filter[A401232(n+1), A359550(#)]`
-/

namespace A401233.P6384652756716139633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A401233.P6384652756716139633

noncomputable section

/-- A401233: Numbers k with no p^p factors and such that A006530(k) divides A276085(k), where A006530(k) is the largest prime dividing k (with 1 if k is 1), and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A401233.P6384652756716139633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A401233 (n : ℕ) : ℤ :=
  A401233.P6384652756716139633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A401233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401234.P7045811185176352010

`record[A007913(A401232(1+n))]`
-/

namespace A401234.P7045811185176352010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A401232 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401234.P7045811185176352010

noncomputable section

/-- A401234: Squarefree numbers k such that A006530(k) divides A276085(k), where A006530(k) is the largest prime dividing k (with 1 if k is 1), and A276085 is fully additive with a(p) = p#/p.

Offset 1, canonical program `A401234.P7045811185176352010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A401234 (n : ℕ) : ℤ :=
  A401234.P7045811185176352010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A401234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000469.P516089823978451219

`A120944(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A000469.P516089823978451219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120944 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A000469.P516089823978451219

noncomputable section

/-- A000469: 1 together with products of 2 or more distinct primes.

Offset 1, canonical program `A000469.P516089823978451219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469 (n : ℕ) : ℤ :=
  A000469.P516089823978451219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039282.P1666876057419217504

`lt[1, A351946(A338854(n))]`
-/

namespace A039282.P1666876057419217504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351946 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039282.P1666876057419217504

noncomputable section

/-- A039282: Numbers whose base-4 representation has the same nonzero number of 2's and 3's.

Offset 1, canonical program `A039282.P1666876057419217504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2076 terms. -/
def A039282 (n : ℕ) : ℤ :=
  (A039282.P1666876057419217504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2076 terms. -/
def A039282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044813.P18382586688093240220

`eq[1, A175465(n+1)]+1`
-/

namespace A044813.P18382586688093240220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044813.P18382586688093240220

noncomputable section

/-- A044813: Positive integers having distinct base-2 run lengths.

Offset 1, canonical program `A044813.P18382586688093240220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A044813 (n : ℕ) : ℤ :=
  (A044813.P18382586688093240220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A044813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046100.P13811187242506642601

`lt[A299090(n+1), 3]+1`
-/

namespace A046100.P13811187242506642601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046100.P13811187242506642601

noncomputable section

/-- A046100: Biquadratefree numbers: numbers that are not divisible by any 4th power greater than 1.

Offset 1, canonical program `A046100.P13811187242506642601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046100 (n : ℕ) : ℤ :=
  (A046100.P13811187242506642601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046669.P15983163477569148833

`A088821(n+1)+1`
-/

namespace A046669.P15983163477569148833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088821 (n + 1) + 1

end

end A046669.P15983163477569148833

noncomputable section

/-- A046669: Partial sums of A020639.

Offset 1, canonical program `A046669.P15983163477569148833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046669 (n : ℕ) : ℤ :=
  A046669.P15983163477569148833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049115.P2000805014081711622

`A259103(n+1)-A064415(n+1)`
-/

namespace A049115.P2000805014081711622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259103 (n + 1) - A064415 (n + 1)

end

end A049115.P2000805014081711622

noncomputable section

/-- A049115: a(n) is the number of iterations of the Euler phi function needed to reach a power of 2, when starting from n.

Offset 1, canonical program `A049115.P2000805014081711622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049115 (n : ℕ) : ℤ :=
  A049115.P2000805014081711622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060610.P6093436061805835629

`A049115(A000040(n+1))`
-/

namespace A060610.P6093436061805835629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A000040 (n + 1)).toNat

end

end A060610.P6093436061805835629

noncomputable section

/-- A060610: Repeatedly apply Euler phi to the n-th prime; a(n) is the number of terms in the resulting iteration chain which are not powers of 2 (number of initial iterations until reaching the first power of 2).

Offset 1, canonical program `A060610.P6093436061805835629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060610 (n : ℕ) : ℤ :=
  A060610.P6093436061805835629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060610.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061373.P17835350724076642860

`A064097(n+1)+A054725(n+1)`
-/

namespace A061373.P17835350724076642860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) + A054725 (n + 1)

end

end A061373.P17835350724076642860

noncomputable section

/-- A061373: "Natural" logarithm, defined inductively by a(1)=1, a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if n, m>1.

Offset 1, canonical program `A061373.P17835350724076642860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061373 (n : ℕ) : ℤ :=
  A061373.P17835350724076642860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062770.P13203404241284622665

`A072774(n+2)`
-/

namespace A062770.P13203404241284622665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 2)

end

end A062770.P13203404241284622665

noncomputable section

/-- A062770: n/[largest power of squarefree kernel] equals 1; perfect powers of sqf-kernels (or sqf-numbers).

Offset 1, canonical program `A062770.P13203404241284622665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062770 (n : ℕ) : ℤ :=
  A062770.P13203404241284622665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065496.P7200454893314223986

`lt[1, A175432(n+1)]+1`
-/

namespace A065496.P7200454893314223986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065496.P7200454893314223986

noncomputable section

/-- A065496: Numbers n such that sigma(n) is a nontrivial power, i.e., sigma(n) = a^b where a and b are greater than 1.

Offset 1, canonical program `A065496.P7200454893314223986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A065496 (n : ℕ) : ℤ :=
  (A065496.P7200454893314223986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A065496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065676.P5570158743530219289

`A065620(val(A273671(1+n), 2))`
-/

namespace A065676.P5570158743530219289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.valuation (A273671 (1 + n)).toNat 2)

end

end A065676.P5570158743530219289

noncomputable section

/-- A065676: The exponent of 2 in the fractions of the whole ]0, inf[ Stern-Brocot tree (A007305/A047679) [1/1, 1/2, 2/1, 1/3, 2/3, 3/2, 3/1, 1/4, 2/5, 3/5, 3/4, 4/3, 5/3, 5/2, 4/1, ...].

Offset 1, canonical program `A065676.P5570158743530219289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A065676 (n : ℕ) : ℤ :=
  A065676.P5570158743530219289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A065676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068919.P16495689797022882545

`∩[A000469(n+1), A069209(n+1)]`
-/

namespace A068919.P16495689797022882545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068919.P16495689797022882545

noncomputable section

/-- A068919: Squarefree orders of non-Abelian groups.

Offset 1, canonical program `A068919.P16495689797022882545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4654 terms. -/
def A068919 (n : ℕ) : ℤ :=
  (A068919.P16495689797022882545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4654 terms. -/
def A068919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069623.P8726476016285291526

`∑[char[lt[1, A295931(n+1)]]]+1`
-/

namespace A069623.P8726476016285291526
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069623.P8726476016285291526

noncomputable section

/-- A069623: Number of perfect powers <= n.

Offset 1, canonical program `A069623.P8726476016285291526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069623 (n : ℕ) : ℤ :=
  (A069623.P8726476016285291526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071124.P14915334261569632399

`∩[A071320(n+1)-1, A071320(n+1)]`
-/

namespace A071124.P14915334261569632399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071124.P14915334261569632399

noncomputable section

/-- A071124: Least of five consecutive numbers which are cubefree and not squarefree, i.e., {k, k+1, k+2, k+3, k+4} are in A067259.

Offset 1, canonical program `A071124.P14915334261569632399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A071124 (n : ℕ) : ℤ :=
  (A071124.P14915334261569632399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A071124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072292.P6884395350453884812

`A069623(1+n)-1`
-/

namespace A072292.P6884395350453884812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (1 + n) - 1

end

end A072292.P6884395350453884812

noncomputable section

/-- A072292: Number of proper powers b^d <= n (b > 1, d > 1).

Offset 1, canonical program `A072292.P6884395350453884812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072292 (n : ℕ) : ℤ :=
  A072292.P6884395350453884812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072746.P10404751707285318814

`∑[A010051(A004757(n+1)-A074828(n+1))]`
-/

namespace A072746.P10404751707285318814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004757 (n + 1) - A074828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072746.P10404751707285318814

noncomputable section

/-- A072746: Number of pairs of primes (p, q) such that, for some integer k, (p+q)/2 = 2^k, 2^(k-1) < p < q, and p <= n.

Offset 1, canonical program `A072746.P10404751707285318814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072746 (n : ℕ) : ℤ :=
  A072746.P10404751707285318814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072776.P4781511803637560244

`A253641(A072774(n+1))`
-/

namespace A072776.P4781511803637560244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A072774 (n + 1)).toNat

end

end A072776.P4781511803637560244

noncomputable section

/-- A072776: Exponents of powers of squarefree numbers.

Offset 1, canonical program `A072776.P4781511803637560244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, A253641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072776 (n : ℕ) : ℤ :=
  A072776.P4781511803637560244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, A253641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072776.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072901.P7101582238389632081

`∩[A000469(n+1), A042964(n+1)]`
-/

namespace A072901.P7101582238389632081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072901.P7101582238389632081

noncomputable section

/-- A072901: Composite numbers n such that the discriminant of the quadratic field Q(sqrt(n)) equals 4n.

Offset 1, canonical program `A072901.P7101582238389632081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6974 terms. -/
def A072901 (n : ℕ) : ℤ :=
  (A072901.P7101582238389632081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6974 terms. -/
def A072901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073251.P16935436493994467128

`∩[A121495(n+1)-1, A121495(n+1)]`
-/

namespace A073251.P16935436493994467128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121495 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073251.P16935436493994467128

noncomputable section

/-- A073251: Numbers k such that k, k+1 and k+2 are nonprime and squarefree.

Offset 1, canonical program `A073251.P16935436493994467128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A073251 (n : ℕ) : ℤ :=
  (A073251.P16935436493994467128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A073251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073486.P7562161125869896796

`∩[A000469(n+1), A073492(n+1)]`
-/

namespace A073486.P7562161125869896796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P7562161125869896796

noncomputable section

/-- A073486: Squarefree numbers having at least one prime gap.

Offset 1, canonical program `A073486.P7562161125869896796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5670 terms. -/
def A073486 (n : ℕ) : ℤ :=
  (A073486.P7562161125869896796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5670 terms. -/
def A073486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075039.P15668940356083047975

`∩[A006073(n+1), A073251(n+1)]`
-/

namespace A075039.P15668940356083047975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P15668940356083047975

noncomputable section

/-- A075039: Smallest of three consecutive squarefree numbers having equal numbers of prime factors.

Offset 1, canonical program `A075039.P15668940356083047975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A075039 (n : ℕ) : ℤ :=
  (A075039.P15668940356083047975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A075039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075145.P13107702614752429613

`A061373(A000040(n+1))`
-/

namespace A075145.P13107702614752429613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (A000040 (n + 1)).toNat

end

end A075145.P13107702614752429613

noncomputable section

/-- A075145: Prime basis of A061373.

Offset 1, canonical program `A075145.P13107702614752429613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061373, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075145 (n : ℕ) : ℤ :=
  A075145.P13107702614752429613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061373, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075802.P15418155707765850726

`A069623(n+1)-A076411(n+1)`
-/

namespace A075802.P15418155707765850726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (n + 1) - A076411 (n + 1)

end

end A075802.P15418155707765850726

noncomputable section

/-- A075802: Characteristic function of perfect powers, A001597.

Offset 1, canonical program `A075802.P15418155707765850726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075802 (n : ℕ) : ℤ :=
  A075802.P15418155707765850726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075861.P7357354350976767421

`2-A184727(n+3)+n`
-/

namespace A075861.P7357354350976767421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A184727 (n + 3) + (n : ℤ)

end

end A075861.P7357354350976767421

noncomputable section

/-- A075861: Least k such that (n-k) divides (n+k).

Offset 2, canonical program `A075861.P7357354350976767421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A075861 (n : ℕ) : ℤ :=
  A075861.P7357354350976767421.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A075861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078632.P7040049685598671004

`∑[∑{d}[n+1, A089723(#)]-1]`
-/

namespace A078632.P7040049685598671004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A089723 d - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P7040049685598671004

noncomputable section

/-- A078632: Number of geometric subsequences of [1,...,n] with integral successive-term ratio and length > 1.

Offset 1, canonical program `A078632.P7040049685598671004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078632 (n : ℕ) : ℤ :=
  A078632.P7040049685598671004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078651.P16698353365509154440

`∑[∑{d}[1+n, A089723(#)]]`
-/

namespace A078651.P16698353365509154440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A089723 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078651.P16698353365509154440

noncomputable section

/-- A078651: Number of increasing geometric-progression subsequences of [1,...,n] with integral successive-term ratio and length >= 1.

Offset 1, canonical program `A078651.P16698353365509154440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078651 (n : ℕ) : ℤ :=
  A078651.P16698353365509154440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091050.P17073510422730212834

`∑{d}[1+n, A075802(#)]`
-/

namespace A091050.P17073510422730212834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A075802 d

end

end A091050.P17073510422730212834

noncomputable section

/-- A091050: Number of divisors of n that are perfect powers.

Offset 1, canonical program `A091050.P17073510422730212834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091050 (n : ℕ) : ℤ :=
  A091050.P17073510422730212834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091051.P7222712780563793315

`∑{d}[1+n, #*A075802(#)]`
-/

namespace A091051.P7222712780563793315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A075802 d

end

end A091051.P7222712780563793315

noncomputable section

/-- A091051: Sum of divisors of n that are perfect powers.

Offset 1, canonical program `A091051.P7222712780563793315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091051 (n : ℕ) : ℤ :=
  A091051.P7222712780563793315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091372.P320932747397892225

`fp[A091375(n+1)-1]`
-/

namespace A091372.P320932747397892225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091375 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A091372.P320932747397892225

noncomputable section

/-- A091372: Number of numbers <= n having more prime factors than the value of their smallest prime factor.

Offset 1, canonical program `A091372.P320932747397892225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091372 (n : ℕ) : ℤ :=
  (A091372.P320932747397892225.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096309.P9008787317947722572

`A185102(2+abs(1-n))`
-/

namespace A096309.P9008787317947722572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 (2 + |1 - (n : ℤ)|).toNat

end

end A096309.P9008787317947722572

noncomputable section

/-- A096309: a(1)=1; for n > 1, a(n) is the number of levels in the "stacked" prime number factorization of n (prime number factorization of the exponents if necessary and so on ...).

Offset 1, canonical program `A096309.P9008787317947722572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096309 (n : ℕ) : ℤ :=
  A096309.P9008787317947722572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107393.P1629707877370025519

`A107279(A107286(n))-char[A000040(n+1)]`
-/

namespace A107393.P1629707877370025519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A107286 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107393.P1629707877370025519

noncomputable section

/-- A107393: a(n) = -1 if n is a prime, else a(n) = 1 if n is the sum of three odd primes, else a(n) = 2 if n is the sum of two primes, else a(n) = 0.

Offset 0, canonical program `A107393.P1629707877370025519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107393 (n : ℕ) : ℤ :=
  A107393.P1629707877370025519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109301.P8909241873375012922

`a(A263323(1+n)-1)+1` with `a(0)=0`
-/

namespace A109301.P8909241873375012922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A263323 (1 + n) - 1).toNat + 1

end

end A109301.P8909241873375012922

noncomputable section

/-- A109301: a(n) = rhig(n) = rote height in gammas of n, where the "rote" corresponding to a positive integer n is a graph derived from the primes factorization of n, as illustrated in the comments.

Offset 1, canonical program `A109301.P8909241873375012922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A109301 (n : ℕ) : ℤ :=
  (A109301.P8909241873375012922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A109301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109352.P15990870574483409187

`A001414(A120944(n+1))`
-/

namespace A109352.P15990870574483409187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A120944 (n + 1)).toNat

end

end A109352.P15990870574483409187

noncomputable section

/-- A109352: a(n) = sum of the prime divisors of the n-th squarefree composite number.

Offset 1, canonical program `A109352.P15990870574483409187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109352 (n : ℕ) : ℤ :=
  A109352.P15990870574483409187.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112531.P1162023673917804213

`A246660(A073138(2*n+1))/A246660(2*n+1)`
-/

namespace A112531.P1162023673917804213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246660 (A073138 (2 * n + 1)).toNat : ℚ) / (A246660 (2 * n + 1) : ℚ)

end

end A112531.P1162023673917804213

noncomputable section

/-- A112531: Triangle read by rows which lists compositions having at least one part equal to 1.

Offset 1, canonical program `A112531.P1162023673917804213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A112531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112531.P1162023673917804213.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A112531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114206.P16844957849663853845

`max(A004216(n+2), A051628(n+2))`
-/

namespace A114206.P16844957849663853845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A004216 (n + 2)) (A051628 (n + 2))

end

end A114206.P16844957849663853845

noncomputable section

/-- A114206: Length of the preperiodic part of the decimal expansion of 1/n, and also leading zeros from the period part if the preperiodic digits are all 0's (if any).

Offset 2, canonical program `A114206.P16844957849663853845`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051628, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114206 (n : ℕ) : ℤ :=
  A114206.P16844957849663853845.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051628, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115070.P14336137685640235068

`A000010(n+1)/A115069(n+1)`
-/

namespace A115070.P14336137685640235068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A115069 (n + 1) : ℚ)

end

end A115070.P14336137685640235068

noncomputable section

/-- A115070: a(n) = phi(n)/3^b(n), where b(n) is #{primes p=1 mod 3 dividing n}.

Offset 1, canonical program `A115070.P14336137685640235068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115070 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115070.P14336137685640235068.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117818.P15287579860656683066

`min(A322982(n+1), n+1)`
-/

namespace A117818.P15287579860656683066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A322982 (n + 1)) (n + 1 : ℤ)

end

end A117818.P15287579860656683066

noncomputable section

/-- A117818: a(n) = n if n is 1 or a prime, otherwise a(n) = n divided by the least prime factor of n (A032742(n)).

Offset 1, canonical program `A117818.P15287579860656683066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117818 (n : ℕ) : ℤ :=
  A117818.P15287579860656683066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118009.P14455406126264924193

`A000040(A253641(n)+A117229(n))%2`
-/

namespace A118009.P14455406126264924193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A253641 n + A117229 n).toNat) 2

end

end A118009.P14455406126264924193

noncomputable section

/-- A118009: a(n) = 1 if at least one of decimal digits n or the concatenation of decimal digits of n is perfect power, otherwise a(n) = 0.

Offset 1, canonical program `A118009.P14455406126264924193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118009 (n : ℕ) : ℤ :=
  A118009.P14455406126264924193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119313.P2499739147224313022

`∪[A080364(n+1), A397805(n+1)]`
-/

namespace A119313.P2499739147224313022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119313.P2499739147224313022

noncomputable section

/-- A119313: Numbers with a prime as third-smallest divisor.

Offset 1, canonical program `A119313.P2499739147224313022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119313 (n : ℕ) : ℤ :=
  (A119313.P2499739147224313022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119314.P15642922305793884357

`comp[A119313(n+1)-1]+1`
-/

namespace A119314.P15642922305793884357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A119314.P15642922305793884357

noncomputable section

/-- A119314: Complement of A119313.

Offset 1, canonical program `A119314.P15642922305793884357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5049 terms. -/
def A119314 (n : ℕ) : ℤ :=
  (A119314.P15642922305793884357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5049 terms. -/
def A119314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119315.P8342286643790542504

`filter[A119314(n+1), A066247(#)]`
-/

namespace A119315.P8342286643790542504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A119315.P8342286643790542504

noncomputable section

/-- A119315: Numbers with composite numbers as third divisors.

Offset 1, canonical program `A119315.P8342286643790542504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6698 terms. -/
def A119315 (n : ℕ) : ℤ :=
  A119315.P8342286643790542504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6698 terms. -/
def A119315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119316.P5178070184389265738

`comp[A119315(1+n)-1]+1`
-/

namespace A119316.P5178070184389265738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A119316.P5178070184389265738

noncomputable section

/-- A119316: Noncomposites and numbers whose 3rd smallest divisor is prime; complement of A119315.

Offset 1, canonical program `A119316.P5178070184389265738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119316 (n : ℕ) : ℤ :=
  (A119316.P5178070184389265738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119847.P2369807592707394206

`∪[A119899(n+1), A120944(n+1)]`
-/

namespace A119847.P2369807592707394206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119847.P2369807592707394206

noncomputable section

/-- A119847: Positions where A119842 is zero.

Offset 1, canonical program `A119847.P2369807592707394206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6677 terms. -/
def A119847 (n : ℕ) : ℤ :=
  (A119847.P2369807592707394206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6677 terms. -/
def A119847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124142.P456419393323048793

`filter[A065496(n+1), A294936(#)]`
-/

namespace A124142.P456419393323048793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A124142.P456419393323048793

noncomputable section

/-- A124142: Abundant numbers k such that sigma(k) is a perfect power.

Offset 1, canonical program `A124142.P456419393323048793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A124142 (n : ℕ) : ℤ :=
  A124142.P456419393323048793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A124142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126849.P1581470286607456166

`A366990(1+n)+A057428(n)`
-/

namespace A126849.P1581470286607456166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (1 + n) + A057428 n

end

end A126849.P1581470286607456166

noncomputable section

/-- A126849: Sum over the divisors d of n constrained to cases where all exponents of the prime factorization of d are prime.

Offset 1, canonical program `A126849.P1581470286607456166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126849 (n : ℕ) : ℤ :=
  A126849.P1581470286607456166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128216.P10421157790534195060

`a(n-1)+a(A057237(n))` with `a(0)=1, a(1)=1`
-/

namespace A128216.P10421157790534195060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A057237 n).toNat

end

end A128216.P10421157790534195060

noncomputable section

/-- A128216: a(1)=a(2)=1. a(n+1) = a(n) + a(smallest prime dividing n).

Offset 1, canonical program `A128216.P10421157790534195060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2237 terms. -/
def A128216 (n : ℕ) : ℤ :=
  (A128216.P10421157790534195060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2237 terms. -/
def A128216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130897.P4414594187265955759

`eq[3, A096309(n+1)]+1`
-/

namespace A130897.P4414594187265955759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130897.P4414594187265955759

noncomputable section

/-- A130897: Numbers that are not exponentially squarefree.

Offset 1, canonical program `A130897.P4414594187265955759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A130897 (n : ℕ) : ℤ :=
  (A130897.P4414594187265955759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A130897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132349.P7980671611498676239

`A052409(n+1)*A075802(n+1)`
-/

namespace A132349.P7980671611498676239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A075802 (n + 1)

end

end A132349.P7980671611498676239

noncomputable section

/-- A132349: If n is a k-th power with k >= 2 then a(n) = k, otherwise a(n) = 0.

Offset 1, canonical program `A132349.P7980671611498676239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132349 (n : ℕ) : ℤ :=
  A132349.P7980671611498676239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132351.P15635442049154509357

`1-A072292(n+1)+n`
-/

namespace A132351.P15635442049154509357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072292 (n + 1) + (n : ℤ)

end

end A132351.P15635442049154509357

noncomputable section

/-- A132351: Partial sums of A132350.

Offset 1, canonical program `A132351.P15635442049154509357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132351 (n : ℕ) : ℤ :=
  A132351.P15635442049154509357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132352.P8218427062181751816

`∑[A132351(1+n)]`
-/

namespace A132352.P8218427062181751816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P8218427062181751816

noncomputable section

/-- A132352: Partial sums of A132351.

Offset 1, canonical program `A132352.P8218427062181751816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132352 (n : ℕ) : ℤ :=
  A132352.P8218427062181751816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133008.P17546848740536415072

`A328311(A100587(1+n)+6)`
-/

namespace A133008.P17546848740536415072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (A100587 (1 + n) + 6).toNat

end

end A133008.P17546848740536415072

noncomputable section

/-- A133008: The defining property of the sequences {A, B} = {A000028, A000379} is that they are the unique pair of sets complementary with respect to the positive integers such that p(n) = |{x : x, y in A, x < y, xy = n}| = |{x : x, y in B, x < y, xy = n}| for all n >= 1. The present sequence gives the values of p(n).

Offset 1, canonical program `A133008.P17546848740536415072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A133008 (n : ℕ) : ℤ :=
  A133008.P17546848740536415072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A133008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138109.P5525181734027855008

`filter[A005117(n+1), A353476(#)]`
-/

namespace A138109.P5525181734027855008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A138109.P5525181734027855008

noncomputable section

/-- A138109: Positive integers k whose smallest prime factor is greater than the cube root of k and strictly less than the square root of k.

Offset 1, canonical program `A138109.P5525181734027855008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3969 terms. -/
def A138109 (n : ℕ) : ℤ :=
  A138109.P5525181734027855008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3969 terms. -/
def A138109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138511.P5483489551862132602

`filter[A001358(n+3), A353475(#)]`
-/

namespace A138511.P5483489551862132602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A138511.P5483489551862132602

noncomputable section

/-- A138511: Semiprimes where the larger prime factor is greater than the square of the smaller prime factor, short: semiprimes p*q, p^2 < q.

Offset 1, canonical program `A138511.P5483489551862132602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138511 (n : ℕ) : ℤ :=
  A138511.P5483489551862132602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143151.P15041468742573883089

`A107286(A134575(n+1))`
-/

namespace A143151.P15041468742573883089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A134575 (n + 1)).toNat

end

end A143151.P15041468742573883089

noncomputable section

/-- A143151: Triangle read by rows, A051731 * (A020639 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143151.P15041468742573883089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143151 (n : ℕ) : ℤ :=
  A143151.P15041468742573883089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143153.P7724088284005228171

`A054525(n+1)*A143151(n+1)`
-/

namespace A143153.P7724088284005228171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A143151 (n + 1)

end

end A143153.P7724088284005228171

noncomputable section

/-- A143153: Triangle read by rows, A054525 * (A020639 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143153.P7724088284005228171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143153 (n : ℕ) : ℤ :=
  A143153.P7724088284005228171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A143153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144585.P8698217019135747771

`eq[1, A107393(A001414(n+1))]+1`
-/

namespace A144585.P8698217019135747771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144585.P8698217019135747771

noncomputable section

/-- A144585: Composites whose sum of prime factors is an odd nonprime (counted with multiplicity).

Offset 1, canonical program `A144585.P8698217019135747771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144585 (n : ℕ) : ℤ :=
  (A144585.P8698217019135747771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144586.P3068886127736935120

`A001414(A144585(1+n))`
-/

namespace A144586.P3068886127736935120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A144585 (1 + n)).toNat

end

end A144586.P3068886127736935120

noncomputable section

/-- A144586: a(n) = odd and nonprime sum (with multiplicity) of prime factors of composite(k) = A002808(k).

Offset 1, canonical program `A144586.P3068886127736935120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144586 (n : ℕ) : ℤ :=
  A144586.P3068886127736935120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144976.P14905662630367446898

`filter[A336064(1+n), A087049(#)]`
-/

namespace A144976.P14905662630367446898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A144976.P14905662630367446898

noncomputable section

/-- A144976: Nonsquarefree numbers k such that k is divisible by the maximal exponent in the prime factorization of k.

Offset 1, canonical program `A144976.P14905662630367446898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A144976 (n : ℕ) : ℤ :=
  A144976.P14905662630367446898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. -/
def A144976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174648.P16386793887828694393

`∑[A000452(1+n)]`
-/

namespace A174648.P16386793887828694393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P16386793887828694393

noncomputable section

/-- A174648: Partial sums of A000452.

Offset 1, canonical program `A174648.P16386793887828694393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174648 (n : ℕ) : ℤ :=
  A174648.P16386793887828694393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175066.P16255213036961017544

`A259362(A117453(n+1))`
-/

namespace A175066.P16255213036961017544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (A117453 (n + 1)).toNat

end

end A175066.P16255213036961017544

noncomputable section

/-- A175066: a(1) = 1, for n >= 2: a(n) = number of ways h to write perfect powers A117453(n) as m^k (m >= 2, k >= 2).

Offset 1, canonical program `A175066.P16255213036961017544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117453, A259362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175066 (n : ℕ) : ℤ :=
  A175066.P16255213036961017544.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117453, A259362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175067.P12227961381507024235

`∑{d}[A253641(n+1), A052410(n+1)^#]`
-/

namespace A175067.P12227961381507024235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A052410 (n + 1) ^ d

end

end A175067.P12227961381507024235

noncomputable section

/-- A175067: a(n) is the sum of perfect divisors of n, where a perfect divisor of n is a divisor d such that d^k = n for some k >= 1.

Offset 1, canonical program `A175067.P12227961381507024235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052410, A253641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175067 (n : ℕ) : ℤ :=
  A175067.P12227961381507024235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052410, A253641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175068.P9930618200027696907

`(n+1)^(A346403(n+1)/A253641(n+1))`
-/

namespace A175068.P9930618200027696907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A346403 (n + 1) : ℚ) / (A253641 (n + 1) : ℚ) : ℝ)

end

end A175068.P9930618200027696907

noncomputable section

/-- A175068: a(n) = product of perfect divisors of n.

Offset 1, canonical program `A175068.P9930618200027696907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, A346403, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175068.P9930618200027696907.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, A346403, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175069.P11883358524687980575

`A175068(n+1)/(n+1)`
-/

namespace A175069.P11883358524687980575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175068 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A175069.P11883358524687980575

noncomputable section

/-- A175069: a(n) = product of perfect divisors of n / n.

Offset 1, canonical program `A175069.P11883358524687980575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175069.P11883358524687980575.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175070.P7756901965004855871

`A175067(n+1)-(n+1)`
-/

namespace A175070.P7756901965004855871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175067 (n + 1) - (n + 1 : ℤ)

end

end A175070.P7756901965004855871

noncomputable section

/-- A175070: a(n) is the sum of perfect divisors of n - n, where a perfect divisor of n is a divisor d such that d^k = n for some k >= 1.

Offset 1, canonical program `A175070.P7756901965004855871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175070 (n : ℕ) : ℤ :=
  A175070.P7756901965004855871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175085.P5076619536702025421

`eq[0, A175087(n+1)]+1`
-/

namespace A175085.P5076619536702025421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175085.P5076619536702025421

noncomputable section

/-- A175085: Numbers m such that product of perfect divisors of x = m has no solution.

Offset 1, canonical program `A175085.P5076619536702025421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A175085 (n : ℕ) : ℤ :=
  (A175085.P5076619536702025421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A175085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175781.P3395625929835666286

`(n+1)^(1/A020639(A253641(n+1)))`
-/

namespace A175781.P3395625929835666286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A020639 (A253641 (n + 1)).toNat : ℚ) : ℝ)

end

end A175781.P3395625929835666286

noncomputable section

/-- A175781: a(n) = n^(1/k) with the smallest k>1 such that n is a k-th power, taking k=1 if no such k>1 exists.

Offset 1, canonical program `A175781.P3395625929835666286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175781.P3395625929835666286.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176255.P5583549359370218633

`filter[4*n+3, A353492(#)]`
-/

namespace A176255.P5583549359370218633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j) = 1) n)

end

end A176255.P5583549359370218633

noncomputable section

/-- A176255: Numbers of the form 4k-1 with least prime divisor of the form 4m+1.

Offset 1, canonical program `A176255.P5583549359370218633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4145 terms. -/
def A176255 (n : ℕ) : ℤ :=
  (A176255.P5583549359370218633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4145 terms. -/
def A176255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176256.P9184207868029329291

`filter[4*n+1, A353492(#)]`
-/

namespace A176256.P9184207868029329291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j) = 1) n)

end

end A176256.P9184207868029329291

noncomputable section

/-- A176256: Numbers of the form 4k+1 with least prime divisor of the form 4m-1.

Offset 1, canonical program `A176256.P9184207868029329291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176256 (n : ℕ) : ℤ :=
  (A176256.P9184207868029329291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178645.P12647911113547449989

`A000203(n+1)-A175067(n+1)`
-/

namespace A178645.P12647911113547449989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A175067 (n + 1)

end

end A178645.P12647911113547449989

noncomputable section

/-- A178645: a(n) = sum of divisors d of n such that d^k is not equal to n for any k >= 1.

Offset 1, canonical program `A178645.P12647911113547449989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178645 (n : ℕ) : ℤ :=
  A178645.P12647911113547449989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178645.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178646.P15418868558420132707

`A007955(n+1)/A175068(n+1)`
-/

namespace A178646.P15418868558420132707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A175068 (n + 1) : ℚ)

end

end A178646.P15418868558420132707

noncomputable section

/-- A178646: a(n) = product of divisors d of n such that d^k is not equal to n for any k >= 1.

Offset 1, canonical program `A178646.P15418868558420132707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178646.P15418868558420132707.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178646.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180642.P3581255017552360939

`eq[3, A329378(A000010(C(2, n²)+n))]`
-/

namespace A180642.P3581255017552360939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A000010 (Nat.choose 2 (n ^ 2) + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180642.P3581255017552360939

noncomputable section

/-- A180642: Numbers k such that phi(k)/4 is a prime, where phi is the Euler totient function.

Offset 1, canonical program `A180642.P3581255017552360939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A180642 (n : ℕ) : ℤ :=
  (A180642.P3581255017552360939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 743 terms. -/
def A180642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183096.P3962787682876171308

`A000005(n+1)-A091050(n+1)`
-/

namespace A183096.P3962787682876171308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A091050 (n + 1)

end

end A183096.P3962787682876171308

noncomputable section

/-- A183096: a(n) = number of divisors of n that are not perfect powers.

Offset 1, canonical program `A183096.P3962787682876171308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183096 (n : ℕ) : ℤ :=
  A183096.P3962787682876171308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183101.P16697134400805324664

`A000203(n+1)-A091051(n+1)`
-/

namespace A183101.P16697134400805324664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A091051 (n + 1)

end

end A183101.P16697134400805324664

noncomputable section

/-- A183101: a(n) = sum of divisors of n that are not perfect powers.

Offset 1, canonical program `A183101.P16697134400805324664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183101 (n : ℕ) : ℤ :=
  A183101.P16697134400805324664.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188654.P3123932036207611583

`comp[A212166(1+n)-1]+1`
-/

namespace A188654.P3123932036207611583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188654.P3123932036207611583

noncomputable section

/-- A188654: Numbers k such that the maximum exponent in its prime factorization does not equal the number of positive exponents (A051903(k) <> A001221(k)).

Offset 1, canonical program `A188654.P3123932036207611583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188654 (n : ℕ) : ℤ :=
  (A188654.P3123932036207611583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192330.P6299987223408556300

`(n*A006022(n+1))%(n+1)+1`
-/

namespace A192330.P6299987223408556300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A006022 (n + 1)) (n + 1 : ℤ) + 1

end

end A192330.P6299987223408556300

noncomputable section

/-- A192330: Minimum number of endpoints of a tree so that there exists a zero-entropy map defined on it having a period n orbit.

Offset 1, canonical program `A192330.P6299987223408556300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192330 (n : ℕ) : ℤ :=
  A192330.P6299987223408556300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214723.P4938137619403760940

`eq[1, A045698(n)]`
-/

namespace A214723.P4938137619403760940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214723.P4938137619403760940

noncomputable section

/-- A214723: Numbers of the form p^2 + q^2, with p and q prime, in exactly one way.

Offset 1, canonical program `A214723.P4938137619403760940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A214723 (n : ℕ) : ℤ :=
  (A214723.P4938137619403760940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A214723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214879.P11833967726493139545

`eq[0, A045698(n)]`
-/

namespace A214879.P11833967726493139545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214879.P11833967726493139545

noncomputable section

/-- A214879: Numbers that cannot be written as sum of the squares of two primes.

Offset 1, canonical program `A214879.P11833967726493139545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9775 terms. -/
def A214879 (n : ℕ) : ℤ :=
  (A214879.P11833967726493139545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9775 terms. -/
def A214879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214892.P10773792898941841720

`A117818(a(n-1)+a(n-2))` with `a(0)=4, a(1)=1`
-/

namespace A214892.P10773792898941841720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  A117818 (a (n - 1) + a (n - 2)).toNat

end

end A214892.P10773792898941841720

noncomputable section

/-- A214892: Conway's subprime Fibonacci sequence starting with (4,1).

Offset 1, canonical program `A214892.P10773792898941841720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214892 (n : ℕ) : ℤ :=
  A214892.P10773792898941841720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214918.P5379693420632561532

`A075861(or(n, C(3, n²))+3)-1`
-/

namespace A214918.P5379693420632561532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (Nat.lor n (Nat.choose 3 (n ^ 2)) + 3) - 1

end

end A214918.P5379693420632561532

noncomputable section

/-- A214918: a(n) is the least m > 0 such that Fibonacci(n-m) divides Fibonacci(n+2+m).

Offset 2, canonical program `A214918.P5379693420632561532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A214918 (n : ℕ) : ℤ :=
  A214918.P5379693420632561532.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A214918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215113.P14181981593965733608

`A001221(A214723(n+1))`
-/

namespace A215113.P14181981593965733608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A214723 (n + 1)).toNat

end

end A215113.P14181981593965733608

noncomputable section

/-- A215113: a(n) is the number of different prime divisors of A214723(n).

Offset 1, canonical program `A215113.P14181981593965733608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215113 (n : ℕ) : ℤ :=
  A215113.P14181981593965733608.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A215113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220096.P947169083049814736

`min(A117818(n+1), n)`
-/

namespace A220096.P947169083049814736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A117818 (n + 1)) (n : ℤ)

end

end A220096.P947169083049814736

noncomputable section

/-- A220096: a(1)=0, n-1 if n is prime, else largest proper divisor of n.

Offset 1, canonical program `A220096.P947169083049814736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220096 (n : ℕ) : ℤ :=
  A220096.P947169083049814736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221048.P1295286946370857410

`filter[A068919(n+1), A353676(#)]`
-/

namespace A221048.P1295286946370857410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A221048.P1295286946370857410

noncomputable section

/-- A221048: The odd semiprime numbers (A046315) which are orders of a non-Abelian group.

Offset 1, canonical program `A221048.P1295286946370857410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A221048 (n : ℕ) : ℤ :=
  A221048.P1295286946370857410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A221048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227154.P17057399509953880083

`A324655(A351576(n))`
-/

namespace A227154.P17057399509953880083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324655 (A351576 n).toNat

end

end A227154.P17057399509953880083

noncomputable section

/-- A227154: Product of digits+1 of n in factorial base.

Offset 0, canonical program `A227154.P17057399509953880083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A227154 (n : ℕ) : ℤ :=
  A227154.P17057399509953880083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A227154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228019.P10733559880381365569

`lt[A055671(n), A107393(A007953(n))]`
-/

namespace A228019.P10733559880381365569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228019.P10733559880381365569

noncomputable section

/-- A228019: Composite numbers whose sum of digits is a composite number.

Offset 1, canonical program `A228019.P10733559880381365569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6346 terms. -/
def A228019 (n : ℕ) : ℤ :=
  (A228019.P10733559880381365569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6346 terms. -/
def A228019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235473.P1849628016457974693

`p?[A001489(n)*A107393(A023717(n))]`
-/

namespace A235473.P1849628016457974693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A107393 (A023717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235473.P1849628016457974693

noncomputable section

/-- A235473: Primes whose base-3 representation is also the base-4 representation of a prime.

Offset 1, canonical program `A235473.P1849628016457974693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A235473 (n : ℕ) : ℤ :=
  A235473.P1849628016457974693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A235473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242034.P4270946294743915057

`A020639(A243937(n+1)-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A242034.P4270946294743915057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243937 (n + 1) - 3).toNat

end

end A242034.P4270946294743915057

noncomputable section

/-- A242034: a(n) = lpf(A243937(n)-3), where lpf = least prime factor (A020639).

Offset 1, canonical program `A242034.P4270946294743915057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A243937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A242034 (n : ℕ) : ℤ :=
  A242034.P4270946294743915057.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A243937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A242034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244416.P2063470347313486069

`6^A244417(n+1)`
-/

namespace A244416.P2063470347313486069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A244417 (n + 1) : ℤ)

end

end A244416.P2063470347313486069

noncomputable section

/-- A244416: 6-adic value of 1/n for n >= 1.

Offset 1, canonical program `A244416.P2063470347313486069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244417, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244416 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244416.P2063470347313486069.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244417, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244416.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251728.P15846215632140144694

`∪[A138109(n+1), A033476(n)]`
-/

namespace A251728.P15846215632140144694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P15846215632140144694

noncomputable section

/-- A251728: Semiprimes p*q for which p <= q < p^2.

Offset 1, canonical program `A251728.P15846215632140144694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251728 (n : ℕ) : ℤ :=
  (A251728.P15846215632140144694.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257079.P14742875292289428210

`A329028(A351576(n))`
-/

namespace A257079.P14742875292289428210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 (A351576 n).toNat

end

end A257079.P14742875292289428210

noncomputable section

/-- A257079: The least nonzero digit missing from the factorial representation (A007623) of n.

Offset 0, canonical program `A257079.P14742875292289428210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6024 terms. -/
def A257079 (n : ℕ) : ℤ :=
  A257079.P14742875292289428210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6024 terms. -/
def A257079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257080.P14476035461637268388

`n*A257079(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257080.P14476035461637268388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257079 n

end

end A257080.P14476035461637268388

noncomputable section

/-- A257080: n multiplied by the least nonzero digit missing from its factorial base representation: a(n) = n * A257079(n).

Offset 0, canonical program `A257080.P14476035461637268388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257080 (n : ℕ) : ℤ :=
  A257080.P14476035461637268388.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257263.P12764111855714298420

`eq[3, A257079(n)]`
-/

namespace A257263.P12764111855714298420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257263.P12764111855714298420

noncomputable section

/-- A257263: Numbers such that the least missing nonzero digit (A257079) in their factorial base representation is 3.

Offset 1, canonical program `A257263.P12764111855714298420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3144 terms. -/
def A257263 (n : ℕ) : ℤ :=
  (A257263.P12764111855714298420.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3144 terms. -/
def A257263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257695.P4061949862018104932

`A329378(A275735(n))`
-/

namespace A257695.P4061949862018104932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A275735 n).toNat

end

end A257695.P4061949862018104932

noncomputable section

/-- A257695: a(0) = 1; for n >= 1, a(n) = lcm(A060130(n), a(A257684(n))).

Offset 0, canonical program `A257695.P4061949862018104932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257695 (n : ℕ) : ℤ :=
  A257695.P4061949862018104932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261969.P5982450597750301384

`A078615(n+1)/gcd(A078615(n+1), A304768(n+1))`
-/

namespace A261969.P5982450597750301384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (Int.gcd (A078615 (n + 1)) (A304768 (n + 1)) : ℚ)

end

end A261969.P5982450597750301384

noncomputable section

/-- A261969: Product of primes dividing n with maximum multiplicity.

Offset 1, canonical program `A261969.P5982450597750301384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261969.P5982450597750301384.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265693.P18424975977365355978

`∩[A000469(n+1), A063763(n+1)]`
-/

namespace A265693.P18424975977365355978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P18424975977365355978

noncomputable section

/-- A265693: Squarefree composites that are not sqrt(n)-smooth: some prime factor of n is > sqrt(n).

Offset 1, canonical program `A265693.P18424975977365355978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6709 terms. -/
def A265693 (n : ℕ) : ℤ :=
  (A265693.P18424975977365355978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6709 terms. -/
def A265693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272601.P14946449839540770670

`lt[char[A272600(n+1)], A107393(n)]`
-/

namespace A272601.P14946449839540770670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272600 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A272601.P14946449839540770670

noncomputable section

/-- A272601: Composites n such that p-1 does not divide n-1 for at least one prime divisor of n-1.

Offset 1, canonical program `A272601.P14946449839540770670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8558 terms. -/
def A272601 (n : ℕ) : ℤ :=
  (A272601.P14946449839540770670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8558 terms. -/
def A272601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274437.P16973748106690964927

`lt[A005090(n+1), A005088(n+1)]+1`
-/

namespace A274437.P16973748106690964927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274437.P16973748106690964927

noncomputable section

/-- A274437: Numbers having more distinct prime factors of form 3*k+1 than of the form 3*k+2.

Offset 1, canonical program `A274437.P16973748106690964927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437 (n : ℕ) : ℤ :=
  (A274437.P16973748106690964927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275805.P17663894520156591271

`lt[1, A275811(n)]`
-/

namespace A275805.P17663894520156591271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275805.P17663894520156591271

noncomputable section

/-- A275805: Indices of nonsquarefree terms in A275734; numbers with at least one digit slope (in their factorial base representation) with multiple nonzero digits. (See comments for the exact definition).

Offset 1, canonical program `A275805.P17663894520156591271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275805 (n : ℕ) : ℤ :=
  (A275805.P17663894520156591271.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277334.P12151652814142302309

`∩[A004274(n), A392698(n+1)]`
-/

namespace A277334.P12151652814142302309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277334.P12151652814142302309

noncomputable section

/-- A277334: Numbers n, that apart from 2 are all odd and for which n/(largest prime dividing n) is squarefree.

Offset 1, canonical program `A277334.P12151652814142302309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6655 terms. -/
def A277334 (n : ℕ) : ℤ :=
  (A277334.P12151652814142302309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6655 terms. -/
def A277334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279984.P13864817357871875584

`A132351(A006093(1+n))`
-/

namespace A279984.P13864817357871875584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (A006093 (1 + n)).toNat

end

end A279984.P13864817357871875584

noncomputable section

/-- A279984: Positions of the prime numbers in the sequence of numbers that are not perfect powers (A007916).

Offset 1, canonical program `A279984.P13864817357871875584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A279984 (n : ℕ) : ℤ :=
  A279984.P13864817357871875584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A279984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280818.P7830415766910174682

`A117818(1+4*n)`
-/

namespace A280818.P7830415766910174682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (1 + 4 * n)

end

end A280818.P7830415766910174682

noncomputable section

/-- A280818: a(0)=1; for n > 0, if 4n+1 is prime, then a(n)=4n+1, otherwise a(n)=(4n+1)/LPF(4n+1).

Offset 0, canonical program `A280818.P7830415766910174682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A280818 (n : ℕ) : ℤ :=
  A280818.P7830415766910174682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A280818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284558.P12348885866792014571

`A290104(A382255(n))`
-/

namespace A284558.P12348885866792014571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A382255 n).toNat

end

end A284558.P12348885866792014571

noncomputable section

/-- A284558: Product / LCM of run lengths in binary representation of n: a(n) = A167489(n) / A284559(n).

Offset 0, canonical program `A284558.P12348885866792014571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8874 terms. -/
def A284558 (n : ℕ) : ℤ :=
  A284558.P12348885866792014571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8874 terms. -/
def A284558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284559.P12022845061782467637

`A167489(n)/A284558(n)`
-/

namespace A284559.P12022845061782467637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A284558 n : ℚ)

end

end A284559.P12022845061782467637

noncomputable section

/-- A284559: a(n) = LCM of run lengths in binary representation of n.

Offset 0, canonical program `A284559.P12022845061782467637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167489, A284558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284559 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284559.P12022845061782467637.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167489, A284558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284560.P9504178575682127217

`n+1-A284559(n+1)`
-/

namespace A284560.P9504178575682127217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284559 (n + 1)

end

end A284560.P9504178575682127217

noncomputable section

/-- A284560: a(n) = n minus (LCM of run lengths in binary representation of n) = n - A284559(n).

Offset 1, canonical program `A284560.P9504178575682127217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284560 (n : ℕ) : ℤ :=
  A284560.P9504178575682127217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284562.P871243006331403344

`A227349(n)/A284569(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284562.P871243006331403344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n : ℚ) / (A284569 n : ℚ)

end

end A284562.P871243006331403344

noncomputable section

/-- A284562: Product / LCM of the lengths of 1-runs in binary representation of n: a(n) = A227349(n) / A284569(n).

Offset 0, canonical program `A284562.P871243006331403344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, A284569, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284562.P871243006331403344.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, A284569, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284723.P7103496907226521250

`A355001(2*(n+1))`
-/

namespace A284723.P7103496907226521250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355001 (2 * (n + 1))

end

end A284723.P7103496907226521250

noncomputable section

/-- A284723: Smallest odd prime that is relatively prime to n.

Offset 1, canonical program `A284723.P7103496907226521250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284723 (n : ℕ) : ℤ :=
  A284723.P7103496907226521250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289023.P5183523932945049453

`A132351(A052410(2+n)-1)`
-/

namespace A289023.P5183523932945049453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (A052410 (2 + n) - 1).toNat

end

end A289023.P5183523932945049453

noncomputable section

/-- A289023: Position in the sequence of numbers that are not perfect powers (A007916) of the smallest positive integer x such that for some positive integer y we have n = x^y (A052410).

Offset 2, canonical program `A289023.P5183523932945049453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289023 (n : ℕ) : ℤ :=
  A289023.P5183523932945049453.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297025.P7398456169126617577

`a(A220096(n))+1` with `a(0)=0`
-/

namespace A297025.P7398456169126617577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A220096 n).toNat + 1

end

end A297025.P7398456169126617577

noncomputable section

/-- A297025: Number of iterations of A220096 required to reach 0 starting from n.

Offset 0, canonical program `A297025.P7398456169126617577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297025 (n : ℕ) : ℤ :=
  (A297025.P7398456169126617577.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297038.P15164756210973972455

`A297039(A171397(2+n)-1)`
-/

namespace A297038.P15164756210973972455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297039 (A171397 (2 + n) - 1).toNat

end

end A297038.P15164756210973972455

noncomputable section

/-- A297038: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-10 digits of n; see Comments.

Offset 1, canonical program `A297038.P15164756210973972455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7571 terms. -/
def A297038 (n : ℕ) : ℤ :=
  A297038.P15164756210973972455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7571 terms. -/
def A297038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304326.P17779577186721701607

`∑{d}[n+1, A183096(#)*A271102((n+1)/#)]`
-/

namespace A304326.P17779577186721701607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A183096 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304326.P17779577186721701607

noncomputable section

/-- A304326: Number of ways to write n as a product of a number that is not a perfect power and a squarefree number.

Offset 1, canonical program `A304326.P17779577186721701607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304326 (n : ℕ) : ℤ :=
  A304326.P17779577186721701607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304326.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A304450.P1856426496657703399

`filter[A305634(n+1), A137794(#)]`
-/

namespace A304450.P1856426496657703399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A304450.P1856426496657703399

noncomputable section

/-- A304450: Numbers that are not perfect powers and whose prime factors span an initial interval of prime numbers.

Offset 1, canonical program `A304450.P1856426496657703399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A304450 (n : ℕ) : ℤ :=
  A304450.P1856426496657703399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A304450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304817.P8075664180131459050

`A183096(n+1)+1`
-/

namespace A304817.P8075664180131459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (n + 1) + 1

end

end A304817.P8075664180131459050

noncomputable section

/-- A304817: Number of divisors of n that are either 1 or not a perfect power.

Offset 1, canonical program `A304817.P8075664180131459050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817 (n : ℕ) : ℤ :=
  A304817.P8075664180131459050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318654.P4089455956200200647

`lt[0, A318655(n+2)]+2`
-/

namespace A318654.P4089455956200200647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A318654.P4089455956200200647

noncomputable section

/-- A318654: Positions of even terms in A318649.

Offset 1, canonical program `A318654.P4089455956200200647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654 (n : ℕ) : ℤ :=
  (A318654.P4089455956200200647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322034.P14320398179505959650

`lcm(n+1, A006022(n+1))/(n+1)`
-/

namespace A322034.P14320398179505959650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006022 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A322034.P14320398179505959650

noncomputable section

/-- A322034: Let p1 <= p2 <= ... <= pk be the prime factors of n, with repetition; let s = 1/p1 + 1/(p1*p2) + 1/(p1*p2*p3) + ... + 1/(p1*p2*...*pk); a(n) = numerator of s. a(1)=0 by convention.

Offset 1, canonical program `A322034.P14320398179505959650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322034.P14320398179505959650.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322035.P15196591402432882297

`(n+1)/gcd(n+1, A006022(n+1))`
-/

namespace A322035.P15196591402432882297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A006022 (n + 1)) : ℚ)

end

end A322035.P15196591402432882297

noncomputable section

/-- A322035: Let p1 <= p2 <= ... <= pk be the prime factors of n, with repetition; let s = 1/p1 + 1/(p1*p2) + 1/(p1*p2*p3) + ... + 1/(p1*p2*...*pk); a(n) = denominator of s. a(1)=1 by convention.

Offset 1, canonical program `A322035.P15196591402432882297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322035.P15196591402432882297.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322036.P4333095604752035045

`A322035(n+1)-A322034(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322036.P4333095604752035045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322035 (n + 1) - A322034 (n + 1)

end

end A322036.P4333095604752035045

noncomputable section

/-- A322036: a(n) = A322035(n) - A322034(n).

Offset 1, canonical program `A322036.P4333095604752035045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322034, A322035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322036 (n : ℕ) : ℤ :=
  A322036.P4333095604752035045.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322034, A322035, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327829.P6390908241327507115

`∩[A000469(n+1), A063989(n+1)]`
-/

namespace A327829.P6390908241327507115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327829.P6390908241327507115

noncomputable section

/-- A327829: Squarefree numbers with a prime number of prime factors.

Offset 1, canonical program `A327829.P6390908241327507115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. -/
def A327829 (n : ℕ) : ℤ :=
  (A327829.P6390908241327507115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. -/
def A327829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328234.P5040501548362449687

`eq[1, A342003(n+2)]+2`
-/

namespace A328234.P5040501548362449687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A328234.P5040501548362449687

noncomputable section

/-- A328234: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117) > 1.

Offset 1, canonical program `A328234.P5040501548362449687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328234 (n : ℕ) : ℤ :=
  (A328234.P5040501548362449687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328242.P6055362988896989859

`lt[A328391(n+1), 2]+1`
-/

namespace A328242.P6055362988896989859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328242.P6055362988896989859

noncomputable section

/-- A328242: Numbers k such that A003415(A276086(k)) is a squarefree number, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

Offset 1, canonical program `A328242.P6055362988896989859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A328242 (n : ℕ) : ℤ :=
  (A328242.P6055362988896989859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A328242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328393.P15555907351680932415

`eq[A342003(n+2)², A342003(n+2)]+2`
-/

namespace A328393.P15555907351680932415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A328393.P15555907351680932415

noncomputable section

/-- A328393: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117).

Offset 1, canonical program `A328393.P15555907351680932415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328393 (n : ℕ) : ℤ :=
  (A328393.P15555907351680932415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328616.P17073060535970840511

`A328620(A343045(2*n)-n)`
-/

namespace A328616.P17073060535970840511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A343045 (2 * n) - (n : ℤ)).toNat

end

end A328616.P17073060535970840511

noncomputable section

/-- A328616: Number of digits in primorial base expansion of n that are maximal possible in their positions.

Offset 0, canonical program `A328616.P17073060535970840511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A328616 (n : ℕ) : ℤ :=
  A328616.P17073060535970840511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A328616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333792.P14193995967881955048

`Δ[A333793(A028310(n))]`
-/

namespace A333792.P14193995967881955048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333793 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333792.P14193995967881955048

noncomputable section

/-- A333792: a(1) = 0, then after the first differences of A333793.

Offset 1, canonical program `A333792.P14193995967881955048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333792 (n : ℕ) : ℤ :=
  A333792.P14193995967881955048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334091.P902151648939679673

`A334090(n+1)-A334195(n+1)`
-/

namespace A334091.P902151648939679673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1) - A334195 (n + 1)

end

end A334091.P902151648939679673

noncomputable section

/-- A334091: a(1) = 0, then after the first differences of A329697.

Offset 1, canonical program `A334091.P902151648939679673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334090, A334195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334091 (n : ℕ) : ℤ :=
  A334091.P902151648939679673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334090, A334195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336465.P4910938732238570745

`∑{d}[A261969(A003557(n+1)), (n+1)/#]`
-/

namespace A336465.P4910938732238570745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A003557 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A336465.P4910938732238570745

noncomputable section

/-- A336465: Recursive variant of A057723: If n is cubefree, then a(n) = A057723(n), otherwise a(n) = A007947(n) * a(n/A007947(n)).

Offset 1, canonical program `A336465.P4910938732238570745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336465.P4910938732238570745.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340674.P16491084588076078124

`∩[A062770(n+1), A138302(n+1)]²`
-/

namespace A340674.P16491084588076078124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A340674.P16491084588076078124

noncomputable section

/-- A340674: Numbers of the form s^(2^e), where s is a squarefree number, and e >= 1.

Offset 1, canonical program `A340674.P16491084588076078124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. -/
def A340674 (n : ℕ) : ℤ :=
  (A340674.P16491084588076078124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. -/
def A340674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342188.P9826995653217405819

`∩[A130897(n+1)-1, A130897(n+1)]`
-/

namespace A342188.P9826995653217405819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342188.P9826995653217405819

noncomputable section

/-- A342188: Numbers k such that both k and k+1 are not exponentially squarefree numbers.

Offset 1, canonical program `A342188.P9826995653217405819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A342188 (n : ℕ) : ℤ :=
  (A342188.P9826995653217405819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A342188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343040.P4186367942889894497

`A343044(n)`
-/

namespace A343040.P4186367942889894497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343044 n

end

end A343040.P4186367942889894497

noncomputable section

/-- A343040: Array T(n, k), n, k >= 0, read by antidiagonals; lunar addition table for the factorial base.

Offset 0, canonical program `A343040.P4186367942889894497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A343040 (n : ℕ) : ℤ :=
  A343040.P4186367942889894497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A343040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343041.P9447086693281141270

`A343040(C(a(n-1)+n+1, 2)+n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343041.P9447086693281141270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A343040 (Nat.choose (a (n - 1) + (n : ℤ) + 1).toNat 2 + n)

end

end A343041.P9447086693281141270

noncomputable section

/-- A343041: a(0) = 0 and for any n > 0, a(n) = A343040(a(n-1), n).

Offset 0, canonical program `A343041.P9447086693281141270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343041 (n : ℕ) : ℤ :=
  A343041.P9447086693281141270.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346092.P14453008457804432680

`A108951(n+1)-A346093(n+1)`
-/

namespace A346092.P14453008457804432680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A346093 (n + 1)

end

end A346092.P14453008457804432680

noncomputable section

/-- A346092: a(n) = A276085(A328572(A108951(n))).

Offset 1, canonical program `A346092.P14453008457804432680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A346093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346092 (n : ℕ) : ℤ :=
  A346092.P14453008457804432680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A346093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350070.P8542814483769249495

`Δ[fp[A350076(n+1)]]`
-/

namespace A350070.P8542814483769249495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350076 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A350070.P8542814483769249495

noncomputable section

/-- A350070: a(n) = 1 if the maximal digit in the primorial base expansion of n is greater than or equal to the maximal exponent in the prime factorization of n, otherwise 0.

Offset 1, canonical program `A350070.P8542814483769249495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350070 (n : ℕ) : ℤ :=
  A350070.P8542814483769249495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350075.P6242659287619012558

`eq[0, A350070(n+1)]+1`
-/

namespace A350075.P6242659287619012558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350075.P6242659287619012558

noncomputable section

/-- A350075: Numbers whose maximal digit in their primorial base expansion is less than the maximal exponent in their prime factorization.

Offset 1, canonical program `A350075.P6242659287619012558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A350075 (n : ℕ) : ℤ :=
  (A350075.P6242659287619012558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A350075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351038.P17099847767603051375

`record[(n+2)*A351039(n+2)]`
-/

namespace A351038.P17099847767603051375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A351039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351038.P17099847767603051375

noncomputable section

/-- A351038: Numbers whose maximal digit in their primorial base expansion is not larger than the maximal exponent in their prime factorization.

Offset 1, canonical program `A351038.P17099847767603051375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A351038 (n : ℕ) : ℤ :=
  A351038.P17099847767603051375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A351038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351075.P13599918084151824718

`lt[A351077(n+1), 1]+1`
-/

namespace A351075.P13599918084151824718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351077 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351075.P13599918084151824718

noncomputable section

/-- A351075: Numbers k such that the maximal exponent in the prime factorization of A327860(k) is less than A051903(k), the maximal exponent in the prime factorization of k.

Offset 1, canonical program `A351075.P13599918084151824718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A351075 (n : ℕ) : ℤ :=
  (A351075.P13599918084151824718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A351075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351098.P13285444556191798594

`filter[A013929(n+1), A369637(#)]`
-/

namespace A351098.P13285444556191798594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369637 (f1 j).toNat = 1) n)

end

end A351098.P13285444556191798594

noncomputable section

/-- A351098: Numbers k such that the maximal digit value in primorial base expansion of the arithmetic derivative of k is less than the maximal exponent in the prime factorization of k.

Offset 1, canonical program `A351098.P13285444556191798594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. -/
def A351098 (n : ℕ) : ℤ :=
  A351098.P13285444556191798594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. -/
def A351098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351233.P18320492718568669944

`n-A351234(n)`
-/

namespace A351233.P18320492718568669944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A351234 n

end

end A351233.P18320492718568669944

noncomputable section

/-- A351233: a(n) = A276085(A351231(n)).

Offset 0, canonical program `A351233.P18320492718568669944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351233 (n : ℕ) : ℤ :=
  A351233.P18320492718568669944.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351253.P17457977430019027342

`n-A351254(n)`
-/

namespace A351253.P17457977430019027342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A351254 n

end

end A351253.P17457977430019027342

noncomputable section

/-- A351253: a(n) = A276085(A351251(n)).

Offset 0, canonical program `A351253.P17457977430019027342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351253 (n : ℕ) : ℤ :=
  A351253.P17457977430019027342.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353456.P4877231612894607345

`filter[A381313(1+n), A353628(#)]`
-/

namespace A353456.P4877231612894607345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381313 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A353456.P4877231612894607345

noncomputable section

/-- A353456: Numbers k such that A353627(k) is less than A353628(k).

Offset 1, canonical program `A353456.P4877231612894607345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 786 terms. -/
def A353456 (n : ℕ) : ℤ :=
  A353456.P4877231612894607345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 786 terms. -/
def A353456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353483.P6769065041078207878

`A353482(n+1)*A353492(n+1)`
-/

namespace A353483.P6769065041078207878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (n + 1) * A353492 (n + 1)

end

end A353483.P6769065041078207878

noncomputable section

/-- A353483: a(n) = 1 if n is a squarefree semiprime of the form (4t+3)*(4u+3), otherwise 0.

Offset 1, canonical program `A353483.P6769065041078207878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353482, A353492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353483 (n : ℕ) : ℤ :=
  A353483.P6769065041078207878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353482, A353492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355453.P6932717487351539627

`Δ[fp[A119315(n+1)]]`
-/

namespace A355453.P6932717487351539627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A355453.P6932717487351539627

noncomputable section

/-- A355453: a(n) = 1 if the third smallest divisor of n is not a prime, otherwise 0.

Offset 1, canonical program `A355453.P6932717487351539627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355453 (n : ℕ) : ℤ :=
  A355453.P6932717487351539627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356838.P1755932698928318834

`A020639(A261969(2+n))`
-/

namespace A356838.P1755932698928318834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A261969 (2 + n)).toNat

end

end A356838.P1755932698928318834

noncomputable section

/-- A356838: The smallest of the most common prime factors of n.

Offset 2, canonical program `A356838.P1755932698928318834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A356838 (n : ℕ) : ℤ :=
  A356838.P1755932698928318834.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A356838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356840.P71090366362835746

`A085392(2*A261969(n+2))`
-/

namespace A356840.P71090366362835746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A261969 (n + 2)).toNat

end

end A356840.P71090366362835746

noncomputable section

/-- A356840: Largest most common prime factor of n.

Offset 2, canonical program `A356840.P71090366362835746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A356840 (n : ℕ) : ℤ :=
  A356840.P71090366362835746.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A356840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356862.P5126583695026879254

`eq[1, A001221(A261969(n+1))]+1`
-/

namespace A356862.P5126583695026879254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A261969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356862.P5126583695026879254

noncomputable section

/-- A356862: Numbers with a unique largest prime exponent.

Offset 1, canonical program `A356862.P5126583695026879254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4889 terms. -/
def A356862 (n : ℕ) : ℤ :=
  (A356862.P5126583695026879254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4889 terms. -/
def A356862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360014.P9859742446175900433

`∩[comp[A356862(n+1)], A360015(n+1)]`
-/

namespace A360014.P9859742446175900433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A360014.P9859742446175900433

noncomputable section

/-- A360014: Numbers whose exponent of 2 in their canonical prime factorization is equal to the maximum of the other exponents.

Offset 1, canonical program `A360014.P9859742446175900433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A360014 (n : ℕ) : ℤ :=
  (A360014.P9859742446175900433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A360014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362605.P13958044388673276970

`comp[A356862(n+1)-2]+2`
-/

namespace A362605.P13958044388673276970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A362605.P13958044388673276970

noncomputable section

/-- A362605: Numbers whose prime factorization has more than one mode. Numbers without a unique exponent of maximum frequency in the prime signature.

Offset 1, canonical program `A362605.P13958044388673276970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362605 (n : ℕ) : ℤ :=
  (A362605.P13958044388673276970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362611.P8356585510244448062

`∑{e}[A261969(n+1), #]`
-/

namespace A362611.P8356585510244448062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A362611.P8356585510244448062

noncomputable section

/-- A362611: Number of modes in the prime factorization of n.

Offset 1, canonical program `A362611.P8356585510244448062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362611 (n : ℕ) : ℤ :=
  (A362611.P8356585510244448062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362739.P16135793602072361606

`A004526(A108514(n+3))`
-/

namespace A362739.P16135793602072361606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A108514 (n + 3)).toNat

end

end A362739.P16135793602072361606

noncomputable section

/-- A362739: The smallest integer with three (not necessarily distinct) divisors that add to n.

Offset 3, canonical program `A362739.P16135793602072361606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A362739 (n : ℕ) : ℤ :=
  A362739.P16135793602072361606.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A362739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363127.P3526787464918356969

`∑{p}[n+1, gcd(n, #)]-A362611(n+1)`
-/

namespace A363127.P3526787464918356969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) - A362611 (n + 1)

end

end A363127.P3526787464918356969

noncomputable section

/-- A363127: Number of non-modes in the multiset of prime factors of n.

Offset 1, canonical program `A363127.P3526787464918356969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363127 (n : ℕ) : ℤ :=
  A363127.P3526787464918356969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364160.P3150467090921596090

`record[A285109(n+1)/A261969(n+1)]`
-/

namespace A364160.P3150467090921596090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (A261969 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364160.P3150467090921596090

noncomputable section

/-- A364160: Numbers whose least prime factor has the greatest exponent.

Offset 1, canonical program `A364160.P3150467090921596090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4219 terms. -/
def A364160 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364160.P3150467090921596090.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4219 terms. -/
def A364160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364813.P14630216106928931606

`∏{d}[1+n, A175068(#)]`
-/

namespace A364813.P14630216106928931606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A175068 d

end

end A364813.P14630216106928931606

noncomputable section

/-- A364813: a(n) = Product_{k=2..n} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise ord(n, k) = e where e is such that k^e divides n but k^(e + 1) does not.

Offset 1, canonical program `A364813.P14630216106928931606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A364813 (n : ℕ) : ℤ :=
  A364813.P14630216106928931606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A364813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365708.P3747423489352114083

`C(A057237(n+1), A007913(n+1))+1`
-/

namespace A365708.P3747423489352114083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057237 (n + 1)).toNat (A007913 (n + 1)).toNat + 1

end

end A365708.P3747423489352114083

noncomputable section

/-- A365708: a(n) for n >= 2 is the smallest term of A008578 m dividing n such that n/m is not a square, a(1) = 2.

Offset 1, canonical program `A365708.P3747423489352114083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365708 (n : ℕ) : ℤ :=
  (A365708.P3747423489352114083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366413.P3991422571957207343

`∪[A024556(n+1), A073486(n+1)]`
-/

namespace A366413.P3991422571957207343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P3991422571957207343

noncomputable section

/-- A366413: Squarefree composite k such that the smallest nondivisor prime is less than the greatest prime factor, i.e., A053669(k) < A006530(k).

Offset 1, canonical program `A366413.P3991422571957207343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366413 (n : ℕ) : ℤ :=
  (A366413.P3991422571957207343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367018.P17947161287673502210

`filter[A366413(n+1), A097325(#)]`
-/

namespace A367018.P17947161287673502210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A367018.P17947161287673502210

noncomputable section

/-- A367018: Composite squarefree k that are not divisible by 6.

Offset 1, canonical program `A367018.P17947161287673502210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8979 terms. -/
def A367018 (n : ℕ) : ℤ :=
  A367018.P17947161287673502210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8979 terms. -/
def A367018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367168.P4194664077427569742

`A367514(n+1)/A368167(A367514(n+1))`
-/

namespace A367168.P4194664077427569742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367514 (n + 1) : ℚ) / (A368167 (A367514 (n + 1)).toNat : ℚ)

end

end A367168.P4194664077427569742

noncomputable section

/-- A367168: The largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A367168.P4194664077427569742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367168 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367168.P4194664077427569742.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367169.P16284324643910890837

`A001222(A367168(n+1))`
-/

namespace A367169.P16284324643910890837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A367168 (n + 1)).toNat

end

end A367169.P16284324643910890837

noncomputable section

/-- A367169: a(n) is the sum of the exponents in the prime factorization of n that are powers of 2.

Offset 1, canonical program `A367169.P16284324643910890837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367169 (n : ℕ) : ℤ :=
  A367169.P16284324643910890837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367170.P13045363582687585842

`A000005(A367168(n+1))`
-/

namespace A367170.P13045363582687585842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367168 (n + 1)).toNat

end

end A367170.P13045363582687585842

noncomputable section

/-- A367170: The number of divisors of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A367170.P13045363582687585842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367170 (n : ℕ) : ℤ :=
  A367170.P13045363582687585842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367171.P11720372722595894882

`A000203(A367168(n+1))`
-/

namespace A367171.P11720372722595894882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A367168 (n + 1)).toNat

end

end A367171.P11720372722595894882

noncomputable section

/-- A367171: The sum of divisors of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A367171.P11720372722595894882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367171 (n : ℕ) : ℤ :=
  A367171.P11720372722595894882.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367513.P12676645550060478141

`(n+1)/A367514(n+1)`
-/

namespace A367513.P12676645550060478141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367514 (n + 1) : ℚ)

end

end A367513.P12676645550060478141

noncomputable section

/-- A367513: The exponentially evil part of n: the largest unitary divisor of n that is an exponentially evil number (A262675).

Offset 1, canonical program `A367513.P12676645550060478141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367513 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367513.P12676645550060478141.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368540.P8422773875795684543

`(n+1)/A367168(n+1)`
-/

namespace A368540.P8422773875795684543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367168 (n + 1) : ℚ)

end

end A368540.P8422773875795684543

noncomputable section

/-- A368540: The smallest unitary divisor d of n such that n/d is a term of A138302.

Offset 1, canonical program `A368540.P8422773875795684543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368540.P8422773875795684543.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368647.P6890929061440035933

`A005090(n+1)-A005088(n+1)`
-/

namespace A368647.P6890929061440035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1) - A005088 (n + 1)

end

end A368647.P6890929061440035933

noncomputable section

/-- A368647: The number of distinct primes of the form 3*k+2 dividing n minus the number of distinct primes of the form 3*k+1 dividing n.

Offset 1, canonical program `A368647.P6890929061440035933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647 (n : ℕ) : ℤ :=
  A368647.P6890929061440035933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370078.P13735597541800709398

`A007814(A005361(A367168(n+1)))`
-/

namespace A370078.P13735597541800709398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005361 (A367168 (n + 1)).toNat).toNat

end

end A370078.P13735597541800709398

noncomputable section

/-- A370078: a(n) = log_2(A370077(n)).

Offset 1, canonical program `A370078.P13735597541800709398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370078 (n : ℕ) : ℤ :=
  A370078.P13735597541800709398.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370454.P229202249355754834

`A280363(A394049(1+n))`
-/

namespace A370454.P229202249355754834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280363 (A394049 (1 + n)).toNat

end

end A370454.P229202249355754834

noncomputable section

/-- A370454: a(n) = 1 + ceiling((log q)/(log p)), where p = A020639(s) and q = A119288(s) is the second smallest distinct prime factor of squarefree composite s = A120944(n).

Offset 1, canonical program `A370454.P229202249355754834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A370454 (n : ℕ) : ℤ :=
  A370454.P229202249355754834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A370454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371061.P6701767755374458246

`A117818(a(n-1))+A117818(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A371061.P6701767755374458246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A117818 (a (n - 1)).toNat + A117818 (a (n - 2)).toNat

end

end A371061.P6701767755374458246

noncomputable section

/-- A371061: a(1)=1, a(2)=2; for n > 2, a(n) is the sum of the largest proper divisor of each of the previous two terms, except that the term itself is used if it has no proper divisors > 1.

Offset 1, canonical program `A371061.P6701767755374458246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371061 (n : ℕ) : ℤ :=
  A371061.P6701767755374458246.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373083.P10225410656392332920

`a(n-1)+A117818(n+1)` with `a(0)=1`
-/

namespace A373083.P10225410656392332920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A117818 (n + 1)

end

end A373083.P10225410656392332920

noncomputable section

/-- A373083: a(1) = 1; for n > 1, a(n) = a(n-1) + n if n is prime, else a(n) = a(n-1) + largest divisor of n < n.

Offset 1, canonical program `A373083.P10225410656392332920`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373083 (n : ℕ) : ℤ :=
  A373083.P10225410656392332920.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117818, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373834.P18253367396487661828

`A373851(A276086(n))`
-/

namespace A373834.P18253367396487661828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373851 (A276086 n).toNat

end

end A373834.P18253367396487661828

noncomputable section

/-- A373834: a(n) = 1 if n is a multiple of A276150(n), otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373834.P18253367396487661828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373834 (n : ℕ) : ℤ :=
  A373834.P18253367396487661828.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374459.P4009507028172861266

`A268335(A374460(n+1))`
-/

namespace A374459.P4009507028172861266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (A374460 (n + 1)).toNat

end

end A374459.P4009507028172861266

noncomputable section

/-- A374459: Nonsquarefree exponentially odd numbers.

Offset 1, canonical program `A374459.P4009507028172861266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A374460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374459 (n : ℕ) : ℤ :=
  A374459.P4009507028172861266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A374460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374461.P13245357478168906398

`∩[A374459(n+1)-1, A374459(n+1)]`
-/

namespace A374461.P13245357478168906398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374461.P13245357478168906398

noncomputable section

/-- A374461: Numbers k such that k and k+1 are both nonsquarefree exponentially odd numbers (A374459).

Offset 1, canonical program `A374461.P13245357478168906398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 577 terms. -/
def A374461 (n : ℕ) : ℤ :=
  (A374461.P13245357478168906398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 577 terms. -/
def A374461.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375428.P12692162474110378037

`A000045(A375429(n+1))`
-/

namespace A375428.P12692162474110378037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A375429 (n + 1)).toNat

end

end A375428.P12692162474110378037

noncomputable section

/-- A375428: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375428.P12692162474110378037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375428 (n : ℕ) : ℤ :=
  A375428.P12692162474110378037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375430.P12365232080766673945

`A000045(A375431(n+1))`
-/

namespace A375430.P12365232080766673945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A375431 (n + 1)).toNat

end

end A375430.P12365232080766673945

noncomputable section

/-- A375430: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the dual Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375430.P12365232080766673945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375431, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375430 (n : ℕ) : ℤ :=
  A375430.P12365232080766673945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375431, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375430.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375931.P9740495412486584682

`A261969(n+1)^A051903(n+1)`
-/

namespace A375931.P9740495412486584682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A375931.P9740495412486584682

noncomputable section

/-- A375931: The product of the prime powers in the prime factorization of n that have an exponent that is equal to the maximum exponent in this factorization.

Offset 1, canonical program `A375931.P9740495412486584682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375931.P9740495412486584682.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A375932.P15622445158983307868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375932.P15622445158983307868.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375933.P3247189904836465685

`A051903(A375932(n+1))`
-/

namespace A375933.P3247189904836465685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375932 (n + 1)).toNat

end

end A375933.P3247189904836465685

noncomputable section

/-- A375933: The second-largest exponent in the prime factorization of n, or 0 if it does not exist.

Offset 1, canonical program `A375933.P3247189904836465685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933 (n : ℕ) : ℤ :=
  A375933.P3247189904836465685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376142.P4651582588469908944

`filter[A013929(1+n), A381955(#)]`
-/

namespace A376142.P4651582588469908944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P4651582588469908944

noncomputable section

/-- A376142: Nonsquarefree numbers whose prime factorization has a maximum exponent that is odd.

Offset 1, canonical program `A376142.P4651582588469908944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. -/
def A376142 (n : ℕ) : ℤ :=
  A376142.P4651582588469908944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. -/
def A376142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376250.P16493689991352694122

`filter[A356862(1+n), A355447(#)]`
-/

namespace A376250.P16493689991352694122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A376250.P16493689991352694122

noncomputable section

/-- A376250: Numbers with a unique largest prime exponent (A356862) that are not prime powers (A246655).

Offset 1, canonical program `A376250.P16493689991352694122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7585 terms. -/
def A376250 (n : ℕ) : ℤ :=
  A376250.P16493689991352694122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7585 terms. -/
def A376250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377880.P16509850841699067558

`∪[A000469(n+1), A067259(n+1)]`
-/

namespace A377880.P16509850841699067558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377880.P16509850841699067558

noncomputable section

/-- A377880: Nonprime cubefree numbers.

Offset 1, canonical program `A377880.P16509850841699067558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880 (n : ℕ) : ℤ :=
  (A377880.P16509850841699067558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380539.P4896797955037958579

`A284723((n+1)*A053669(n+1))`
-/

namespace A380539.P4896797955037958579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 ((n + 1 : ℤ) * A053669 (n + 1)).toNat

end

end A380539.P4896797955037958579

noncomputable section

/-- A380539: The second smallest prime not dividing n.

Offset 1, canonical program `A380539.P4896797955037958579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A380539 (n : ℕ) : ℤ :=
  A380539.P4896797955037958579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9239 terms. -/
def A380539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381031.P16437040381512720752

`A380539(n+1)-A053669(n+1)`
-/

namespace A381031.P16437040381512720752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A053669 (n + 1)

end

end A381031.P16437040381512720752

noncomputable section

/-- A381031: The second smallest prime not dividing n minus the smallest prime not dividing n.

Offset 1, canonical program `A381031.P16437040381512720752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381031 (n : ℕ) : ℤ :=
  A381031.P16437040381512720752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381031.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381315.P9914003275205982349

`∩[A375072(n+1), A377844(n+1)]`
-/

namespace A381315.P9914003275205982349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P9914003275205982349

noncomputable section

/-- A381315: Numbers whose prime factorization exponents include exactly one 3 and no exponent greater than 3.

Offset 1, canonical program `A381315.P9914003275205982349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315 (n : ℕ) : ℤ :=
  (A381315.P9914003275205982349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381805.P10094460428697218755

`A053669(n+1)*A380539(n+1)`
-/

namespace A381805.P10094460428697218755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) * A380539 (n + 1)

end

end A381805.P10094460428697218755

noncomputable section

/-- A381805: Smallest composite squarefree number that is coprime to n.

Offset 1, canonical program `A381805.P10094460428697218755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381805 (n : ℕ) : ℤ :=
  A381805.P10094460428697218755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381805.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381885.P9369399217660328766

`A364813(n+1)/(n+1)`
-/

namespace A381885.P9369399217660328766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364813 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A381885.P9369399217660328766

noncomputable section

/-- A381885: a(n) = Product_{k=2..n-1} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise is the exponent of the highest power of k that divides n.

Offset 1, canonical program `A381885.P9369399217660328766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381885.P9369399217660328766.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381950.P2231247661708583555

`filter[A381956(n+1), A379952(#)]`
-/

namespace A381950.P2231247661708583555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A381950.P2231247661708583555

noncomputable section

/-- A381950: Odd numbers whose prime factorization has an even maximum exponent.

Offset 1, canonical program `A381950.P2231247661708583555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. -/
def A381950 (n : ℕ) : ℤ :=
  A381950.P2231247661708583555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. -/
def A381950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381951.P13289787021626920291

`∩[2*n+1, A376142(n+1)]`
-/

namespace A381951.P13289787021626920291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P13289787021626920291

noncomputable section

/-- A381951: Nonsquarefree odd numbers whose prime factorization has an odd maximum exponent.

Offset 1, canonical program `A381951.P13289787021626920291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951 (n : ℕ) : ℤ :=
  (A381951.P13289787021626920291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. -/
def A381951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382248.P16252182916146785325

`A053669(n+1)²*A380539(n+1)`
-/

namespace A382248.P16252182916146785325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) ^ 2 * A380539 (n + 1)

end

end A382248.P16252182916146785325

noncomputable section

/-- A382248: Smallest number k that is neither squarefree nor a prime power such that k is coprime to n.

Offset 1, canonical program `A382248.P16252182916146785325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382248 (n : ℕ) : ℤ :=
  A382248.P16252182916146785325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382422.P18312410070460850629

`A005361(A046100(n+1))`
-/

namespace A382422.P18312410070460850629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A046100 (n + 1)).toNat

end

end A382422.P18312410070460850629

noncomputable section

/-- A382422: The product of exponents in the prime factorization of the biquadratefree numbers.

Offset 1, canonical program `A382422.P18312410070460850629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382422 (n : ℕ) : ℤ :=
  A382422.P18312410070460850629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382423.P17194027125548020755

`A369427(A046100(n+1))`
-/

namespace A382423.P17194027125548020755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A046100 (n + 1)).toNat

end

end A382423.P17194027125548020755

noncomputable section

/-- A382423: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 2.

Offset 1, canonical program `A382423.P17194027125548020755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382423 (n : ℕ) : ℤ :=
  A382423.P17194027125548020755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A369427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382424.P3187914924083199922

`A295883(A046100(n+1))`
-/

namespace A382424.P3187914924083199922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A046100 (n + 1)).toNat

end

end A382424.P3187914924083199922

noncomputable section

/-- A382424: The number of exponents in the prime factorization of n-th biquadratefree number that are equal to 3.

Offset 1, canonical program `A382424.P3187914924083199922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A295883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382424 (n : ℕ) : ℤ :=
  A382424.P3187914924083199922.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A295883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382424.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A382767.P10631565317465453526

`A381805(n+1)²`
-/

namespace A382767.P10631565317465453526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381805 (n + 1) ^ 2

end

end A382767.P10631565317465453526

noncomputable section

/-- A382767: Smallest number k that is powerful but not a prime power that is also coprime to n.

Offset 1, canonical program `A382767.P10631565317465453526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A381805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382767 (n : ℕ) : ℤ :=
  A382767.P10631565317465453526.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A381805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382902.P15410201200105396021

`A007948(A046100(n+1))`
-/

namespace A382902.P15410201200105396021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A046100 (n + 1)).toNat

end

end A382902.P15410201200105396021

noncomputable section

/-- A382902: The largest cubefree divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382902.P15410201200105396021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382902 (n : ℕ) : ℤ :=
  A382902.P15410201200105396021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382903.P2846374962855123125

`A360539(A046100(n+1))`
-/

namespace A382903.P2846374962855123125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A046100 (n + 1)).toNat

end

end A382903.P2846374962855123125

noncomputable section

/-- A382903: The largest cubefree unitary divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382903.P2846374962855123125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903 (n : ℕ) : ℤ :=
  A382903.P2846374962855123125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382904.P15714576197998800300

`A007947(A046100(n+1))`
-/

namespace A382904.P15714576197998800300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A046100 (n + 1)).toNat

end

end A382904.P15714576197998800300

noncomputable section

/-- A382904: The squarefree kernel of the n-th biquadratefree number.

Offset 1, canonical program `A382904.P15714576197998800300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382904 (n : ℕ) : ℤ :=
  A382904.P15714576197998800300.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382905.P13634783915817260642

`A055231(A046100(n+1))`
-/

namespace A382905.P13634783915817260642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A046100 (n + 1)).toNat

end

end A382905.P13634783915817260642

noncomputable section

/-- A382905: The powerfree part of the n-th biquadratefree number.

Offset 1, canonical program `A382905.P13634783915817260642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382905 (n : ℕ) : ℤ :=
  A382905.P13634783915817260642.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382906.P11250018393502254710

`A046100(n+1)/A382905(n+1)`
-/

namespace A382906.P11250018393502254710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046100 (n + 1) : ℚ) / (A382905 (n + 1) : ℚ)

end

end A382906.P11250018393502254710

noncomputable section

/-- A382906: The powerful part of the n-th biquadratefree number.

Offset 1, canonical program `A382906.P11250018393502254710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382906.P11250018393502254710.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382960.P14776670604667794079

`lt[n, A382767(n+1)]+1`
-/

namespace A382960.P14776670604667794079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382960.P14776670604667794079

noncomputable section

/-- A382960: Numbers k such that k < A053669(k)^2 * A380539(k)^2, i.e., k < A382767(k).

Offset 1, canonical program `A382960.P14776670604667794079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A382960 (n : ℕ) : ℤ :=
  (A382960.P14776670604667794079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. -/
def A382960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382966.P5975578079117178061

`A056170(A375072(n+1))`
-/

namespace A382966.P5975578079117178061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A375072 (n + 1)).toNat

end

end A382966.P5975578079117178061

noncomputable section

/-- A382966: The number of non-unitary prime divisors of the n-th biquadratefree number that is not cubefree.

Offset 1, canonical program `A382966.P5975578079117178061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P5975578079117178061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383005.P1801605340694019833

`A007814(A046100(n+1))`
-/

namespace A383005.P1801605340694019833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046100 (n + 1)).toNat

end

end A383005.P1801605340694019833

noncomputable section

/-- A383005: Exponent of the highest power of 2 dividing the n-th biquadratefree number.

Offset 1, canonical program `A383005.P1801605340694019833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383005 (n : ℕ) : ℤ :=
  A383005.P1801605340694019833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384517.P2524242939913956237

`A062770(n+1)²`
-/

namespace A384517.P2524242939913956237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1) ^ 2

end

end A384517.P2524242939913956237

noncomputable section

/-- A384517: Nonsquarefree numbers that are squarefree numbers raised to an even power.

Offset 1, canonical program `A384517.P2524242939913956237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517 (n : ℕ) : ℤ :=
  A384517.P2524242939913956237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385043.P186601321958621791

`A034448(A367168(1+n))`
-/

namespace A385043.P186601321958621791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A367168 (1 + n)).toNat

end

end A385043.P186601321958621791

noncomputable section

/-- A385043: The sum of the unitary divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

Offset 1, canonical program `A385043.P186601321958621791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385043 (n : ℕ) : ℤ :=
  A385043.P186601321958621791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385128.P3222418224828136052

`A000005(n+1)-A385129(n+1)`
-/

namespace A385128.P3222418224828136052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A385129 (n + 1)

end

end A385128.P3222418224828136052

noncomputable section

/-- A385128: The number of divisors of n whose maximum exponent in their prime factorization is even.

Offset 1, canonical program `A385128.P3222418224828136052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385128 (n : ℕ) : ℤ :=
  A385128.P3222418224828136052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385130.P7942154568102987716

`A000203(n+1)-A385131(n+1)`
-/

namespace A385130.P7942154568102987716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A385131 (n + 1)

end

end A385130.P7942154568102987716

noncomputable section

/-- A385130: The sum of divisors of n whose maximum exponent in their prime factorization is even.

Offset 1, canonical program `A385130.P7942154568102987716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385130 (n : ℕ) : ℤ :=
  A385130.P7942154568102987716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385131, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385132.P10498133729348376008

`n+1-A385133(n+1)`
-/

namespace A385132.P10498133729348376008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A385133 (n + 1)

end

end A385132.P10498133729348376008

noncomputable section

/-- A385132: The number of integers k from 1 to n such that gcd(n, k) has an even maximum exponent in its prime factorization.

Offset 1, canonical program `A385132.P10498133729348376008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385132 (n : ℕ) : ℤ :=
  A385132.P10498133729348376008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390128.P1354952752970519433

`filter[A375072(1+n), A389905(#)]`
-/

namespace A390128.P1354952752970519433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390128.P1354952752970519433

noncomputable section

/-- A390128: Biquadratefree numbers that are neither cubefree nor squareful.

Offset 1, canonical program `A390128.P1354952752970519433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128 (n : ℕ) : ℤ :=
  A390128.P1354952752970519433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391497.P15735606706962389679

`∩[A362148(n+1), A375072(n+1)]`
-/

namespace A391497.P15735606706962389679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15735606706962389679

noncomputable section

/-- A391497: Biquadratefree numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A391497.P15735606706962389679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497 (n : ℕ) : ℤ :=
  (A391497.P15735606706962389679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391989.P6110167778232670407

`A049419(A130897(n+1))-A278908(A130897(n+1))`
-/

namespace A391989.P6110167778232670407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A130897 (n + 1)).toNat - A278908 (A130897 (n + 1)).toNat

end

end A391989.P6110167778232670407

noncomputable section

/-- A391989: The difference between the number of exponential divisors and the number of exponential unitary divisors for numbers that are not exponentially squarefree.

Offset 1, canonical program `A391989.P6110167778232670407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A130897, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391989 (n : ℕ) : ℤ :=
  A391989.P6110167778232670407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A130897, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394425.P13849324502405230266

`A049419(A046100(n+1))`
-/

namespace A394425.P13849324502405230266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A046100 (n + 1)).toNat

end

end A394425.P13849324502405230266

noncomputable section

/-- A394425: The number of exponential divisors of the biquadratefree numbers.

Offset 1, canonical program `A394425.P13849324502405230266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394425 (n : ℕ) : ℤ :=
  A394425.P13849324502405230266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A049419, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397739.P2938001874219434296

`record[A007947(A397805(n+1))]`
-/

namespace A397739.P2938001874219434296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A397805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397739.P2938001874219434296

noncomputable section

/-- A397739: Squarefree composite numbers k whose second smallest distinct prime factor is smaller than the square of the least prime factor.

Offset 1, canonical program `A397739.P2938001874219434296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5395 terms. -/
def A397739 (n : ℕ) : ℤ :=
  A397739.P2938001874219434296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5395 terms. -/
def A397739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399125.P422755403670867054

`filter[A048109(n+1), A355453(#)]`
-/

namespace A399125.P422755403670867054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A399125.P422755403670867054

noncomputable section

/-- A399125: Numbers k = rad(k) * lpf(k)^2 such that A008479(k) = 3, where rad = A007947 and lpf(k) is the least prime factor of k.

Offset 1, canonical program `A399125.P422755403670867054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4806 terms. -/
def A399125 (n : ℕ) : ℤ :=
  A399125.P422755403670867054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4806 terms. -/
def A399125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399747.P17310883521128029216

`∑{d}[n+1, #*A075802((n+1)/#)]`
-/

namespace A399747.P17310883521128029216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399747.P17310883521128029216

noncomputable section

/-- A399747: The sum of divisors d of n such that n/d is a perfect power (A001597).

Offset 1, canonical program `A399747.P17310883521128029216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399747 (n : ℕ) : ℤ :=
  A399747.P17310883521128029216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399748.P7728002996692195864

`∑{d}[n+1, A000010(#)*A075802((n+1)/#)]`
-/

namespace A399748.P7728002996692195864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399748.P7728002996692195864

noncomputable section

/-- A399748: The number of integers k from 1 to n such that gcd(n,k) is a perfect power (A001597).

Offset 1, canonical program `A399748.P7728002996692195864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399748 (n : ℕ) : ℤ :=
  A399748.P7728002996692195864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005238.P2704022991964426185

`∪[A075039(n+1), A171666(n+1)]`
-/

namespace A005238.P2704022991964426185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P2704022991964426185

noncomputable section

/-- A005238: Numbers k such that k, k+1 and k+2 have the same number of divisors.

Offset 1, canonical program `A005238.P2704022991964426185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005238 (n : ℕ) : ℤ :=
  (A005238.P2704022991964426185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039006.P15849140365392717620

`∪[A039282(1+n), A000695(n)]`
-/

namespace A039006.P15849140365392717620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039006.P15849140365392717620

noncomputable section

/-- A039006: Numbers whose base-4 representation has the same number of 2's and 3's.

Offset 1, canonical program `A039006.P15849140365392717620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039006 (n : ℕ) : ℤ :=
  (A039006.P15849140365392717620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039561.P14585160453387976353

`∩[A031461(n+1), A039006(n+1)]`
-/

namespace A039561.P14585160453387976353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039561.P14585160453387976353

noncomputable section

/-- A039561: Numbers whose base-4 representation has the number of 0's, 2's and 3's.

Offset 1, canonical program `A039561.P14585160453387976353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. -/
def A039561 (n : ℕ) : ℤ :=
  (A039561.P14585160453387976353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. -/
def A039561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039562.P7996838958471996358

`∩[A039004(n+1), A039006(n+1)]`
-/

namespace A039562.P7996838958471996358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039562.P7996838958471996358

noncomputable section

/-- A039562: Numbers whose base-4 representation has the same number of 1's, 2's and 3's.

Offset 1, canonical program `A039562.P7996838958471996358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A039562 (n : ℕ) : ℤ :=
  (A039562.P7996838958471996358.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A039562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045636.P14380030799499714372

`comp[A214879(n+1)]`
-/

namespace A045636.P14380030799499714372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045636.P14380030799499714372

noncomputable section

/-- A045636: Numbers of the form p^2 + q^2, with p and q primes.

Offset 1, canonical program `A045636.P14380030799499714372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A045636 (n : ℕ) : ℤ :=
  (A045636.P14380030799499714372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A045636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049109.P2295218982082363746

`∏{e}[A005238(1+n), #+1]`
-/

namespace A049109.P2295218982082363746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A049109.P2295218982082363746

noncomputable section

/-- A049109: Number of divisors of A005238(n).

Offset 1, canonical program `A049109.P2295218982082363746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049109 (n : ℕ) : ℤ :=
  (A049109.P2295218982082363746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049113.P626448701058423886

`A049108(n+1)-A049115(n+1)`
-/

namespace A049113.P626448701058423886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1) - A049115 (n + 1)

end

end A049113.P626448701058423886

noncomputable section

/-- A049113: Number of powers of 2 in sequence obtained when phi (A000010) is repeatedly applied to n.

Offset 1, canonical program `A049113.P626448701058423886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049113 (n : ℕ) : ℤ :=
  A049113.P626448701058423886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049355.P5870276504915556013

`∩[A039561(n+1), A039562(n+1)]`
-/

namespace A049355.P5870276504915556013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049355.P5870276504915556013

noncomputable section

/-- A049355: Digitally balanced numbers in base 4: equal numbers of 0's, 1's, ... 3's.

Offset 1, canonical program `A049355.P5870276504915556013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1908 terms. -/
def A049355 (n : ℕ) : ℤ :=
  (A049355.P5870276504915556013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1908 terms. -/
def A049355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060839.P2238475579533239736

`3^A357905(1+n)`
-/

namespace A060839.P2238475579533239736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A357905 (1 + n) : ℤ)

end

end A060839.P2238475579533239736

noncomputable section

/-- A060839: Number of solutions to x^3 == 1 (mod n).

Offset 1, canonical program `A060839.P2238475579533239736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060839.P2238475579533239736.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064634.P10831037946860949548

`eq[A022003(n), A107393(2*n+1)]-n`
-/

namespace A064634.P10831037946860949548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A064634.P10831037946860949548

noncomputable section

/-- A064634: a(0) = 0 and a(n) = Min { i > a(n-1) | A064466(i + 1) - A064466(i) > 2 } for n > 0.

Offset 0, canonical program `A064634.P10831037946860949548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A064634 (n : ℕ) : ℤ :=
  A064634.P10831037946860949548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A064634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065675.P430970865162776291

`A065676(lt[n, xor(n, floor(n/2))])`
-/

namespace A065675.P430970865162776291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065675.P430970865162776291

noncomputable section

/-- A065675: The exponent of 2 in the fractions of the range ]0,1[ Stern-Brocot tree (A007305/A007306) [1/2, 1/3, 2/3, 1/4, 2/5, 3/5, 3/4, 1/5, 2/7, 3/8, 3/7, 4/7, 5/8, 5/7, 4/5, ...].

Offset 1, canonical program `A065675.P430970865162776291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5904 terms. -/
def A065675 (n : ℕ) : ℤ :=
  A065675.P430970865162776291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5904 terms. -/
def A065675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069584.P11049749594909653719

`(a(n-1)+1)*round(acot(A175069(n+1)))` with `a(0)=0`
-/

namespace A069584.P11049749594909653719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * SequenceMachineLib.roundAway (SequenceMachineLib.acot (A175069 (n + 1) : ℝ))

end

end A069584.P11049749594909653719

noncomputable section

/-- A069584: a(n) = n - largest perfect power <= n.

Offset 1, canonical program `A069584.P11049749594909653719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069584 (n : ℕ) : ℤ :=
  A069584.P11049749594909653719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076407.P2859205276228458881

`∑[(n+1)%A175068(n+1)]+1`
-/

namespace A076407.P2859205276228458881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A175068 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A076407.P2859205276228458881

noncomputable section

/-- A076407: Sum of perfect powers <= n.

Offset 1, canonical program `A076407.P2859205276228458881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076407 (n : ℕ) : ℤ :=
  A076407.P2859205276228458881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081676.P13265011736225947459

`n+1-A069584(n+1)`
-/

namespace A081676.P13265011736225947459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A069584 (n + 1)

end

end A081676.P13265011736225947459

noncomputable section

/-- A081676: Largest perfect power <= n.

Offset 1, canonical program `A081676.P13265011736225947459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081676 (n : ℕ) : ℤ :=
  A081676.P13265011736225947459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087397.P4446401010670239055

`A000217(A000040(n+1)-A107393(2*n))`
-/

namespace A087397.P4446401010670239055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1) - A107393 (2 * n)).toNat

end

end A087397.P4446401010670239055

noncomputable section

/-- A087397: Smallest triangular number > 1 and == 1 (mod prime(n)).

Offset 1, canonical program `A087397.P4446401010670239055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. -/
def A087397 (n : ℕ) : ℤ :=
  A087397.P4446401010670239055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. -/
def A087397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087692.P12632502844116438028

`A000010(n+1)/A060839(n+1)`
-/

namespace A087692.P12632502844116438028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ)

end

end A087692.P12632502844116438028

noncomputable section

/-- A087692: Number of cubes in multiplicative group modulo n.

Offset 1, canonical program `A087692.P12632502844116438028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087692 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087692.P12632502844116438028.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087692.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103558.P6644994285575804566

`∩[A001358(n+1), A045636(n+1)]`
-/

namespace A103558.P6644994285575804566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P6644994285575804566

noncomputable section

/-- A103558: Semiprimes of the form p^2 + q^2, where p and q are primes.

Offset 1, canonical program `A103558.P6644994285575804566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A103558 (n : ℕ) : ℤ :=
  (A103558.P6644994285575804566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A103558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103739.P1363158943522959516

`p?[floor(A045636(n+1)/2)]`
-/

namespace A103739.P1363158943522959516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045636 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103739.P1363158943522959516

noncomputable section

/-- A103739: Primes which are half the sum of 2 squares of primes.

Offset 1, canonical program `A103739.P1363158943522959516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103739 (n : ℕ) : ℤ :=
  A103739.P1363158943522959516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113451.P17681202333319035640

`lt[A069584(A001223(n+1)), 1]+1`
-/

namespace A113451.P17681202333319035640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (A001223 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A113451.P17681202333319035640

noncomputable section

/-- A113451: Integers n such that prime(n+1) - prime(n) is a power.

Offset 1, canonical program `A113451.P17681202333319035640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113451 (n : ℕ) : ℤ :=
  (A113451.P17681202333319035640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113472.P1738496529307930139

`A000040(A113451(n+1)+1)-A000040(A113451(n+1))`
-/

namespace A113472.P1738496529307930139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A113451 (n + 1) + 1).toNat - A000040 (A113451 (n + 1)).toNat

end

end A113472.P1738496529307930139

noncomputable section

/-- A113472: If d(n) is the sequence of prime differences prime(n+1) - prime(n), then a(n) is the subsequence of d(n) such that d(n) is a power.

Offset 1, canonical program `A113472.P1738496529307930139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113472 (n : ℕ) : ℤ :=
  A113472.P1738496529307930139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143850.P10151626711273852492

`∩[4*n+5, floor(A045636(n+1)/2)]`
-/

namespace A143850.P10151626711273852492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045636 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143850.P10151626711273852492

noncomputable section

/-- A143850: Numbers of the form (p^2 + q^2)/2, for odd primes p and q.

Offset 1, canonical program `A143850.P10151626711273852492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A143850 (n : ℕ) : ℤ :=
  (A143850.P10151626711273852492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A143850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160498.P18345148161744705762

`∑{d}[n+1, A008683(#)*A060839((n+1)/#)]`
-/

namespace A160498.P18345148161744705762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A060839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160498.P18345148161744705762

noncomputable section

/-- A160498: Number of cubic primitive Dirichlet characters modulo n.

Offset 1, canonical program `A160498.P18345148161744705762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160498 (n : ℕ) : ℤ :=
  A160498.P18345148161744705762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162534.P4700803953881938638

`lt[n%A284559(n)*n, n]`
-/

namespace A162534.P4700803953881938638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A284559 n) * (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162534.P4700803953881938638

noncomputable section

/-- A162534: A positive integer k is included if every length of the runs of 0's and 1's in the binary representation of k divides k.

Offset 1, canonical program `A162534.P4700803953881938638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A162534 (n : ℕ) : ℤ :=
  (A162534.P4700803953881938638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A162534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168512.P1109962715134802185

`∑{d}[1+n, A175067(#)]`
-/

namespace A168512.P1109962715134802185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175067 d

end

end A168512.P1109962715134802185

noncomputable section

/-- A168512: Sum of divisors of n weighted by divisor multiplicity in n.

Offset 1, canonical program `A168512.P1109962715134802185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168512 (n : ℕ) : ℤ :=
  A168512.P1109962715134802185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169834.P3285917251730372984

`A005238(n+1)+1`
-/

namespace A169834.P3285917251730372984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1) + 1

end

end A169834.P3285917251730372984

noncomputable section

/-- A169834: Numbers k such that d(k-1) = d(k) = d(k+1).

Offset 1, canonical program `A169834.P3285917251730372984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005238, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169834 (n : ℕ) : ℤ :=
  A169834.P3285917251730372984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005238, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190911.P4158217265337261049

`A284723(∑[2+n])`
-/

namespace A190911.P4158217265337261049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190911.P4158217265337261049

noncomputable section

/-- A190911: Least number coprime to n and n+3.

Offset 1, canonical program `A190911.P4158217265337261049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A190911 (n : ℕ) : ℤ :=
  A190911.P4158217265337261049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A190911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212794.P14590770388923376269

`A000217(∑[runs[A005078(1+n)]])`
-/

namespace A212794.P14590770388923376269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212794.P14590770388923376269

noncomputable section

/-- A212794: Triangular numbers (A000217) which are also hypotenuse numbers (A009003).

Offset 1, canonical program `A212794.P14590770388923376269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8837 terms. -/
def A212794 (n : ℕ) : ℤ :=
  A212794.P14590770388923376269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8837 terms. -/
def A212794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213852.P8242674248013311441

`(A380539(2*n+3)-1)/2`
-/

namespace A213852.P8242674248013311441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380539 (2 * n + 3) - 1 : ℚ) / 2

end

end A213852.P8242674248013311441

noncomputable section

/-- A213852: Least m>0 such that n+1+m and n-m are relatively prime.

Offset 1, canonical program `A213852.P8242674248013311441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213852 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A213852.P8242674248013311441.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214674.P10113243327007939250

`A371061(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214674.P10113243327007939250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A371061 (n + 1) - a (n - 1)

end

end A214674.P10113243327007939250

noncomputable section

/-- A214674: Conway's subprime Fibonacci sequence.

Offset 1, canonical program `A214674.P10113243327007939250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214674 (n : ℕ) : ℤ :=
  A214674.P10113243327007939250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217717.P9191156139768774741

`p?[A045636(n+1)-1]`
-/

namespace A217717.P9191156139768774741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217717.P9191156139768774741

noncomputable section

/-- A217717: Primes of the form x^2 + y^2 - 1, where x and y are primes.

Offset 1, canonical program `A217717.P9191156139768774741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A217717 (n : ℕ) : ℤ :=
  A217717.P9191156139768774741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A217717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224516.P10263178331303486740

`A002487(A060839(1+n))*A034444(n+1)`
-/

namespace A224516.P10263178331303486740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A060839 (1 + n)).toNat * A034444 (n + 1)

end

end A224516.P10263178331303486740

noncomputable section

/-- A224516: Number of solutions to x^4 - x == 0 (mod n).

Offset 1, canonical program `A224516.P10263178331303486740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224516 (n : ℕ) : ℤ :=
  A224516.P10263178331303486740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227697.P17267057832819534160

`(A143850(n+1)-1)/4`
-/

namespace A227697.P17267057832819534160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143850 (n + 1) - 1 : ℚ) / 4

end

end A227697.P17267057832819534160

noncomputable section

/-- A227697: Numbers of the form ((p^2 + q^2)/2 - 1)/4, where p and q are odd primes.

Offset 1, canonical program `A227697.P17267057832819534160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227697 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227697.P17267057832819534160.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258641.P2809199547941550688

`A103739(n+2)-A103739(n+1)`
-/

namespace A258641.P2809199547941550688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103739 (n + 2) - A103739 (n + 1)

end

end A258641.P2809199547941550688

noncomputable section

/-- A258641: First differences of A103739.

Offset 1, canonical program `A258641.P2809199547941550688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258641 (n : ℕ) : ℤ :=
  A258641.P2809199547941550688.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284721.P10544259295797594701

`A284723(Δ[n²])`
-/

namespace A284721.P10544259295797594701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284721.P10544259295797594701

noncomputable section

/-- A284721: Smallest odd prime that is relatively prime to 2n+1.

Offset 0, canonical program `A284721.P10544259295797594701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284721 (n : ℕ) : ℤ :=
  A284721.P10544259295797594701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284722.P16514806689732026414

`(2*n+1-A284721(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284722.P16514806689732026414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A284721 n : ℚ) / 2

end

end A284722.P16514806689732026414

noncomputable section

/-- A284722: (2n+1-A284721(n))/2.

Offset 0, canonical program `A284722.P16514806689732026414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284721, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284722 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A284722.P16514806689732026414.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284721, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293483.P17008692828281999765

`gcd(A046073(n+1), A087692(n+1))`
-/

namespace A293483.P17008692828281999765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046073 (n + 1)) (A087692 (n + 1))

end

end A293483.P17008692828281999765

noncomputable section

/-- A293483: The number of 6th powers in the multiplicative group modulo n.

Offset 1, canonical program `A293483.P17008692828281999765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293483 (n : ℕ) : ℤ :=
  (A293483.P17008692828281999765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297035.P17351509406979468590

`A297038(A007093(1+n))`
-/

namespace A297035.P17351509406979468590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A007093 (1 + n)).toNat

end

end A297035.P17351509406979468590

noncomputable section

/-- A297035: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-7 digits of n; see Comments.

Offset 1, canonical program `A297035.P17351509406979468590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A297035 (n : ℕ) : ℤ :=
  A297035.P17351509406979468590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A297035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297037.P12483242914640258749

`A297038(A007095(1+n))`
-/

namespace A297037.P12483242914640258749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A007095 (1 + n)).toNat

end

end A297037.P12483242914640258749

noncomputable section

/-- A297037: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-9 digits of n; see Comments.

Offset 1, canonical program `A297037.P12483242914640258749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A297037 (n : ℕ) : ℤ :=
  A297037.P12483242914640258749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A297037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304362.P3395535958297874023

`∑{d}[n+1, A007427(#)*A304817((n+1)/#)]`
-/

namespace A304362.P3395535958297874023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A304817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304362.P3395535958297874023

noncomputable section

/-- A304362: a(n) = Sum_{d|n, d = 1 or not a perfect power} mu(n/d).

Offset 1, canonical program `A304362.P3395535958297874023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304362 (n : ℕ) : ℤ :=
  A304362.P3395535958297874023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304364.P6179740484087995014

`eq[0, A304362(1+n)]+1`
-/

namespace A304364.P6179740484087995014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304364.P6179740484087995014

noncomputable section

/-- A304364: Numbers k such that A304362(k) = Sum_{d|k, d = 1 or not a perfect power} mu(k/d) = 0.

Offset 1, canonical program `A304364.P6179740484087995014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A304364 (n : ℕ) : ℤ :=
  (A304364.P6179740484087995014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A304364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304365.P12944840934423433223

`lt[0, A304362(n+1)²]+1`
-/

namespace A304365.P12944840934423433223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A304365.P12944840934423433223

noncomputable section

/-- A304365: Numbers k such that Sum_{d|k, d = 1 or not a perfect power} mu(k/d) is nonzero.

Offset 1, canonical program `A304365.P12944840934423433223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A304365 (n : ℕ) : ℤ :=
  (A304365.P12944840934423433223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A304365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304649.P2069392600454254021

`∑{d}[n+1, A304362(#)*A304817((n+1)/#)]`
-/

namespace A304649.P2069392600454254021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304362 d * A304817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304649.P2069392600454254021

noncomputable section

/-- A304649: Number of divisors d|n such that neither d nor n/d is a perfect power greater than 1.

Offset 1, canonical program `A304649.P2069392600454254021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304649 (n : ℕ) : ℤ :=
  A304649.P2069392600454254021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319100.P17875270125052409818

`A060594(n+1)*A060839(n+1)`
-/

namespace A319100.P17875270125052409818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) * A060839 (n + 1)

end

end A319100.P17875270125052409818

noncomputable section

/-- A319100: Number of solutions to x^6 == 1 (mod n).

Offset 1, canonical program `A319100.P17875270125052409818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, A060839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319100 (n : ℕ) : ℤ :=
  A319100.P17875270125052409818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, A060839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319838.P13433819613368319778

`eq[1, A277544(A319100(1+n))]+1`
-/

namespace A319838.P13433819613368319778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A319100 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319838.P13433819613368319778

noncomputable section

/-- A319838: Numbers k such that A319100(k) is a power of 6.

Offset 1, canonical program `A319838.P13433819613368319778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A319838 (n : ℕ) : ℤ :=
  (A319838.P13433819613368319778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A319838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328241.P10344479185456080194

`comp[A328242(1+n)]`
-/

namespace A328241.P10344479185456080194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328242 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328241.P10344479185456080194

noncomputable section

/-- A328241: Numbers n for which A327860(n) = A003415(A276086(n)) is not a squarefree number.

Offset 1, canonical program `A328241.P10344479185456080194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328241 (n : ℕ) : ℤ :=
  (A328241.P10344479185456080194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335150.P2848983247666895770

`6*∩[A057128(n+1), A319838(n+2)]`
-/

namespace A335150.P2848983247666895770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335150.P2848983247666895770

noncomputable section

/-- A335150: Perimeters of Heronian triangles whose smallest side length is coprime to their middle side and whose middle side length divides their perimeter.

Offset 1, canonical program `A335150.P2848983247666895770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A335150 (n : ℕ) : ℤ :=
  (A335150.P2848983247666895770.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A335150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343023.P18037542351150786665

`floor(A160498(1+n)/2)`
-/

namespace A343023.P18037542351150786665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160498 (1 + n) : ℚ) / 2⌋

end

end A343023.P18037542351150786665

noncomputable section

/-- A343023: Number of cyclic cubic fields with discriminant n^2.

Offset 1, canonical program `A343023.P18037542351150786665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343023 (n : ℕ) : ℤ :=
  A343023.P18037542351150786665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354270.P15895318213431007145

`∪[A091428(n+1), A397739(n+1)]`
-/

namespace A354270.P15895318213431007145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354270.P15895318213431007145

noncomputable section

/-- A354270: Numbers k such that min{m: A354257(m) = k} = k^2.

Offset 1, canonical program `A354270.P15895318213431007145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354270 (n : ℕ) : ℤ :=
  (A354270.P15895318213431007145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355443.P18129898139029773692

`A353472(n+1)*A355453(n+1)`
-/

namespace A355443.P18129898139029773692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (n + 1) * A355453 (n + 1)

end

end A355443.P18129898139029773692

noncomputable section

/-- A355443: a(n) = 1 if n is of the form p^2 * q where p and q are primes with p^2 < q, otherwise 0.

Offset 1, canonical program `A355443.P18129898139029773692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353472, A355453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355443 (n : ℕ) : ℤ :=
  A355443.P18129898139029773692.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353472, A355453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355444.P1559222761586435397

`A353474(n+1)-A355443(n+1)`
-/

namespace A355444.P1559222761586435397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353474 (n + 1) - A355443 (n + 1)

end

end A355444.P1559222761586435397

noncomputable section

/-- A355444: a(n) = 1 if n is of the form p^2 * q where p and q are primes with p < q < p^2, otherwise 0.

Offset 1, canonical program `A355444.P1559222761586435397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353474, A355443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355444 (n : ℕ) : ℤ :=
  A355444.P1559222761586435397.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353474, A355443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360793.P3059048481711579706

`filter[A391497(n+1), A359466(#)]`
-/

namespace A360793.P3059048481711579706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A360793.P3059048481711579706

noncomputable section

/-- A360793: Numbers of the form m*p^3, where m > 1 is squarefree and prime p does not divide m.

Offset 1, canonical program `A360793.P3059048481711579706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7407 terms. -/
def A360793 (n : ℕ) : ℤ :=
  A360793.P3059048481711579706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7407 terms. -/
def A360793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370077.P3375388874869746190

`2^A370078(n+1)`
-/

namespace A370077.P3375388874869746190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A370078 (n + 1) : ℤ)

end

end A370077.P3375388874869746190

noncomputable section

/-- A370077: The product of exponents of the prime factorization of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A370077.P3375388874869746190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370077 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370077.P3375388874869746190.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375076.P5343439789459528226

`filter[A391497(n+1), A295316(#)]`
-/

namespace A375076.P5343439789459528226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P5343439789459528226

noncomputable section

/-- A375076: Numbers whose prime factorization exponents include at least one 1, at least one 3 and no other exponents.

Offset 1, canonical program `A375076.P5343439789459528226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076 (n : ℕ) : ℤ :=
  A375076.P5343439789459528226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378035.P2873726849471277714

`A081676(∑[A075526(n)])`
-/

namespace A378035.P2873726849471277714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378035.P2873726849471277714

noncomputable section

/-- A378035: Greatest perfect power < prime(n).

Offset 1, canonical program `A378035.P2873726849471277714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A378035 (n : ℕ) : ℤ :=
  A378035.P2873726849471277714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A378035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394735.P16571742548927410350

`A000040(A113451(n+1))`
-/

namespace A394735.P16571742548927410350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A113451 (n + 1)).toNat

end

end A394735.P16571742548927410350

noncomputable section

/-- A394735: Primes prime(k) such that prime(k+1) - prime(k) is a perfect power.

Offset 1, canonical program `A394735.P16571742548927410350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394735 (n : ℕ) : ℤ :=
  A394735.P16571742548927410350.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114127.P15786662732718642431

`filter[A393201(n+1), A293449(#)]`
-/

namespace A114127.P15786662732718642431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114127.P15786662732718642431

noncomputable section

/-- A114127: Numbers that factorize into a prime number of prime factors each raised to a prime exponent.

Offset 1, canonical program `A114127.P15786662732718642431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A114127 (n : ℕ) : ℤ :=
  A114127.P15786662732718642431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A114127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132350.P6308238298466199020

`∑{d}[n+1, A304362(#)]`
-/

namespace A132350.P6308238298466199020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304362 d

end

end A132350.P6308238298466199020

noncomputable section

/-- A132350: If n > 1 is a k-th power with k >= 2 then a(n) = 0, otherwise a(n) = 1.

Offset 1, canonical program `A132350.P6308238298466199020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132350 (n : ℕ) : ℤ :=
  A132350.P6308238298466199020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175785.P6519600176006389600

`eq[16, A319100(A008574(n))]`
-/

namespace A175785.P6519600176006389600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175785.P6519600176006389600

noncomputable section

/-- A175785: Numbers n such that the number of distinct prime divisors of n does not divide phi(n).

Offset 1, canonical program `A175785.P6519600176006389600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A175785 (n : ℕ) : ℤ :=
  (A175785.P6519600176006389600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A175785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179670.P14392537173790149213

`∩[A175742(n+1), A360793(n+1)]`
-/

namespace A179670.P14392537173790149213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P14392537173790149213

noncomputable section

/-- A179670: Numbers of the form p^3*q*r*s where p, q, r, and s are distinct primes.

Offset 1, canonical program `A179670.P14392537173790149213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2098 terms. -/
def A179670 (n : ℕ) : ℤ :=
  (A179670.P14392537173790149213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2098 terms. -/
def A179670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297033.P11360601339505998570

`A297035(A037466(1+n))`
-/

namespace A297033.P11360601339505998570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A037466 (1 + n)).toNat

end

end A297033.P11360601339505998570

noncomputable section

/-- A297033: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-5 digits of n; see Comments.

Offset 1, canonical program `A297033.P11360601339505998570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2654 terms. -/
def A297033 (n : ℕ) : ℤ :=
  A297033.P11360601339505998570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2654 terms. -/
def A297033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297034.P4460935165645759774

`A297035(A020657(2+n))`
-/

namespace A297034.P4460935165645759774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297035 (A020657 (2 + n)).toNat

end

end A297034.P4460935165645759774

noncomputable section

/-- A297034: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-6 digits of n; see Comments.

Offset 1, canonical program `A297034.P4460935165645759774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5440 terms. -/
def A297034 (n : ℕ) : ℤ :=
  A297034.P4460935165645759774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5440 terms. -/
def A297034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307381.P12662117091474292687

`∑{d}[n+1, A008683(#)*A319100((n+1)/#)]`
-/

namespace A307381.P12662117091474292687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A319100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307381.P12662117091474292687

noncomputable section

/-- A307381: Number of sextic primitive Dirichlet characters modulo n.

Offset 1, canonical program `A307381.P12662117091474292687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307381 (n : ℕ) : ℤ :=
  A307381.P12662117091474292687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343001.P12489177049686223465

`lt[1-A343023(n+1), 1]+1`
-/

namespace A343001.P12489177049686223465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A343023 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343001.P12489177049686223465

noncomputable section

/-- A343001: Square roots of discriminants of cyclic cubic fields.

Offset 1, canonical program `A343001.P12489177049686223465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1642 terms. -/
def A343001 (n : ℕ) : ℤ :=
  (A343001.P12489177049686223465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1642 terms. -/
def A343001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343022.P16274586819737777029

`(eq[1, A343023(n+1)]+1)²`
-/

namespace A343022.P16274586819737777029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A343022.P16274586819737777029

noncomputable section

/-- A343022: Discriminants with exactly 1 associated cyclic cubic field.

Offset 1, canonical program `A343022.P16274586819737777029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A343022 (n : ℕ) : ℤ :=
  (A343022.P16274586819737777029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A343022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343025.P7924447335730583010

`filter[A343001(n+1), A354108(#)]`
-/

namespace A343025.P7924447335730583010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A343025.P7924447335730583010

noncomputable section

/-- A343025: Numbers k such that there are at least 2 cyclic cubic fields with discriminant k^2.

Offset 1, canonical program `A343025.P7924447335730583010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1482 terms. -/
def A343025 (n : ℕ) : ℤ :=
  A343025.P7924447335730583010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1482 terms. -/
def A343025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376384.P9934841520496107516

`∪[A000977(n+1), A393201(n+1)]`
-/

namespace A376384.P9934841520496107516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376384.P9934841520496107516

noncomputable section

/-- A376384: Numbers k such that there exists at least two m <= k such that both rad(m) | k and m is neither squarefree nor a prime power, i.e., m is in A126706, where rad = A007947.

Offset 1, canonical program `A376384.P9934841520496107516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376384 (n : ℕ) : ℤ :=
  (A376384.P9934841520496107516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343000.P6825067941272967147

`A343001(n+1)²`
-/

namespace A343000.P6825067941272967147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1) ^ 2

end

end A343000.P6825067941272967147

noncomputable section

/-- A343000: Discriminants of cyclic cubic fields.

Offset 1, canonical program `A343000.P6825067941272967147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343000 (n : ℕ) : ℤ :=
  A343000.P6825067941272967147.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343024.P17053511942246666075

`A343025(n+1)²`
-/

namespace A343024.P17053511942246666075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343025 (n + 1) ^ 2

end

end A343024.P17053511942246666075

noncomputable section

/-- A343024: Discriminants with at least 2 associated cyclic cubic fields.

Offset 1, canonical program `A343024.P17053511942246666075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343024 (n : ℕ) : ℤ :=
  A343024.P17053511942246666075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343024.provenance : SequenceMachineLib.Provenance := .conditional

