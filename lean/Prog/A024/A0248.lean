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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A024800: a(n) = position of 3*(n^2) in A000408.

The programs for A024800, there is no canonical definition to state claims against.
-/

/-! ## A024800.P11500464272412518686

`eq[1, gcd(3, A014465(n+1))]+1`
-/

namespace A024800.P11500464272412518686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A014465 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024800.P11500464272412518686

/-! ## A024800.P16563500962050753907

`A329825(C(A104249(n), A043562(n)))`
-/

namespace A024800.P16563500962050753907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (Nat.choose (A104249 n).toNat (A043562 n).toNat)

end

end A024800.P16563500962050753907

/-! ## A024800.P173991393315543949

`A329825(A227549(n+1)+A143689(n))`
-/

namespace A024800.P173991393315543949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (A227549 (n + 1) + A143689 n).toNat

end

end A024800.P173991393315543949

/-! ## A024800.P8714984419418546516

`∑[∑[A219644(A007088(2*n))]]`
-/

namespace A024800.P8714984419418546516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 (A007088 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024800.P8714984419418546516

/-!
# A024801: Position of n^2 + 5 in A000408.

The programs for A024801, there is no canonical definition to state claims against.
-/

/-! ## A024801.P6254128154054551009

`A305025(A098547(n+1)+1)`
-/

namespace A024801.P6254128154054551009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (A098547 (n + 1) + 1).toNat

end

end A024801.P6254128154054551009

/-! ## A024801.P5868701077153580534

`A305025(A003777(n+1)+3)`
-/

namespace A024801.P5868701077153580534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (A003777 (n + 1) + 3).toNat

end

end A024801.P5868701077153580534

/-! ## A024801.P5285911148117208380

`A239218(∑[∑{d}[n, #]]+1)+A055818(n)`
-/

namespace A024801.P5285911148117208380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239218 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A055818 n

end

end A024801.P5285911148117208380

/-! ## A024801.P11917648209891675674

`A330025(A007719(n))+∑[∑{d}[n, #]]+1`
-/

namespace A024801.P11917648209891675674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A007719 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A024801.P11917648209891675674

/-!
# A024802: a(n) = position of n^2 + (n+1)^2 + (n+2)^2 in A000408.

The programs for A024802, there is no canonical definition to state claims against.
-/

/-! ## A024802.P1697969737316053147

`A261118(A099109(2*n+1))+A143978(2*(n+1))`
-/

namespace A024802.P1697969737316053147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261118 (A099109 (2 * n + 1)).toNat + A143978 (2 * (n + 1))

end

end A024802.P1697969737316053147

/-! ## A024802.P8365386657047154380

`A202304(A241220(n+2))`
-/

namespace A024802.P8365386657047154380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A241220 (n + 2)).toNat

end

end A024802.P8365386657047154380

/-! ## A024802.P7822600978878812055

`A005891(n+1)-A001221(A088009(n+2))`
-/

namespace A024802.P7822600978878812055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 (n + 1) - A001221 (A088009 (n + 2)).toNat

end

end A024802.P7822600978878812055

/-!
# A024803: Numbers that are the sum of 3 distinct nonzero squares, including repetitions.

The programs for A024803, there is no canonical definition to state claims against.
-/

/-! ## A024803.P7635531250507273518

`A004432(n+1)-A326291(A045929(n+1))`
-/

namespace A024803.P7635531250507273518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1) - A326291 (A045929 (n + 1)).toNat

end

end A024803.P7635531250507273518

/-! ## A024803.P18348969188251607679

`lt[0, A025442(n)]-A326291(A045929(n+1))`
-/

namespace A024803.P18348969188251607679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - A326291 (A045929 (n + 1)).toNat

end

end A024803.P18348969188251607679

/-! ## A024803.P14970108869601998206

`A004432(n+1)-A282673(A282664(3*n+2))`
-/

namespace A024803.P14970108869601998206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1) - A282673 (A282664 (3 * n + 2)).toNat

end

end A024803.P14970108869601998206

/-!
# A024804: Numbers that are the sum of 3 distinct nonzero squares in 2 or more ways.

The programs for A024804, there is no canonical definition to state claims against.
-/

/-! ## A024804.P13072930881254490417

`∪[A025340(n+1), A025349(n+1)]`
-/

namespace A024804.P13072930881254490417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024804.P13072930881254490417

/-! ## A024804.P10449161652354882276

`lt[1, A025442(n)]`
-/

namespace A024804.P10449161652354882276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024804.P10449161652354882276

/-! ## A024804.P3732105515665266957

`eq[1, A141044(A025442(n)²)]`
-/

namespace A024804.P3732105515665266957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025442 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P3732105515665266957

/-! ## A024804.P10983804936867013418

`eq[1, A157928(A025442(n)²)]`
-/

namespace A024804.P10983804936867013418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A025442 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P10983804936867013418

/-! ## A024804.P12533798492330410008

`eq[2, A107393(2*A025442(n))]`
-/

namespace A024804.P12533798492330410008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P12533798492330410008

/-! ## A024804.P7337275123894968378

`lt[A025441(n)+1, A025436(n)]`
-/

namespace A024804.P7337275123894968378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024804.P7337275123894968378

/-! ## A024804.P16415693883659789010

`eq[2, A028291(a(A025442(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A024804.P16415693883659789010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A028291 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P16415693883659789010

/-! ## A024804.P12594379843888904886

`eq[1, A005928(a(A025442(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A024804.P12594379843888904886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A005928 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P12594379843888904886

/-! ## A024804.P3414047513000870654

`eq[1, A029337(a(A025442(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A024804.P3414047513000870654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A029337 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P3414047513000870654

/-! ## A024804.P14000477947835501507

`eq[1, A051023(a(A025442(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A024804.P14000477947835501507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A051023 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P14000477947835501507

/-! ## A024804.P5102080922491149753

`eq[1, A078012(a(A025442(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A024804.P5102080922491149753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A078012 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P5102080922491149753

/-! ## A024804.P13517733611578746670

`eq[1, A322217(a(A025442(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A024804.P13517733611578746670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A322217 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P13517733611578746670

/-! ## A024804.P1876474824087094157

`eq[2, A000122(a(A025442(n)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A024804.P1876474824087094157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  A000122 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P1876474824087094157

/-! ## A024804.P6113459920459119054

`eq[1, A325495(a(A025442(n))²)]` with `a(0)=2, a(1)=2`
-/

namespace A024804.P6113459920459119054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A325495 (f2 (A025442 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P6113459920459119054

/-! ## A024804.P7978432476825814449

`eq[1, A072480(a(A025442(n))!)]` with `a(0)=2, a(1)=2`
-/

namespace A024804.P7978432476825814449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A072480 (Nat.factorial (f2 (A025442 n).toNat).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024804.P7978432476825814449

/-! ## A024804.P11645561439268282669

`lt[A025443(n)+1, A025437(n)]`
-/

namespace A024804.P11645561439268282669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024804.P11645561439268282669

/-! ## A024804.P17633851816002425200

`eq[A141044(A025442(n)), A157928(n)]`
-/

namespace A024804.P17633851816002425200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024804.P17633851816002425200

/-! ## A024804.P10756215109385087385

`eq[A000007(n+1), A169585(A025442(n))]`
-/

namespace A024804.P10756215109385087385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024804.P10756215109385087385

/-! ## A024804.P2486071726634577299

`eq[A169585(n+1), A169585(A025442(n))]`
-/

namespace A024804.P2486071726634577299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024804.P2486071726634577299

/-! ## A024804.P1208795603269214511

`eq[A000035(2*n+1), A141044(A025442(n))]`
-/

namespace A024804.P1208795603269214511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024804.P1208795603269214511

/-!
# A024805: Positions of primes in A004432.

The programs for A024805, there is no canonical definition to state claims against.
-/

/-! ## A024805.P7822233478035285671

`eq[2, ∏{e}[comp[A004440(n+1)], #+1]]`
-/

namespace A024805.P7822233478035285671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004440 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024805.P7822233478035285671

/-! ## A024805.P10363631526966749135

`eq[2, A000005(A004432(n+1))]+1`
-/

namespace A024805.P10363631526966749135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004432 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024805.P10363631526966749135

/-! ## A024805.P6379509704937487556

`eq[1, A001065(A004432(n+2))]+2`
-/

namespace A024805.P6379509704937487556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A004432 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024805.P6379509704937487556

/-! ## A024805.P17290529237551240880

`eq[1, A001065(A004432(A028310(n)))]`
-/

namespace A024805.P17290529237551240880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A004432 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024805.P17290529237551240880

/-! ## A024805.P11285139827386084357

`lt[A001065(A004432(n+1)), A000005(n+1)]+1`
-/

namespace A024805.P11285139827386084357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A004432 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024805.P11285139827386084357

/-!
# A024806: Positions of even numbers in A004432.

The programs for A024806, there is no canonical definition to state claims against.
-/

/-! ## A024806.P5671774906265826406

`lt[1, (3*n+1)*(comp[A004440(n+1)]-1)%2]`
-/

namespace A024806.P5671774906265826406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004440 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024806.P5671774906265826406

/-! ## A024806.P7810259742047293350

`eq[2, A020639(A004432(n+1))]+1`
-/

namespace A024806.P7810259742047293350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004432 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024806.P7810259742047293350

/-! ## A024806.P3014721154865836028

`record[A328399(2*n)/A057979(A004432(n+1))]`
-/

namespace A024806.P3014721154865836028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328399 (2 * n) : ℚ) / (A057979 (A004432 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024806.P3014721154865836028

/-! ## A024806.P12090337474506098591

`eq[1, A057979(A004432(n+1))]+A020985(n)²`
-/

namespace A024806.P12090337474506098591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A020985 n ^ 2

end

end A024806.P12090337474506098591

/-! ## A024806.P5976265347822556829

`record[(A005408(n)-n)/A057979(A004432(n+1))]`
-/

namespace A024806.P5976265347822556829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A057979 (A004432 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024806.P5976265347822556829

/-! ## A024806.P2635492063052082614

`A057427(n+1)+eq[1, A057979(A004432(n+1))]`
-/

namespace A024806.P2635492063052082614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A024806.P2635492063052082614

/-! ## A024806.P3140925859417115976

`eq[1, A057979(A004432(n+1))]+A008836(n+1)²`
-/

namespace A024806.P3140925859417115976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A008836 (n + 1) ^ 2

end

end A024806.P3140925859417115976

/-! ## A024806.P11702433207852155617

`eq[1, A057979(A004432(n+1))]+A034947(n+1)²`
-/

namespace A024806.P11702433207852155617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A034947 (n + 1) ^ 2

end

end A024806.P11702433207852155617

/-! ## A024806.P16343579208959593957

`A001511(2*n+1)+eq[1, A057979(A004432(n+1))]`
-/

namespace A024806.P16343579208959593957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A024806.P16343579208959593957

/-! ## A024806.P9050217527348607340

`record[A008619(2*n)/A057979(A004432(n+1))]`
-/

namespace A024806.P9050217527348607340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A057979 (A004432 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024806.P9050217527348607340

/-! ## A024806.P9039331710464135071

`record[A028242(2*n)/A057979(A004432(n+1))]`
-/

namespace A024806.P9039331710464135071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A057979 (A004432 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024806.P9039331710464135071

/-! ## A024806.P6443149344880505286

`record[A057979(2*n+5)-A057979(A004432(n+1))]`
-/

namespace A024806.P6443149344880505286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n + 5) - A057979 (A004432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024806.P6443149344880505286

/-! ## A024806.P14488753027455243594

`lt[A131575(comp[A004440(n+1)]), 1]`
-/

namespace A024806.P14488753027455243594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004440 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A024806.P14488753027455243594

/-!
# A024807: Positions of odd numbers in A004432.

The programs for A024807, there is no canonical definition to state claims against.
-/

/-! ## A024807.P3842773825578082280

`eq[1, A004432(n+1)%2]+1`
-/

namespace A024807.P3842773825578082280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004432 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024807.P3842773825578082280

/-! ## A024807.P790964808660884067

`eq[1, A004432(A028310(n))%2]`
-/

namespace A024807.P790964808660884067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004432 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024807.P790964808660884067

/-! ## A024807.P4822274018826998402

`eq[char[A024806(n+1)], A000007(n)]`
-/

namespace A024807.P4822274018826998402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024806 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024807.P4822274018826998402

/-! ## A024807.P15773622552242612088

`eq[char[A024806(n+1)], A000038(n)]`
-/

namespace A024807.P15773622552242612088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024806 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024807.P15773622552242612088

/-! ## A024807.P16747434206683860714

`eq[char[A024806(n+1)], A130706(n)]`
-/

namespace A024807.P16747434206683860714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024806 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024807.P16747434206683860714

/-! ## A024807.P18178727240966888234

`eq[1, A004432(A000007(n)+n)%2]`
-/

namespace A024807.P18178727240966888234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004432 (A000007 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024807.P18178727240966888234

/-! ## A024807.P16132491596110123179

`eq[1, A001511(A004432(n+1))]+1`
-/

namespace A024807.P16132491596110123179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004432 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024807.P16132491596110123179

/-! ## A024807.P16481568154562258165

`lt[A057979(n), A057979(A004432(n+1))]+1`
-/

namespace A024807.P16481568154562258165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004432 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024807.P16481568154562258165

/-! ## A024807.P11894636003277302123

`lt[1, A131575(comp[A004440(n+1)])]`
-/

namespace A024807.P11894636003277302123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004440 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024807.P11894636003277302123

/-!
# A024808: a(n) = position of 5 + n^2 in A004432.

The programs for A024808, there is no canonical definition to state claims against.
-/

/-! ## A024808.P8629684330925548984

`∑[A299701(A057574(n)²)]`
-/

namespace A024808.P8629684330925548984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A057574 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024808.P8629684330925548984

/-! ## A024808.P1205985070545560777

`∑{d}[A005032(n), A305439(#)]`
-/

namespace A024808.P1205985070545560777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305439 d

end

end A024808.P1205985070545560777

/-! ## A024808.P4586329481124073788

`∑[A005408(A051903(n!))]`
-/

namespace A024808.P4586329481124073788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A051903 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024808.P4586329481124073788

/-!
# A024809: a(n) = position of n^2 + (n+1)^2 + (n+2)^2 in A004432.

The programs for A024809, there is no canonical definition to state claims against.
-/

/-! ## A024809.P17047536287291673736

`A008212(n)+A001221(A134789(n+1))`
-/

namespace A024809.P17047536287291673736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008212 n + A001221 (A134789 (n + 1)).toNat

end

end A024809.P17047536287291673736

/-!
# A024810: a(n) = floor( tan(m*Pi/2) ), where m = 1 - 2^(-n).

The programs for A024810, the canonical program `A024810.P579674516557380186` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024810 has offset 1).

The definition of A024810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024810.P17014398770327139153

`2*a(n-1)+A127266(n+1)` with `a(0)=1`
-/

namespace A024810.P17014398770327139153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A127266 (n + 1)

end

end A024810.P17014398770327139153

namespace A024810

/-- `2*a(n-1)+A127266(n+1)` -/
def P17014398770327139153.Spec : Prop :=
  ∀ n, P17014398770327139153.a n = A024810 (n + 1)

end A024810

/-! ## A024810.P579674516557380186

`floor(2^(n+2)/π)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024810

/-- `floor(2^(n+2)/π)` -/
def P579674516557380186.Spec : Prop :=
  ∀ n, P579674516557380186.a n = A024810 (n + 1)

theorem P579674516557380186.correct : P579674516557380186.Spec := by
  intro n
  simp only [A024810, Nat.add_sub_cancel]

end A024810

/-! ## A024810.P8931292020604899620

`∑[round(2^n/asin(1))]`
-/

namespace A024810.P8931292020604899620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) / Real.arcsin (1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024810.P8931292020604899620

namespace A024810

/-- `∑[round(2^n/asin(1))]` -/
def P8931292020604899620.Spec : Prop :=
  ∀ n, P8931292020604899620.a n = A024810 (n + 1)

end A024810

/-! ## A024810.P9574159937711166687

`ceil(2^n/acot(1))-1`
-/

namespace A024810.P9574159937711166687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) / SequenceMachineLib.acot (1 : ℝ)⌉ - 1

end

end A024810.P9574159937711166687

namespace A024810

/-- `ceil(2^n/acot(1))-1` -/
def P9574159937711166687.Spec : Prop :=
  ∀ n, P9574159937711166687.a n = A024810 (n + 1)

end A024810

/-! ## A024810.P15447048868252188318

`ceil(A020707(n)/π)-1`
-/

namespace A024810.P15447048868252188318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020707 n : ℝ) / Real.pi⌉ - 1

end

end A024810.P15447048868252188318

namespace A024810

/-- `ceil(A020707(n)/π)-1` -/
def P15447048868252188318.Spec : Prop :=
  ∀ n, P15447048868252188318.a n = A024810 (n + 1)

end A024810

/-! ## A024810.P3791575155537727514

`ceil(A000079(n+2)/π)-1`
-/

namespace A024810.P3791575155537727514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 (n + 2) : ℝ) / Real.pi⌉ - 1

end

end A024810.P3791575155537727514

namespace A024810

/-- `ceil(A000079(n+2)/π)-1` -/
def P3791575155537727514.Spec : Prop :=
  ∀ n, P3791575155537727514.a n = A024810 (n + 1)

end A024810

/-!
# A024811: a(n) = floor(tan(m*Pi/2)), where m = 1 - 1/n.

The programs for A024811, the canonical program `A024811.P4272719514638874749` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024811 has offset 1).

The definition of A024811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024811.P4272719514638874749

`floor(tan((1-1/(n+1))*π/2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024811

/-- `floor(tan((1-1/(n+1))*π/2))` -/
def P4272719514638874749.Spec : Prop :=
  ∀ n, P4272719514638874749.a n = A024811 (n + 1)

theorem P4272719514638874749.correct : P4272719514638874749.Spec := by
  intro n
  simp only [A024811, Nat.add_sub_cancel]

end A024811

/-! ## A024811.P5010889664840120185

`∑[char[A248521(n+1)]]`
-/

namespace A024811.P5010889664840120185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248521 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024811.P5010889664840120185

namespace A024811

/-- `∑[char[A248521(n+1)]]` -/
def P5010889664840120185.Spec : Prop :=
  ∀ n, (P5010889664840120185.a n : ℤ) = A024811 (n + 1)

end A024811

/-! ## A024811.P16916907756776342643

`A062299(Δ[n²])`
-/

namespace A024811.P16916907756776342643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A024811.P16916907756776342643

namespace A024811

/-- `A062299(Δ[n²])` -/
def P16916907756776342643.Spec : Prop :=
  ∀ n, P16916907756776342643.a n = A024811 (n + 1)

end A024811

/-! ## A024811.P845192172078795728

`A062299(2*n+1)%(n+1)`
-/

namespace A024811.P845192172078795728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062299 (2 * n + 1)) (n + 1 : ℤ)

end

end A024811.P845192172078795728

namespace A024811

/-- `A062299(2*n+1)%(n+1)` -/
def P845192172078795728.Spec : Prop :=
  ∀ n, P845192172078795728.a n = A024811 (n + 1)

end A024811

/-! ## A024811.P9089458253824116019

`A057427(n)*A062299(A005408(n))`
-/

namespace A024811.P9089458253824116019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A062299 (A005408 n).toNat

end

end A024811.P9089458253824116019

namespace A024811

/-- `A057427(n)*A062299(A005408(n))` -/
def P9089458253824116019.Spec : Prop :=
  ∀ n, P9089458253824116019.a n = A024811 (n + 1)

end A024811

/-! ## A024811.P10006283657283403463

`lcm(A020985(n), A062299(A005408(n)))`
-/

namespace A024811.P10006283657283403463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A062299 (A005408 n).toNat)

end

end A024811.P10006283657283403463

namespace A024811

/-- `lcm(A020985(n), A062299(A005408(n)))` -/
def P10006283657283403463.Spec : Prop :=
  ∀ n, (P10006283657283403463.a n : ℤ) = A024811 (n + 1)

end A024811

/-! ## A024811.P3793564101556452551

`A032615(A121381(A062299(2*n+1)))`
-/

namespace A024811.P3793564101556452551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A121381 (A062299 (2 * n + 1)).toNat).toNat

end

end A024811.P3793564101556452551

namespace A024811

/-- `A032615(A121381(A062299(2*n+1)))` -/
def P3793564101556452551.Spec : Prop :=
  ∀ n, P3793564101556452551.a n = A024811 (n + 1)

end A024811

/-! ## A024811.P17231987775411452038

`xor(A062299(2*n+1)+A057087(n+1), A057087(n+1))`
-/

namespace A024811.P17231987775411452038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062299 (2 * n + 1) + A057087 (n + 1)) (A057087 (n + 1))

end

end A024811.P17231987775411452038

namespace A024811

/-- `xor(A062299(2*n+1)+A057087(n+1), A057087(n+1))` -/
def P17231987775411452038.Spec : Prop :=
  ∀ n, P17231987775411452038.a n = A024811 (n + 1)

end A024811

/-! ## A024811.P16383598343867920511

`floor(ratio[A000111(n+1)/A004277(2*n)])`
-/

namespace A024811.P16383598343867920511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 (n + 1) : ℚ) / (A004277 (2 * n) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A024811.P16383598343867920511

namespace A024811

/-- `floor(ratio[A000111(n+1)/A004277(2*n)])` -/
def P16383598343867920511.Spec : Prop :=
  ∀ n, P16383598343867920511.a n = A024811 (n + 1)

end A024811

/-! ## A024811.P11299050329070400658

`round(n/atan(A290965(n+1)))`
-/

namespace A024811.P11299050329070400658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.arctan (A290965 (n + 1) : ℝ))

end

end A024811.P11299050329070400658

namespace A024811

/-- `round(n/atan(A290965(n+1)))` -/
def P11299050329070400658.Spec : Prop :=
  ∀ n, P11299050329070400658.a n = A024811 (n + 1)

end A024811

/-!
# A024812: Numbers n for which there is exactly one positive integer m such that n = floor(cot(Pi/(2m))).

The programs for A024812, there is no canonical definition to state claims against.
-/

/-! ## A024812.P11583324364370493964

`(A024813(n+1)+n)/2`
-/

namespace A024812.P11583324364370493964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024813 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A024812.P11583324364370493964

/-! ## A024812.P5910310241066284853

`A223577(n+3)-1`
-/

namespace A024812.P5910310241066284853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223577 (n + 3) - 1

end

end A024812.P5910310241066284853

/-! ## A024812.P17759847965017497067

`A004525(A024813(n+1)-n)+n`
-/

namespace A024812.P17759847965017497067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024813 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A024812.P17759847965017497067

/-! ## A024812.P2541923668608535302

`A032742(A024813(n+1)-n)+n`
-/

namespace A024812.P2541923668608535302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A024813 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A024812.P2541923668608535302

/-! ## A024812.P14628116746902071766

`A062828(A024813(n+1)-n)+n`
-/

namespace A024812.P14628116746902071766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A024813 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A024812.P14628116746902071766

/-! ## A024812.P3673906253226449857

`A024811(A024813(n+1))`
-/

namespace A024812.P3673906253226449857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024811 (A024813 (n + 1)).toNat

end

end A024812.P3673906253226449857

/-! ## A024812.P6850318936129049848

`A004525(A024813(n+1)+n)`
-/

namespace A024812.P6850318936129049848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024813 (n + 1) + (n : ℤ)).toNat

end

end A024812.P6850318936129049848

/-! ## A024812.P18300875771050218013

`A004526(A024813(n+1)+n)`
-/

namespace A024812.P18300875771050218013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024813 (n + 1) + (n : ℤ)).toNat

end

end A024812.P18300875771050218013

/-! ## A024812.P4867972155967048008

`A032742(A024813(n+1)+n)`
-/

namespace A024812.P4867972155967048008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A024813 (n + 1) + (n : ℤ)).toNat

end

end A024812.P4867972155967048008

/-! ## A024812.P10991711429380621232

`A062828(A024813(n+1)+n)`
-/

namespace A024812.P10991711429380621232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A024813 (n + 1) + (n : ℤ)).toNat

end

end A024812.P10991711429380621232

/-! ## A024812.P16519942253393177538

`A008619(A024813(n+1)-1+n)`
-/

namespace A024812.P16519942253393177538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024813 (n + 1) - 1 + (n : ℤ)).toNat

end

end A024812.P16519942253393177538

/-!
# A024813: Positive integers m for which f(m-1) < f(m) < f(m+1), where f(m) = floor(cot(Pi/(2m))).

The programs for A024813, there is no canonical definition to state claims against.
-/

/-! ## A024813.P15055293737761775441

`2*A024812(n+1)-n`
-/

namespace A024813.P15055293737761775441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024812 (n + 1) - (n : ℤ)

end

end A024813.P15055293737761775441

/-! ## A024813.P6802044681073890237

`A223578(n+3)`
-/

namespace A024813.P6802044681073890237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223578 (n + 3)

end

end A024813.P6802044681073890237

/-! ## A024813.P16569527379425779060

`A028310(A024812(n+1)-n)+A024812(n+1)`
-/

namespace A024813.P16569527379425779060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A024812 (n + 1) - (n : ℤ)).toNat + A024812 (n + 1)

end

end A024813.P16569527379425779060

/-! ## A024813.P14556873124824460235

`A024812(n+1)-A001478(A024812(n+1)-n)`
-/

namespace A024813.P14556873124824460235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024812 (n + 1) - A001478 (A024812 (n + 1) - (n : ℤ)).toNat

end

end A024813.P14556873124824460235

/-! ## A024813.P14729943673479404534

`A248521(A024812(n+1)+1)`
-/

namespace A024813.P14729943673479404534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248521 (A024812 (n + 1) + 1).toNat

end

end A024813.P14729943673479404534

/-! ## A024813.P347996300812562770

`∩[A248521(n+1)+1, A248521(n+1)]`
-/

namespace A024813.P347996300812562770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248521 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024813.P347996300812562770

/-! ## A024813.P11490121450683575692

`A005408(A024812(n+1))+A001478(n+1)`
-/

namespace A024813.P11490121450683575692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A024812 (n + 1)).toNat + A001478 (n + 1)

end

end A024813.P11490121450683575692

/-! ## A024813.P4996586016558464295

`A005408(A024812(n+1))+n-A005408(n)`
-/

namespace A024813.P4996586016558464295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A024812 (n + 1)).toNat + ((n : ℤ) - A005408 n)

end

end A024813.P4996586016558464295

/-! ## A024813.P14461489052246982984

`A080513(floor(π*A024812(n+1)))`
-/

namespace A024813.P14461489052246982984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ⌊Real.pi * (A024812 (n + 1) : ℝ)⌋.toNat

end

end A024813.P14461489052246982984

/-! ## A024813.P5235019824440509562

`A004526(floor(π*A024812(n+1))+3)`
-/

namespace A024813.P5235019824440509562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌊Real.pi * (A024812 (n + 1) : ℝ)⌋ + 3).toNat

end

end A024813.P5235019824440509562

/-!
# A024816: Antisigma(n): Sum of the numbers less than n that do not divide n.

The programs for A024816, the canonical program `A024816.P10728806423584859610` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024816 has offset 1).

The definition of A024816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024816.P3797370682544172762

`A244048(n+1)+A004125(n+1)`
-/

namespace A024816.P3797370682544172762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1) + A004125 (n + 1)

end

end A024816.P3797370682544172762

namespace A024816

/-- `A244048(n+1)+A004125(n+1)` -/
def P3797370682544172762.Spec : Prop :=
  ∀ n, P3797370682544172762.a n = A024816 (n + 1)

theorem P3797370682544172762.correct : P3797370682544172762.Spec := by
  intro n
  simp only [A024816, Nat.add_sub_cancel, A024816.P3797370682544172762.a, A024816.P10728806423584859610.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A004125, A004125.P17154347137318566864.a, A244048, A244048.P6865276920681536651.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024816

/-! ## A024816.P10728806423584859610

`A000217(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024816

/-- `A000217(n+1)-A000203(n+1)` -/
def P10728806423584859610.Spec : Prop :=
  ∀ n, P10728806423584859610.a n = A024816 (n + 1)

theorem P10728806423584859610.correct : P10728806423584859610.Spec := by
  intro n
  simp only [A024816, Nat.add_sub_cancel]

end A024816

/-! ## A024816.P3495113874669183052

`∑[n+1]-∑{d}[n+1, #]`
-/

namespace A024816.P3495113874669183052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A024816.P3495113874669183052

namespace A024816

/-- `∑[n+1]-∑{d}[n+1, #]` -/
def P3495113874669183052.Spec : Prop :=
  ∀ n, P3495113874669183052.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P9888907701982215981

`∑[n]-A001065(n+1)`
-/

namespace A024816.P9888907701982215981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1)

end

end A024816.P9888907701982215981

namespace A024816

/-- `∑[n]-A001065(n+1)` -/
def P9888907701982215981.Spec : Prop :=
  ∀ n, P9888907701982215981.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P16361314803372100724

`A235799(n+1)-∑[n]`
-/

namespace A024816.P16361314803372100724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024816.P16361314803372100724

namespace A024816

/-- `A235799(n+1)-∑[n]` -/
def P16361314803372100724.Spec : Prop :=
  ∀ n, P16361314803372100724.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P1493541634274897071

`C(n, 2)-A237588(n+1)`
-/

namespace A024816.P1493541634274897071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A237588 (n + 1)

end

end A024816.P1493541634274897071

namespace A024816

/-- `C(n, 2)-A237588(n+1)` -/
def P1493541634274897071.Spec : Prop :=
  ∀ n, P1493541634274897071.a n = A024816 (n + 1)

theorem P1493541634274897071.correct : P1493541634274897071.Spec := by
  intro n
  simp only [A024816, Nat.add_sub_cancel, A024816.P1493541634274897071.a, A024816.P10728806423584859610.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A237588, A237588.P7919289499905681947.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024816

/-! ## A024816.P8933374072973609855

`A163553(n)+a(n-1)` with `a(0)=0`
-/

namespace A024816.P8933374072973609855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A163553 n + a (n - 1)

end

end A024816.P8933374072973609855

namespace A024816

/-- `A163553(n)+a(n-1)` -/
def P8933374072973609855.Spec : Prop :=
  ∀ n, P8933374072973609855.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P10303931889063555670

`A033879(n+1)+∑[n-1]`
-/

namespace A024816.P10303931889063555670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024816.P10303931889063555670

namespace A024816

/-- `A033879(n+1)+∑[n-1]` -/
def P10303931889063555670.Spec : Prop :=
  ∀ n, P10303931889063555670.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P4173987024171283762

`∑[1-A340793(n+1)+n]`
-/

namespace A024816.P4173987024171283762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340793 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024816.P4173987024171283762

namespace A024816

/-- `∑[1-A340793(n+1)+n]` -/
def P4173987024171283762.Spec : Prop :=
  ∀ n, P4173987024171283762.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P2654088797474313229

`∑[n-1]-A033880(n+1)`
-/

namespace A024816.P2654088797474313229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033880 (n + 1)

end

end A024816.P2654088797474313229

namespace A024816

/-- `∑[n-1]-A033880(n+1)` -/
def P2654088797474313229.Spec : Prop :=
  ∀ n, P2654088797474313229.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P5666597756154567245

`A033885(n+1)+∑[n-2]`
-/

namespace A024816.P5666597756154567245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024816.P5666597756154567245

namespace A024816

/-- `A033885(n+1)+∑[n-2]` -/
def P5666597756154567245.Spec : Prop :=
  ∀ n, P5666597756154567245.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P14213844658845949627

`∑[n+2]-A155085(n+1)`
-/

namespace A024816.P14213844658845949627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A155085 (n + 1)

end

end A024816.P14213844658845949627

namespace A024816

/-- `∑[n+2]-A155085(n+1)` -/
def P14213844658845949627.Spec : Prop :=
  ∀ n, P14213844658845949627.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P294763565454163733

`∑[n+3]-A224880(n+1)`
-/

namespace A024816.P294763565454163733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A224880 (n + 1)

end

end A024816.P294763565454163733

namespace A024816

/-- `∑[n+3]-A224880(n+1)` -/
def P294763565454163733.Spec : Prop :=
  ∀ n, P294763565454163733.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P5106531579039985296

`∑[n]-A091818(n+1)/2`
-/

namespace A024816.P5106531579039985296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A091818 (n + 1) : ℚ) / 2

end

end A024816.P5106531579039985296

namespace A024816

/-- `∑[n]-A091818(n+1)/2` -/
def P5106531579039985296.Spec : Prop :=
  ∀ n, P5106531579039985296.a n = (A024816 (n + 1) : ℚ)

end A024816

/-! ## A024816.P3663849649561847358

`A235796(n+1)+∑[n]-n`
-/

namespace A024816.P3663849649561847358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A024816.P3663849649561847358

namespace A024816

/-- `A235796(n+1)+∑[n]-n` -/
def P3663849649561847358.Spec : Prop :=
  ∀ n, P3663849649561847358.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P5722799419386447678

`∑[∑{d}[n, #]]-A153485(n+1)`
-/

namespace A024816.P5722799419386447678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153485 (n + 1)

end

end A024816.P5722799419386447678

namespace A024816

/-- `∑[∑{d}[n, #]]-A153485(n+1)` -/
def P5722799419386447678.Spec : Prop :=
  ∀ n, P5722799419386447678.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P16066699756056378598

`∑[n+1]-A245092(2*n+1)`
-/

namespace A024816.P16066699756056378598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A245092 (2 * n + 1)

end

end A024816.P16066699756056378598

namespace A024816

/-- `∑[n+1]-A245092(2*n+1)` -/
def P16066699756056378598.Spec : Prop :=
  ∀ n, P16066699756056378598.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P6475523088955877576

`∑{d}[n+1, #*A109607((n+1)/#)]`
-/

namespace A024816.P6475523088955877576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A109607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024816.P6475523088955877576

namespace A024816

/-- `∑{d}[n+1, #*A109607((n+1)/#)]` -/
def P6475523088955877576.Spec : Prop :=
  ∀ n, P6475523088955877576.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P3570712501964616595

`A297024(n+1)+A211539(n)`
-/

namespace A024816.P3570712501964616595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297024 (n + 1) + A211539 n

end

end A024816.P3570712501964616595

namespace A024816

/-- `A297024(n+1)+A211539(n)` -/
def P3570712501964616595.Spec : Prop :=
  ∀ n, P3570712501964616595.a n = A024816 (n + 1)

end A024816

/-! ## A024816.P9422298432039680022

`A000096(n)-A039653(n+1)`
-/

namespace A024816.P9422298432039680022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A039653 (n + 1)

end

end A024816.P9422298432039680022

namespace A024816

/-- `A000096(n)-A039653(n+1)` -/
def P9422298432039680022.Spec : Prop :=
  ∀ n, P9422298432039680022.a n = A024816 (n + 1)

end A024816

/-!
# A024817: a(n) = [ 1/(2*t(n+1) - t(n) - t(n+2)) ], where t(n) = tan(Pi/2 - 1/n) satisfies n-1 < t(n) < n for all n >= 1.

The programs for A024817, the canonical program `A024817.P12605328665190567263` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024817 has offset 1).

The definition of A024817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024817.P12605328665190567263

`∑[A000217(3*n+4)]-A090223(2*(n+2))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024817

/-- `∑[A000217(3*n+4)]-A090223(2*(n+2))` -/
def P12605328665190567263.Spec : Prop :=
  ∀ n, P12605328665190567263.a n = A024817 (n + 1)

theorem P12605328665190567263.correct : P12605328665190567263.Spec := by
  intro n
  simp only [A024817, Nat.add_sub_cancel]

end A024817

/-!
# A024818: a(n) = floor(tan m), where m is the least positive integer such that floor(tan m) > floor(tan k) for k = 0,1,...,m-1.

The programs for A024818, the canonical program `A024818.P15016042392280541805` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024818 has offset 1).

The definition of A024818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024818.P9646530474905399587

`floor(tan(A024814(n+1)))`
-/

namespace A024818.P9646530474905399587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A024814 (n + 1) : ℝ)⌋

end

end A024818.P9646530474905399587

namespace A024818

/-- `floor(tan(A024814(n+1)))` -/
def P9646530474905399587.Spec : Prop :=
  ∀ n, P9646530474905399587.a n = A024818 (n + 1)

end A024818

/-! ## A024818.P14868070452763968405

`ceil(tan(A024814(n+1))-A057427(n+1))`
-/

namespace A024818.P14868070452763968405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (A024814 (n + 1) : ℝ) - (A057427 (n + 1) : ℝ)⌉

end

end A024818.P14868070452763968405

namespace A024818

/-- `ceil(tan(A024814(n+1))-A057427(n+1))` -/
def P14868070452763968405.Spec : Prop :=
  ∀ n, P14868070452763968405.a n = A024818 (n + 1)

end A024818

/-! ## A024818.P14801556924769244183

`ceil(tan(A024814(n+1))-A014963(20*(n+1)))`
-/

namespace A024818.P14801556924769244183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (A024814 (n + 1) : ℝ) - (A014963 (20 * (n + 1)) : ℝ)⌉

end

end A024818.P14801556924769244183

namespace A024818

/-- `ceil(tan(A024814(n+1))-A014963(20*(n+1)))` -/
def P14801556924769244183.Spec : Prop :=
  ∀ n, P14801556924769244183.a n = A024818 (n + 1)

end A024818

/-! ## A024818.P13465413606717857365

`ceil(tan(A024814(n+1))-A000203(((-1)^n)²))`
-/

namespace A024818.P13465413606717857365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (A024814 (n + 1) : ℝ) - (A000203 (((-1) ^ n) ^ 2).toNat : ℝ)⌉

end

end A024818.P13465413606717857365

namespace A024818

/-- `ceil(tan(A024814(n+1))-A000203(((-1)^n)²))` -/
def P13465413606717857365.Spec : Prop :=
  ∀ n, P13465413606717857365.a n = A024818 (n + 1)

end A024818

/-! ## A024818.P15016042392280541805

`floor(record[tan(n+1)])`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024818

/-- `floor(record[tan(n+1)])` -/
def P15016042392280541805.Spec : Prop :=
  ∀ n, P15016042392280541805.a n = A024818 (n + 1)

theorem P15016042392280541805.correct : P15016042392280541805.Spec := by
  intro n
  simp only [A024818, Nat.add_sub_cancel]

end A024818

/-! ## A024818.P12635156070681150292

`ceil(record[tan(n+1)-1])`
-/

namespace A024818.P12635156070681150292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 1 : ℝ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A024818.P12635156070681150292

namespace A024818

/-- `ceil(record[tan(n+1)-1])` -/
def P12635156070681150292.Spec : Prop :=
  ∀ n, P12635156070681150292.a n = A024818 (n + 1)

end A024818

/-! ## A024818.P6453932580568552173

`floor(record[1/cot(n+1)])`
-/

namespace A024818.P6453932580568552173
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.cot (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A024818.P6453932580568552173

namespace A024818

/-- `floor(record[1/cot(n+1)])` -/
def P6453932580568552173.Spec : Prop :=
  ∀ n, P6453932580568552173.a n = A024818 (n + 1)

theorem P6453932580568552173.correct : P6453932580568552173.Spec := by
  intro n
  simp only [A024818, Nat.add_sub_cancel, A024818.P6453932580568552173.f1, A024818.P6453932580568552173.a, A024818.P15016042392280541805.f1, A024818.P15016042392280541805.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A024818

/-! ## A024818.P9479814761566504163

`floor(abs(record[tan(abs(1-n))]))`
-/

namespace A024818.P9479814761566504163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (|1 - (n : ℤ)| : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|⌋

end

end A024818.P9479814761566504163

namespace A024818

/-- `floor(abs(record[tan(abs(1-n))]))` -/
def P9479814761566504163.Spec : Prop :=
  ∀ n, P9479814761566504163.a n = A024818 (n + 1)

end A024818

/-! ## A024818.P9078251325062410879

`abs(ceil(-record[tan(n+1)]))`
-/

namespace A024818.P9078251325062410879
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈-f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉|

end

end A024818.P9078251325062410879

namespace A024818

/-- `abs(ceil(-record[tan(n+1)]))` -/
def P9078251325062410879.Spec : Prop :=
  ∀ n, P9078251325062410879.a n = A024818 (n + 1)

end A024818

/-! ## A024818.P16185783432852106645

`-ceil(-record[tan(n+1)])`
-/

namespace A024818.P16185783432852106645
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A024818.P16185783432852106645

namespace A024818

/-- `-ceil(-record[tan(n+1)])` -/
def P16185783432852106645.Spec : Prop :=
  ∀ n, P16185783432852106645.a n = A024818 (n + 1)

end A024818

/-!
# A024819: a(n) = least m such that if r and s in {1/1, 1/3, 1/5,..., 1/(2n-1)} satisfy r < s, then r < k/m < s for some integer k.

The programs for A024819, the canonical program `A024819.P4184560525005108104` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024819 has offset 2).

The definition of A024819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024819.P6530342470566878267

`A000124(A122797(2*(n+1)))`
-/

namespace A024819.P6530342470566878267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A122797 (2 * (n + 1))).toNat

end

end A024819.P6530342470566878267

namespace A024819

/-- `A000124(A122797(2*(n+1)))` -/
def P6530342470566878267.Spec : Prop :=
  ∀ n, P6530342470566878267.a n = A024819 (n + 2)

end A024819

/-! ## A024819.P4184560525005108104

`A000124(A083920(2*n+1)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024819

/-- `A000124(A083920(2*n+1)+1)` -/
def P4184560525005108104.Spec : Prop :=
  ∀ n, P4184560525005108104.a n = A024819 (n + 2)

theorem P4184560525005108104.correct : P4184560525005108104.Spec := by
  intro n
  simp only [A024819, Nat.add_sub_cancel]

end A024819

/-! ## A024819.P5336860430325079498

`A000217(A122797(2*n+2))+1`
-/

namespace A024819.P5336860430325079498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A122797 (2 * n + 2)).toNat + 1

end

end A024819.P5336860430325079498

namespace A024819

/-- `A000217(A122797(2*n+2))+1` -/
def P5336860430325079498.Spec : Prop :=
  ∀ n, P5336860430325079498.a n = A024819 (n + 2)

end A024819

/-! ## A024819.P18413886492350250098

`A000124(A133280(2*n+1)-2*n)`
-/

namespace A024819.P18413886492350250098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A133280 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A024819.P18413886492350250098

namespace A024819

/-- `A000124(A133280(2*n+1)-2*n)` -/
def P18413886492350250098.Spec : Prop :=
  ∀ n, P18413886492350250098.a n = A024819 (n + 2)

end A024819

/-! ## A024819.P6595717563059677263

`A000124(A001614(2*(n+1))-(2*n+1))`
-/

namespace A024819.P6595717563059677263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A001614 (2 * (n + 1)) - (2 * n + 1 : ℤ)).toNat

end

end A024819.P6595717563059677263

namespace A024819

/-- `A000124(A001614(2*(n+1))-(2*n+1))` -/
def P6595717563059677263.Spec : Prop :=
  ∀ n, P6595717563059677263.a n = A024819 (n + 2)

end A024819

/-! ## A024819.P13853213271794491794

`A000124(A004277(n+1)-A003056(2*n+1))`
-/

namespace A024819.P13853213271794491794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A004277 (n + 1) - A003056 (2 * n + 1)).toNat

end

end A024819.P13853213271794491794

namespace A024819

/-- `A000124(A004277(n+1)-A003056(2*n+1))` -/
def P13853213271794491794.Spec : Prop :=
  ∀ n, P13853213271794491794.a n = A024819 (n + 2)

end A024819

/-! ## A024819.P4539628488998900834

`A000124(Δ[A000124(2*n+1)]-A014132(2*(n+1)))`
-/

namespace A024819.P4539628488998900834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f1 (n + 1) - f1 n - A014132 (2 * (n + 1))).toNat

end

end A024819.P4539628488998900834

namespace A024819

/-- `A000124(Δ[A000124(2*n+1)]-A014132(2*(n+1)))` -/
def P4539628488998900834.Spec : Prop :=
  ∀ n, P4539628488998900834.a n = A024819 (n + 2)

end A024819

/-!
# A024820: a(n) = least m such that if r and s in {1/2, 1/4, 1/6,..., 1/2n} satisfy r < s, then r < k/m < s for some integer k.

The programs for A024820, the canonical program `A024820.P4165797963061232133` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024820 has offset 2).

The definition of A024820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024820.P4165797963061232133

`2*A043548(n+2)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024820

/-- `2*A043548(n+2)+1` -/
def P4165797963061232133.Spec : Prop :=
  ∀ n, P4165797963061232133.a n = A024820 (n + 2)

theorem P4165797963061232133.correct : P4165797963061232133.Spec := by
  intro n
  simp only [A024820, Nat.add_sub_cancel]

end A024820

/-! ## A024820.P7763480547584428960

`A080827(A123663(n+2)+1)`
-/

namespace A024820.P7763480547584428960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (A123663 (n + 2) + 1).toNat

end

end A024820.P7763480547584428960

namespace A024820

/-- `A080827(A123663(n+2)+1)` -/
def P7763480547584428960.Spec : Prop :=
  ∀ n, P7763480547584428960.a n = A024820 (n + 2)

end A024820

/-! ## A024820.P733442192918197589

`A099392(A123663(n+2)+2)`
-/

namespace A024820.P733442192918197589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A123663 (n + 2) + 2).toNat

end

end A024820.P733442192918197589

namespace A024820

/-- `A099392(A123663(n+2)+2)` -/
def P733442192918197589.Spec : Prop :=
  ∀ n, P733442192918197589.a n = A024820 (n + 2)

end A024820

/-! ## A024820.P6868883603713992515

`(A080335(∑[2-Δ[A000267(n)]])+1)/2`
-/

namespace A024820.P6868883603713992515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080335 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1 : ℚ) / 2

end

end A024820.P6868883603713992515

namespace A024820

/-- `(A080335(∑[2-Δ[A000267(n)]])+1)/2` -/
def P6868883603713992515.Spec : Prop :=
  ∀ n, P6868883603713992515.a n = (A024820 (n + 2) : ℚ)

end A024820

/-! ## A024820.P13101944764278825118

`record[A074147(n+1)+A061925(A074147(n+1))]`
-/

namespace A024820.P13101944764278825118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (n + 1) + A061925 (A074147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024820.P13101944764278825118

namespace A024820

/-- `record[A074147(n+1)+A061925(A074147(n+1))]` -/
def P13101944764278825118.Spec : Prop :=
  ∀ n, P13101944764278825118.a n = A024820 (n + 2)

end A024820

/-! ## A024820.P8360395687528794256

`ceil(A024825(n+2)/2)`
-/

namespace A024820.P8360395687528794256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024825 (n + 2) : ℚ) / 2⌉

end

end A024820.P8360395687528794256

namespace A024820

/-- `ceil(A024825(n+2)/2)` -/
def P8360395687528794256.Spec : Prop :=
  ∀ n, P8360395687528794256.a n = A024820 (n + 2)

end A024820

/-! ## A024820.P13468429023952270157

`2*A024824(n+2)-A024825(n+2)`
-/

namespace A024820.P13468429023952270157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024824 (n + 2) - A024825 (n + 2)

end

end A024820.P13468429023952270157

namespace A024820

/-- `2*A024824(n+2)-A024825(n+2)` -/
def P13468429023952270157.Spec : Prop :=
  ∀ n, P13468429023952270157.a n = A024820 (n + 2)

end A024820

/-! ## A024820.P7008533607494062605

`2*A024832(n+2)-1`
-/

namespace A024820.P7008533607494062605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024832 (n + 2) - 1

end

end A024820.P7008533607494062605

namespace A024820

/-- `2*A024832(n+2)-1` -/
def P7008533607494062605.Spec : Prop :=
  ∀ n, P7008533607494062605.a n = A024820 (n + 2)

end A024820

/-! ## A024820.P16681693084313826607

`A144396(A043548(n+2))`
-/

namespace A024820.P16681693084313826607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A043548 (n + 2)).toNat

end

end A024820.P16681693084313826607

namespace A024820

/-- `A144396(A043548(n+2))` -/
def P16681693084313826607.Spec : Prop :=
  ∀ n, P16681693084313826607.a n = A024820 (n + 2)

end A024820

/-! ## A024820.P15350606787799331285

`A004273(A024832(n+2))`
-/

namespace A024820.P15350606787799331285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024832 (n + 2)).toNat

end

end A024820.P15350606787799331285

namespace A024820

/-- `A004273(A024832(n+2))` -/
def P15350606787799331285.Spec : Prop :=
  ∀ n, P15350606787799331285.a n = A024820 (n + 2)

end A024820

/-!
# A024821: Least m such that if r and s in {1/sqrt(h): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k.

The programs for A024821, there is no canonical definition to state claims against.
-/

/-! ## A024821.P6789246492453592950

`A000791(n+1)+A064045(n)+2`
-/

namespace A024821.P6789246492453592950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000791 (n + 1) + (A064045 n + 2)

end

end A024821.P6789246492453592950

/-! ## A024821.P111132894534085789

`A000791(n+1)+A084938(n)+2`
-/

namespace A024821.P111132894534085789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000791 (n + 1) + (A084938 n + 2)

end

end A024821.P111132894534085789

/-! ## A024821.P66203025268258955

`A000791(n+1)+A106566(n)+2`
-/

namespace A024821.P66203025268258955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000791 (n + 1) + (A106566 n + 2)

end

end A024821.P66203025268258955

/-! ## A024821.P17210129035669963424

`A005848(A128628(n+1)+A000040(n+1))`
-/

namespace A024821.P17210129035669963424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (A128628 (n + 1) + A000040 (n + 1)).toNat

end

end A024821.P17210129035669963424

/-! ## A024821.P3843498640642438665

`A005848(A198338(n+1)+A000040(n+1))`
-/

namespace A024821.P3843498640642438665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (A198338 (n + 1) + A000040 (n + 1)).toNat

end

end A024821.P3843498640642438665

/-!
# A024823: Least m such that if r and s in {1/2, 1/5, 1/8,..., 1/(3n-1)}, satisfy r < s, then r < k/m < s for some integer k.

The programs for A024823, there is no canonical definition to state claims against.
-/

/-! ## A024823.P7175730474330348667

`A263807(A001651(n+1)%A109458(n))`
-/

namespace A024823.P7175730474330348667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 (Int.tmod (A001651 (n + 1)) (A109458 n)).toNat

end

end A024823.P7175730474330348667

/-! ## A024823.P8432240563850188696

`A263807(lt[A014591(n), A145064(n+1)])`
-/

namespace A024823.P8432240563850188696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A024823.P8432240563850188696

/-! ## A024823.P11692091716310880024

`A263807(A001651(n+1)^A068159(n+1))`
-/

namespace A024823.P11692091716310880024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 (SequenceMachineLib.roundAway ((A001651 (n + 1) : ℚ) ^ (A068159 (n + 1) : ℤ))).toNat

end

end A024823.P11692091716310880024

/-! ## A024823.P1524747831168936196

`A263807(A068159(n+1)²²*A001651(n+1))`
-/

namespace A024823.P1524747831168936196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 ((A068159 (n + 1) ^ 2) ^ 2 * A001651 (n + 1)).toNat

end

end A024823.P1524747831168936196

/-!
# A024824: a(n) = least m such that if r and s in {1/3, 1/6, 1/9,..., 1/3n} satisfy r < s, then r < k/m < s for some integer k.

The programs for A024824, the canonical program `A024824.P3324789184246968409` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024824 has offset 2).

The definition of A024824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024824.P3324789184246968409

`3*A043548(n+2)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024824

/-- `3*A043548(n+2)+1` -/
def P3324789184246968409.Spec : Prop :=
  ∀ n, P3324789184246968409.a n = A024824 (n + 2)

theorem P3324789184246968409.correct : P3324789184246968409.Spec := by
  intro n
  simp only [A024824, Nat.add_sub_cancel]

end A024824

/-! ## A024824.P4009605064521870211

`3*(A024820(n+2)+1)/2-2`
-/

namespace A024824.P4009605064521870211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A024820 (n + 2) + 1 : ℚ) / 2) - 2

end

end A024824.P4009605064521870211

namespace A024824

/-- `3*(A024820(n+2)+1)/2-2` -/
def P4009605064521870211.Spec : Prop :=
  ∀ n, P4009605064521870211.a n = (A024824 (n + 2) : ℚ)

theorem P4009605064521870211.correct : P4009605064521870211.Spec := by
  intro n
  simp only [A024824, Nat.add_sub_cancel, A024824.P4009605064521870211.a, A024824.P3324789184246968409.a, A024820, A024820.P4165797963061232133.a, A043548, A043548.P6626003684055450292.a, A004277, A004277.P16255821370285667660.a, A055086, A055086.P18168198331367643999.a, A087811, A087811.P8717670463538044569.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, A024206, A024206.P13826433172157804129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A024824

/-! ## A024824.P15850516064759229453

`A043548(n+2)+A024820(n+2)`
-/

namespace A024824.P15850516064759229453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043548 (n + 2) + A024820 (n + 2)

end

end A024824.P15850516064759229453

namespace A024824

/-- `A043548(n+2)+A024820(n+2)` -/
def P15850516064759229453.Spec : Prop :=
  ∀ n, P15850516064759229453.a n = A024824 (n + 2)

theorem P15850516064759229453.correct : P15850516064759229453.Spec := by
  intro n
  simp only [A024824, Nat.add_sub_cancel, A024824.P15850516064759229453.a, A024824.P3324789184246968409.a, A024820, A024820.P4165797963061232133.a, A043548, A043548.P6626003684055450292.a, A004277, A004277.P16255821370285667660.a, A055086, A055086.P18168198331367643999.a, A087811, A087811.P8717670463538044569.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, A024206, A024206.P13826433172157804129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A024824

/-! ## A024824.P17643501648534331774

`A024825(n+2)-A043548(n+2)`
-/

namespace A024824.P17643501648534331774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024825 (n + 2) - A043548 (n + 2)

end

end A024824.P17643501648534331774

namespace A024824

/-- `A024825(n+2)-A043548(n+2)` -/
def P17643501648534331774.Spec : Prop :=
  ∀ n, P17643501648534331774.a n = A024824 (n + 2)

end A024824

/-! ## A024824.P2057002179212699300

`A024820(n+2)²%A024825(n+2)`
-/

namespace A024824.P2057002179212699300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024820 (n + 2) ^ 2) (A024825 (n + 2))

end

end A024824.P2057002179212699300

namespace A024824

/-- `A024820(n+2)²%A024825(n+2)` -/
def P2057002179212699300.Spec : Prop :=
  ∀ n, P2057002179212699300.a n = A024824 (n + 2)

end A024824

/-! ## A024824.P6204502270150699007

`A014682(A024820(n+2))-1`
-/

namespace A024824.P6204502270150699007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024820 (n + 2)).toNat - 1

end

end A024824.P6204502270150699007

namespace A024824

/-- `A014682(A024820(n+2))-1` -/
def P6204502270150699007.Spec : Prop :=
  ∀ n, P6204502270150699007.a n = A024824 (n + 2)

end A024824

/-! ## A024824.P6025462614721106424

`3*A024832(n+2)-2`
-/

namespace A024824.P6025462614721106424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024832 (n + 2) - 2

end

end A024824.P6025462614721106424

namespace A024824

/-- `3*A024832(n+2)-2` -/
def P6025462614721106424.Spec : Prop :=
  ∀ n, P6025462614721106424.a n = A024824 (n + 2)

end A024824

/-! ## A024824.P884316018493980299

`A024820(n+2)+A024832(n+2)-1`
-/

namespace A024824.P884316018493980299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024820 (n + 2) + (A024832 (n + 2) - 1)

end

end A024824.P884316018493980299

namespace A024824

/-- `A024820(n+2)+A024832(n+2)-1` -/
def P884316018493980299.Spec : Prop :=
  ∀ n, P884316018493980299.a n = A024824 (n + 2)

end A024824

/-! ## A024824.P9361142417256910748

`A024825(n+2)+1-A024832(n+2)`
-/

namespace A024824.P9361142417256910748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024825 (n + 2) + (1 - A024832 (n + 2))

end

end A024824.P9361142417256910748

namespace A024824

/-- `A024825(n+2)+1-A024832(n+2)` -/
def P9361142417256910748.Spec : Prop :=
  ∀ n, P9361142417256910748.a n = A024824 (n + 2)

end A024824

/-! ## A024824.P10808466785249862824

`A016777(A043548(n+2))`
-/

namespace A024824.P10808466785249862824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A043548 (n + 2)).toNat

end

end A024824.P10808466785249862824

namespace A024824

/-- `A016777(A043548(n+2))` -/
def P10808466785249862824.Spec : Prop :=
  ∀ n, P10808466785249862824.a n = A024824 (n + 2)

end A024824

/-! ## A024824.P11937089413144709158

`A016777(A024832(n+2)-1)`
-/

namespace A024824.P11937089413144709158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A024832 (n + 2) - 1).toNat

end

end A024824.P11937089413144709158

namespace A024824

/-- `A016777(A024832(n+2)-1)` -/
def P11937089413144709158.Spec : Prop :=
  ∀ n, P11937089413144709158.a n = A024824 (n + 2)

end A024824

/-!
# A024825: a(n) = least m such that if r and s in {1/4, 1/8, 1/12,..., 1/4n} satisfy r < s, then r < k/m < s for some integer k.

The programs for A024825, the canonical program `A024825.P16252496117260300234` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024825 has offset 2).

The definition of A024825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 727 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024825.P10054583914742170473

`2*A024820(n+2)-1`
-/

namespace A024825.P10054583914742170473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024820 (n + 2) - 1

end

end A024825.P10054583914742170473

namespace A024825

/-- `2*A024820(n+2)-1` -/
def P10054583914742170473.Spec : Prop :=
  ∀ n, P10054583914742170473.a n = A024825 (n + 2)

end A024825

/-! ## A024825.P15106508472103305158

`4*(A043548(n+2)+1)-3`
-/

namespace A024825.P15106508472103305158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A043548 (n + 2) + 1) - 3

end

end A024825.P15106508472103305158

namespace A024825

/-- `4*(A043548(n+2)+1)-3` -/
def P15106508472103305158.Spec : Prop :=
  ∀ n, P15106508472103305158.a n = A024825 (n + 2)

end A024825

/-! ## A024825.P4275030500972764529

`A080335(A123663(n+2))`
-/

namespace A024825.P4275030500972764529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 (A123663 (n + 2)).toNat

end

end A024825.P4275030500972764529

namespace A024825

/-- `A080335(A123663(n+2))` -/
def P4275030500972764529.Spec : Prop :=
  ∀ n, P4275030500972764529.a n = A024825 (n + 2)

end A024825

/-! ## A024825.P16252496117260300234

`A080335(∑[2-Δ[A000267(n)]])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024825

/-- `A080335(∑[2-Δ[A000267(n)]])` -/
def P16252496117260300234.Spec : Prop :=
  ∀ n, P16252496117260300234.a n = A024825 (n + 2)

theorem P16252496117260300234.correct : P16252496117260300234.Spec := by
  intro n
  simp only [A024825, Nat.add_sub_cancel]

end A024825

/-! ## A024825.P10094995901772343924

`A024824(n+2)+A024824(n+2)-A024820(n+2)`
-/

namespace A024825.P10094995901772343924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024824 (n + 2) + (A024824 (n + 2) - A024820 (n + 2))

end

end A024825.P10094995901772343924

namespace A024825

/-- `A024824(n+2)+A024824(n+2)-A024820(n+2)` -/
def P10094995901772343924.Spec : Prop :=
  ∀ n, P10094995901772343924.a n = A024825 (n + 2)

end A024825

/-! ## A024825.P18295065135124432088

`4*A024832(n+2)-3`
-/

namespace A024825.P18295065135124432088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024832 (n + 2) - 3

end

end A024825.P18295065135124432088

namespace A024825

/-- `4*A024832(n+2)-3` -/
def P18295065135124432088.Spec : Prop :=
  ∀ n, P18295065135124432088.a n = A024825 (n + 2)

end A024825

/-! ## A024825.P15564441475684877155

`A004766(A043548(n+2))`
-/

namespace A024825.P15564441475684877155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A043548 (n + 2)).toNat

end

end A024825.P15564441475684877155

namespace A024825

/-- `A004766(A043548(n+2))` -/
def P15564441475684877155.Spec : Prop :=
  ∀ n, P15564441475684877155.a n = A024825 (n + 2)

end A024825

/-! ## A024825.P13900141303282002670

`A004273(A024820(n+2))`
-/

namespace A024825.P13900141303282002670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024820 (n + 2)).toNat

end

end A024825.P13900141303282002670

namespace A024825

/-- `A004273(A024820(n+2))` -/
def P13900141303282002670.Spec : Prop :=
  ∀ n, P13900141303282002670.a n = A024825 (n + 2)

end A024825

/-! ## A024825.P12916599051137474736

`A144396(2*A043548(n+2))`
-/

namespace A024825.P12916599051137474736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (2 * A043548 (n + 2)).toNat

end

end A024825.P12916599051137474736

namespace A024825

/-- `A144396(2*A043548(n+2))` -/
def P12916599051137474736.Spec : Prop :=
  ∀ n, P12916599051137474736.a n = A024825 (n + 2)

end A024825

/-! ## A024825.P16001869948129994718

`A004273(A024832(n+2)+A024832(n+2)-1)`
-/

namespace A024825.P16001869948129994718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024832 (n + 2) + (A024832 (n + 2) - 1)).toNat

end

end A024825.P16001869948129994718

namespace A024825

/-- `A004273(A024832(n+2)+A024832(n+2)-1)` -/
def P16001869948129994718.Spec : Prop :=
  ∀ n, P16001869948129994718.a n = A024825 (n + 2)

end A024825

/-!
# A024827: Least m such that if r and s in {1/1, 1/4, 1/9,..., 1/n^2} satisfy r < s, then r < k/m < s for some integer k.

The programs for A024827, there is no canonical definition to state claims against.
-/

/-! ## A024827.P3534569457022996597

`A057427(A084468(n+1))+A054062(n+2)`
-/

namespace A024827.P3534569457022996597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A084468 (n + 1)).toNat + A054062 (n + 2)

end

end A024827.P3534569457022996597

/-! ## A024827.P5096907253856612469

`A057427(A107203(n+1))+A054062(n+2)`
-/

namespace A024827.P5096907253856612469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A107203 (n + 1)).toNat + A054062 (n + 2)

end

end A024827.P5096907253856612469

/-! ## A024827.P7867877253852503114

`A057427(A107187(n+3))+A054062(n+2)`
-/

namespace A024827.P7867877253852503114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A107187 (n + 3)).toNat + A054062 (n + 2)

end

end A024827.P7867877253852503114

/-! ## A024827.P7292858357388176410

`A057427(∑[A001952(n+1)])+A054062(n+2)`
-/

namespace A024827.P7292858357388176410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A054062 (n + 2)

end

end A024827.P7292858357388176410

/-! ## A024827.P10848541298717860532

`A057427(A023719(∑[n]+1))+A054062(n+2)`
-/

namespace A024827.P10848541298717860532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A023719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + A054062 (n + 2)

end

end A024827.P10848541298717860532

/-! ## A024827.P10950367308232767177

`A057427(A002260(2*n²+1))+A054062(n+2)`
-/

namespace A024827.P10950367308232767177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002260 (2 * n ^ 2 + 1)).toNat + A054062 (n + 2)

end

end A024827.P10950367308232767177

/-! ## A024827.P17865443740828416756

`A057427(A347659(n)+A089051(n))+A054062(n+2)`
-/

namespace A024827.P17865443740828416756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A347659 n + A089051 n).toNat + A054062 (n + 2)

end

end A024827.P17865443740828416756

/-! ## A024827.P16896116504413083701

`A057427(A354453(n+1)+1)+A054062(n+2)`
-/

namespace A024827.P16896116504413083701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A354453 (n + 1) + 1).toNat + A054062 (n + 2)

end

end A024827.P16896116504413083701

/-!
# A024828: a(n) = least m such that if r and s in {h/(1 + h^2): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k.

The programs for A024828, there is no canonical definition to state claims against.
-/

/-! ## A024828.P6465209148621791884

`A071111(n+2)+A004018(C(2, n))`
-/

namespace A024828.P6465209148621791884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (n + 2) + A004018 (Nat.choose 2 n)

end

end A024828.P6465209148621791884

/-! ## A024828.P13656246315567213299

`A071111(n+2)+A280193(A007918(n))²`
-/

namespace A024828.P13656246315567213299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (n + 2) + A280193 (A007918 n).toNat ^ 2

end

end A024828.P13656246315567213299

/-!
# A024830: a(n) = least m such that if r and s in {F(2*h)/F(2*h+1): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k, where F = A000045 (Fibonacci numbers).

The programs for A024830, there is no canonical definition to state claims against.
-/

/-! ## A024830.P3388729601186511493

`A082069(n+5)+A080037(A072176(3*(n+1)))`
-/

namespace A024830.P3388729601186511493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082069 (n + 5) + A080037 (A072176 (3 * (n + 1))).toNat

end

end A024830.P3388729601186511493

/-!
# A024831: a(n) = least m such that if r and s in {F(h)/F(2*h): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k, where F = A000045 (Fibonacci numbers).

The programs for A024831, the canonical program `A024831.P9826702227646643929` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024831 has offset 2).

The definition of A024831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024831.P9826702227646643929

`a(n-1)+a(n-2)-1` with `a(0)=2, a(1)=7, a(2)=10, a(3)=10, a(4)=15, a(5)=23`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024831

/-- `a(n-1)+a(n-2)-1` -/
def P9826702227646643929.Spec : Prop :=
  ∀ n, P9826702227646643929.a n = A024831 (n + 2)

theorem P9826702227646643929.correct : P9826702227646643929.Spec := by
  intro n
  simp only [A024831, Nat.add_sub_cancel]

end A024831

/-! ## A024831.P2729181708026077675

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=7, a(2)=10, a(3)=10, a(4)=15, a(5)=23, a(6)=37`
-/

namespace A024831.P2729181708026077675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 10, 10, 15, 23, 37] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A024831.P2729181708026077675

namespace A024831

/-- `2*a(n-1)-a(n-3)` -/
def P2729181708026077675.Spec : Prop :=
  ∀ n, P2729181708026077675.a n = A024831 (n + 2)

end A024831

/-!
# A024832: Least m such that if r and s in {Pi/2 - atn(h): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k.

The programs for A024832, the canonical program `A024832.P14340368210108615725` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024832 has offset 2).

The definition of A024832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024832.P12822776826264562478

`A043548(n+2)+1`
-/

namespace A024832.P12822776826264562478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043548 (n + 2) + 1

end

end A024832.P12822776826264562478

namespace A024832

/-- `A043548(n+2)+1` -/
def P12822776826264562478.Spec : Prop :=
  ∀ n, P12822776826264562478.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P18005226587366617671

`ceil(A024820(n+2)/2)`
-/

namespace A024832.P18005226587366617671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024820 (n + 2) : ℚ) / 2⌉

end

end A024832.P18005226587366617671

namespace A024832

/-- `ceil(A024820(n+2)/2)` -/
def P18005226587366617671.Spec : Prop :=
  ∀ n, P18005226587366617671.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P12295610746674492924

`ceil(A024824(n+2)/3)`
-/

namespace A024832.P12295610746674492924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024824 (n + 2) : ℚ) / 3⌉

end

end A024832.P12295610746674492924

namespace A024832

/-- `ceil(A024824(n+2)/3)` -/
def P12295610746674492924.Spec : Prop :=
  ∀ n, P12295610746674492924.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P14340368210108615725

`ceil(A024825(n+2)/4)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024832

/-- `ceil(A024825(n+2)/4)` -/
def P14340368210108615725.Spec : Prop :=
  ∀ n, P14340368210108615725.a n = A024832 (n + 2)

theorem P14340368210108615725.correct : P14340368210108615725.Spec := by
  intro n
  simp only [A024832, Nat.add_sub_cancel]

end A024832

/-! ## A024832.P3358579977227664948

`(A024820(4/2+n)+1)/2`
-/

namespace A024832.P3358579977227664948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024820 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat + 1 : ℚ) / 2

end

end A024832.P3358579977227664948

namespace A024832

/-- `(A024820(4/2+n)+1)/2` -/
def P3358579977227664948.Spec : Prop :=
  ∀ n, P3358579977227664948.a n = (A024832 (n + 2) : ℚ)

end A024832

/-! ## A024832.P5328630296556025203

`A033638(record[A116941(n)+2])`
-/

namespace A024832.P5328630296556025203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116941 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024832.P5328630296556025203

namespace A024832

/-- `A033638(record[A116941(n)+2])` -/
def P5328630296556025203.Spec : Prop :=
  ∀ n, P5328630296556025203.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P10433648727006723

`A014682(A024820(n+2)+1)`
-/

namespace A024832.P10433648727006723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024820 (n + 2) + 1).toNat

end

end A024832.P10433648727006723

namespace A024832

/-- `A014682(A024820(n+2)+1)` -/
def P10433648727006723.Spec : Prop :=
  ∀ n, P10433648727006723.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P4996803357901451664

`A033638(A123663(n+2)+1)`
-/

namespace A024832.P4996803357901451664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A123663 (n + 2) + 1).toNat

end

end A024832.P4996803357901451664

namespace A024832

/-- `A033638(A123663(n+2)+1)` -/
def P4996803357901451664.Spec : Prop :=
  ∀ n, P4996803357901451664.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P8890634779321828410

`A033638(A083479(n+2)+n+1)`
-/

namespace A024832.P8890634779321828410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 (n + 2) + (n + 1 : ℤ)).toNat

end

end A024832.P8890634779321828410

namespace A024832

/-- `A033638(A083479(n+2)+n+1)` -/
def P8890634779321828410.Spec : Prop :=
  ∀ n, P8890634779321828410.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P1439997379494277368

`A024824(n+2)+1-A024820(n+2)`
-/

namespace A024832.P1439997379494277368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024824 (n + 2) + (1 - A024820 (n + 2))

end

end A024832.P1439997379494277368

namespace A024832

/-- `A024824(n+2)+1-A024820(n+2)` -/
def P1439997379494277368.Spec : Prop :=
  ∀ n, P1439997379494277368.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P11361175661472567206

`A024825(n+2)+1-A024824(n+2)`
-/

namespace A024832.P11361175661472567206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024825 (n + 2) + (1 - A024824 (n + 2))

end

end A024832.P11361175661472567206

namespace A024832

/-- `A024825(n+2)+1-A024824(n+2)` -/
def P11361175661472567206.Spec : Prop :=
  ∀ n, P11361175661472567206.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P6893623174065292108

`A020725(A043548(n+2))`
-/

namespace A024832.P6893623174065292108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A043548 (n + 2)).toNat

end

end A024832.P6893623174065292108

namespace A024832

/-- `A020725(A043548(n+2))` -/
def P6893623174065292108.Spec : Prop :=
  ∀ n, P6893623174065292108.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P9231863081872847982

`A083479(A071111(n+3)-1)`
-/

namespace A024832.P9231863081872847982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A071111 (n + 3) - 1).toNat

end

end A024832.P9231863081872847982

namespace A024832

/-- `A083479(A071111(n+3)-1)` -/
def P9231863081872847982.Spec : Prop :=
  ∀ n, P9231863081872847982.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P11598565116195939638

`A083479(A002620(A083479(n+2)+n+3))`
-/

namespace A024832.P11598565116195939638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A002620 (A083479 (n + 2) + (n + 3 : ℤ)).toNat).toNat

end

end A024832.P11598565116195939638

namespace A024832

/-- `A083479(A002620(A083479(n+2)+n+3))` -/
def P11598565116195939638.Spec : Prop :=
  ∀ n, P11598565116195939638.a n = A024832 (n + 2)

end A024832

/-! ## A024832.P9103889728268844716

`A083479(A071111(n+3))`
-/

namespace A024832.P9103889728268844716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A071111 (n + 3)).toNat

end

end A024832.P9103889728268844716

namespace A024832

/-- `A083479(A071111(n+3))` -/
def P9103889728268844716.Spec : Prop :=
  ∀ n, P9103889728268844716.a n = A024832 (n + 2)

end A024832

/-!
# A024834: a(n) = least m such that if r and s in {1/1, 1/3, 1/5, ..., 1/(2n-1)} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

The programs for A024834, there is no canonical definition to state claims against.
-/

/-! ## A024834.P15380436694754817665

`A001000(2*n+3)-A004547(A297506(3*n+5)+1)`
-/

namespace A024834.P15380436694754817665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (2 * n + 3) - A004547 (A297506 (3 * n + 5) + 1).toNat

end

end A024834.P15380436694754817665

/-! ## A024834.P10955844474984364006

`A200272(A024819(2*(n+2))+2)`
-/

namespace A024834.P10955844474984364006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (A024819 (2 * (n + 2)) + 2).toNat

end

end A024834.P10955844474984364006

/-! ## A024834.P8984704199270625754

`A130861(n+1)+A048284(A146603(n+2))`
-/

namespace A024834.P8984704199270625754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130861 (n + 1) + A048284 (A146603 (n + 2)).toNat

end

end A024834.P8984704199270625754

/-!
# A024835: a(n) = least m such that if r and s in {1/2, 1/4, 1/6, ..., 1/2n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

The programs for A024835, the canonical program `A024835.P2659846960157059613` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024835 has offset 2).

The definition of A024835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024835.P2659846960157059613

`or(1, A043548(2*(n+1)+2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024835

/-- `or(1, A043548(2*(n+1)+2))` -/
def P2659846960157059613.Spec : Prop :=
  ∀ n, P2659846960157059613.a n = A024835 (n + 2)

theorem P2659846960157059613.correct : P2659846960157059613.Spec := by
  intro n
  simp only [A024835, Nat.add_sub_cancel]

end A024835

/-! ## A024835.P10030039400948862961

`ceil(A024839(n+2)/2)`
-/

namespace A024835.P10030039400948862961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024839 (n + 2) : ℚ) / 2⌉

end

end A024835.P10030039400948862961

namespace A024835

/-- `ceil(A024839(n+2)/2)` -/
def P10030039400948862961.Spec : Prop :=
  ∀ n, P10030039400948862961.a n = A024835 (n + 2)

end A024835

/-! ## A024835.P9420992506159654296

`(A024839(n+2)+1)/A006530(Δ[A007310(n+1)])`
-/

namespace A024835.P9420992506159654296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024839 (n + 2) + 1 : ℚ) / (A006530 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A024835.P9420992506159654296

namespace A024835

/-- `(A024839(n+2)+1)/A006530(Δ[A007310(n+1)])` -/
def P9420992506159654296.Spec : Prop :=
  ∀ n, P9420992506159654296.a n = (A024835 (n + 2) : ℚ)

end A024835

/-! ## A024835.P12631931175301099250

`(2*A024838(n+2)+1)/3`
-/

namespace A024835.P12631931175301099250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A024838 (n + 2) + 1 : ℚ) / 3

end

end A024835.P12631931175301099250

namespace A024835

/-- `(2*A024838(n+2)+1)/3` -/
def P12631931175301099250.Spec : Prop :=
  ∀ n, P12631931175301099250.a n = (A024835 (n + 2) : ℚ)

end A024835

/-! ## A024835.P2594796672091543098

`2*A024838(n+2)-A024839(n+2)`
-/

namespace A024835.P2594796672091543098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024838 (n + 2) - A024839 (n + 2)

end

end A024835.P2594796672091543098

namespace A024835

/-- `2*A024838(n+2)-A024839(n+2)` -/
def P2594796672091543098.Spec : Prop :=
  ∀ n, P2594796672091543098.a n = A024835 (n + 2)

end A024835

/-! ## A024835.P17963950011997490314

`A273943(A024839(n+2)+1)`
-/

namespace A024835.P17963950011997490314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A024839 (n + 2) + 1).toNat

end

end A024835.P17963950011997490314

namespace A024835

/-- `A273943(A024839(n+2)+1)` -/
def P17963950011997490314.Spec : Prop :=
  ∀ n, P17963950011997490314.a n = A024835 (n + 2)

end A024835

/-! ## A024835.P15568753225715109553

`A000265(A024839(n+2)+1)`
-/

namespace A024835.P15568753225715109553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024839 (n + 2) + 1).toNat

end

end A024835.P15568753225715109553

namespace A024835

/-- `A000265(A024839(n+2)+1)` -/
def P15568753225715109553.Spec : Prop :=
  ∀ n, P15568753225715109553.a n = A024835 (n + 2)

end A024835

/-! ## A024835.P6116794436190552632

`A014682(A024839(n+2)+1)`
-/

namespace A024835.P6116794436190552632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024839 (n + 2) + 1).toNat

end

end A024835.P6116794436190552632

namespace A024835

/-- `A014682(A024839(n+2)+1)` -/
def P6116794436190552632.Spec : Prop :=
  ∀ n, P6116794436190552632.a n = A024835 (n + 2)

end A024835

/-! ## A024835.P1464245805361904166

`A171435(A024839(n+2)+1)`
-/

namespace A024835.P1464245805361904166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A024839 (n + 2) + 1).toNat

end

end A024835.P1464245805361904166

namespace A024835

/-- `A171435(A024839(n+2)+1)` -/
def P1464245805361904166.Spec : Prop :=
  ∀ n, P1464245805361904166.a n = A024835 (n + 2)

end A024835

/-! ## A024835.P10986532132589165840

`A319702(A024839(n+2)-2)`
-/

namespace A024835.P10986532132589165840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A024839 (n + 2) - 2).toNat

end

end A024835.P10986532132589165840

namespace A024835

/-- `A319702(A024839(n+2)-2)` -/
def P10986532132589165840.Spec : Prop :=
  ∀ n, P10986532132589165840.a n = A024835 (n + 2)

end A024835

/-!
# A024836: a(n) = least m such that if r and s in {1/1, 1/4, 1/7, ..., 1/(3n-2)} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

The programs for A024836, there is no canonical definition to state claims against.
-/

/-! ## A024836.P16948239807677755032

`A050320(A000108(n+4))+A033951(n)`
-/

namespace A024836.P16948239807677755032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A000108 (n + 4)).toNat + A033951 n

end

end A024836.P16948239807677755032

/-! ## A024836.P17155102546605584912

`A299281(n)+A285721(A051836(2*(n+1)))`
-/

namespace A024836.P17155102546605584912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299281 n + A285721 (A051836 (2 * (n + 1))).toNat

end

end A024836.P17155102546605584912

/-!
# A024837: a(n) = least m such that if r and s in {1/2, 1/5, 1/8, ..., 1/(3n-1)} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

The programs for A024837, there is no canonical definition to state claims against.
-/

/-! ## A024837.P16920907546416561763

`∑[∩[A056576(2*n+3), A095371(n+1)]]`
-/

namespace A024837.P16920907546416561763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095371 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024837.P16920907546416561763

/-!
# A024838: Least m such that if r and s in {1/3, 1/6, 1/9, ..., 1/3n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

The programs for A024838, the canonical program `A024838.P16764802098399120150` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024838 has offset 2).

The definition of A024838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024838.P16764802098399120150

`floor(3/2*A024835(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024838

/-- `floor(3/2*A024835(n+2))` -/
def P16764802098399120150.Spec : Prop :=
  ∀ n, P16764802098399120150.a n = A024838 (n + 2)

theorem P16764802098399120150.correct : P16764802098399120150.Spec := by
  intro n
  simp only [A024838, Nat.add_sub_cancel]

end A024838

/-! ## A024838.P2744152121217169256

`A024835(n+2)²%A024839(n+2)`
-/

namespace A024838.P2744152121217169256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024835 (n + 2) ^ 2) (A024839 (n + 2))

end

end A024838.P2744152121217169256

namespace A024838

/-- `A024835(n+2)²%A024839(n+2)` -/
def P2744152121217169256.Spec : Prop :=
  ∀ n, P2744152121217169256.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P3851513096263982865

`or(1, A043548(A103517(n+1)))²%A024839(n+2)`
-/

namespace A024838.P3851513096263982865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A043548 (A103517 (n + 1)).toNat) ^ 2) (A024839 (n + 2))

end

end A024838.P3851513096263982865

namespace A024838

/-- `or(1, A043548(A103517(n+1)))²%A024839(n+2)` -/
def P3851513096263982865.Spec : Prop :=
  ∀ n, P3851513096263982865.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P8850325054730744248

`A273943(A024835(n+2)-1)+A024835(n+2)`
-/

namespace A024838.P8850325054730744248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A024835 (n + 2) - 1).toNat + A024835 (n + 2)

end

end A024838.P8850325054730744248

namespace A024838

/-- `A273943(A024835(n+2)-1)+A024835(n+2)` -/
def P8850325054730744248.Spec : Prop :=
  ∀ n, P8850325054730744248.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P10038169721673262651

`A014682(A024835(n+2))-1`
-/

namespace A024838.P10038169721673262651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024835 (n + 2)).toNat - 1

end

end A024838.P10038169721673262651

namespace A024838

/-- `A014682(A024835(n+2))-1` -/
def P10038169721673262651.Spec : Prop :=
  ∀ n, P10038169721673262651.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P7864559686444477463

`A014682(ceil(A024839(n+2)/2))-1`
-/

namespace A024838.P7864559686444477463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ⌈(A024839 (n + 2) : ℚ) / 2⌉.toNat - 1

end

end A024838.P7864559686444477463

namespace A024838

/-- `A014682(ceil(A024839(n+2)/2))-1` -/
def P7864559686444477463.Spec : Prop :=
  ∀ n, P7864559686444477463.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P9483614454547250335

`A057428(n+1)+A014682(A024835(n+2))`
-/

namespace A024838.P9483614454547250335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A014682 (A024835 (n + 2)).toNat

end

end A024838.P9483614454547250335

namespace A024838

/-- `A057428(n+1)+A014682(A024835(n+2))` -/
def P9483614454547250335.Spec : Prop :=
  ∀ n, P9483614454547250335.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P16767302285315305852

`A300547(2*n+1)+A014682(A024835(n+2))`
-/

namespace A024838.P16767302285315305852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (2 * n + 1) + A014682 (A024835 (n + 2)).toNat

end

end A024838.P16767302285315305852

namespace A024838

/-- `A300547(2*n+1)+A014682(A024835(n+2))` -/
def P16767302285315305852.Spec : Prop :=
  ∀ n, P16767302285315305852.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P14976325276342982112

`A260196(A016897(n))+A014682(A024835(n+2))`
-/

namespace A024838.P14976325276342982112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A016897 n).toNat + A014682 (A024835 (n + 2)).toNat

end

end A024838.P14976325276342982112

namespace A024838

/-- `A260196(A016897(n))+A014682(A024835(n+2))` -/
def P14976325276342982112.Spec : Prop :=
  ∀ n, P14976325276342982112.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P11770756833364002897

`A280193(A076877(n+1))+A014682(A024835(n+2))`
-/

namespace A024838.P11770756833364002897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A076877 (n + 1)).toNat + A014682 (A024835 (n + 2)).toNat

end

end A024838.P11770756833364002897

namespace A024838

/-- `A280193(A076877(n+1))+A014682(A024835(n+2))` -/
def P11770756833364002897.Spec : Prop :=
  ∀ n, P11770756833364002897.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P13151985126289603972

`A033999(A031131(n+2)+1)+A014682(A024835(n+2))`
-/

namespace A024838.P13151985126289603972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A031131 (n + 2) + 1).toNat + A014682 (A024835 (n + 2)).toNat

end

end A024838.P13151985126289603972

namespace A024838

/-- `A033999(A031131(n+2)+1)+A014682(A024835(n+2))` -/
def P13151985126289603972.Spec : Prop :=
  ∀ n, P13151985126289603972.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P16706901233850143791

`A106479(A014963(2*(n+1)))+A014682(A024835(n+2))`
-/

namespace A024838.P16706901233850143791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (A014963 (2 * (n + 1))).toNat + A014682 (A024835 (n + 2)).toNat

end

end A024838.P16706901233850143791

namespace A024838

/-- `A106479(A014963(2*(n+1)))+A014682(A024835(n+2))` -/
def P16706901233850143791.Spec : Prop :=
  ∀ n, P16706901233850143791.a n = A024838 (n + 2)

end A024838

/-! ## A024838.P14448623801520796210

`A014682(A024839(n+2))/2`
-/

namespace A024838.P14448623801520796210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A024839 (n + 2)).toNat : ℚ) / 2

end

end A024838.P14448623801520796210

namespace A024838

/-- `A014682(A024839(n+2))/2` -/
def P14448623801520796210.Spec : Prop :=
  ∀ n, P14448623801520796210.a n = (A024838 (n + 2) : ℚ)

end A024838

/-! ## A024838.P10322345141933781193

`A273943(A024839(n+2)+A024835(n+2))`
-/

namespace A024838.P10322345141933781193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A024839 (n + 2) + A024835 (n + 2)).toNat

end

end A024838.P10322345141933781193

namespace A024838

/-- `A273943(A024839(n+2)+A024835(n+2))` -/
def P10322345141933781193.Spec : Prop :=
  ∀ n, P10322345141933781193.a n = A024838 (n + 2)

end A024838

/-!
# A024839: Least m such that if r and s in {1/4, 1/8, 1/12, ..., 1/4n} satisfy r < s, then r < k/m < (k+1)/m < s for some integer k.

The programs for A024839, the canonical program `A024839.P430240173223612655` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024839 has offset 2).

The definition of A024839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024839.P430240173223612655

`2*A024835(n+2)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024839

/-- `2*A024835(n+2)-1` -/
def P430240173223612655.Spec : Prop :=
  ∀ n, P430240173223612655.a n = A024839 (n + 2)

theorem P430240173223612655.correct : P430240173223612655.Spec := by
  intro n
  simp only [A024839, Nat.add_sub_cancel]

end A024839

/-! ## A024839.P17809048486951677164

`A008683(A007918(n))+2*A024835(n+2)`
-/

namespace A024839.P17809048486951677164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 2 * A024835 (n + 2)

end

end A024839.P17809048486951677164

namespace A024839

/-- `A008683(A007918(n))+2*A024835(n+2)` -/
def P17809048486951677164.Spec : Prop :=
  ∀ n, P17809048486951677164.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P10204947991544169422

`A260196(A016897(n))+2*A024835(n+2)`
-/

namespace A024839.P10204947991544169422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A016897 n).toNat + 2 * A024835 (n + 2)

end

end A024839.P10204947991544169422

namespace A024839

/-- `A260196(A016897(n))+2*A024835(n+2)` -/
def P10204947991544169422.Spec : Prop :=
  ∀ n, P10204947991544169422.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P1008939141309701152

`A321800(A332550(n))+2*A024835(n+2)`
-/

namespace A024839.P1008939141309701152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A332550 n).toNat + 2 * A024835 (n + 2)

end

end A024839.P1008939141309701152

namespace A024839

/-- `A321800(A332550(n))+2*A024835(n+2)` -/
def P1008939141309701152.Spec : Prop :=
  ∀ n, P1008939141309701152.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P4046495796047178991

`xor(2*A024835(n+2), A135481(A017101(n)))`
-/

namespace A024839.P4046495796047178991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A024835 (n + 2)) (A135481 (A017101 n).toNat)

end

end A024839.P4046495796047178991

namespace A024839

/-- `xor(2*A024835(n+2), A135481(A017101(n)))` -/
def P4046495796047178991.Spec : Prop :=
  ∀ n, P4046495796047178991.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P9842732313046536567

`A008683(A001097(n+1))+2*A024835(n+2)`
-/

namespace A024839.P9842732313046536567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat + 2 * A024835 (n + 2)

end

end A024839.P9842732313046536567

namespace A024839

/-- `A008683(A001097(n+1))+2*A024835(n+2)` -/
def P9842732313046536567.Spec : Prop :=
  ∀ n, P9842732313046536567.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P10513327210128888577

`A008683(A001359(n+1))+2*A024835(n+2)`
-/

namespace A024839.P10513327210128888577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + 2 * A024835 (n + 2)

end

end A024839.P10513327210128888577

namespace A024839

/-- `A008683(A001359(n+1))+2*A024835(n+2)` -/
def P10513327210128888577.Spec : Prop :=
  ∀ n, P10513327210128888577.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P15328189105671130213

`A280193(A076877(n+1))+2*A024835(n+2)`
-/

namespace A024839.P15328189105671130213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A076877 (n + 1)).toNat + 2 * A024835 (n + 2)

end

end A024839.P15328189105671130213

namespace A024839

/-- `A280193(A076877(n+1))+2*A024835(n+2)` -/
def P15328189105671130213.Spec : Prop :=
  ∀ n, P15328189105671130213.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P15555930708347121612

`or(2, A024820(2*(n+2)))-2`
-/

namespace A024839.P15555930708347121612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A024820 (2 * (n + 2))) - 2

end

end A024839.P15555930708347121612

namespace A024839

/-- `or(2, A024820(2*(n+2)))-2` -/
def P15555930708347121612.Spec : Prop :=
  ∀ n, P15555930708347121612.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P17564539826996369834

`A024835(n+2)+A000027(A024835(n+2)-1)`
-/

namespace A024839.P17564539826996369834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024835 (n + 2) + A000027 (A024835 (n + 2) - 1).toNat

end

end A024839.P17564539826996369834

namespace A024839

/-- `A024835(n+2)+A000027(A024835(n+2)-1)` -/
def P17564539826996369834.Spec : Prop :=
  ∀ n, P17564539826996369834.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P6993528689708688909

`A024835(n+2)+A000027(xor(1, A024835(n+2)))`
-/

namespace A024839.P6993528689708688909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024835 (n + 2) + A000027 (Int.xor 1 (A024835 (n + 2))).toNat

end

end A024839.P6993528689708688909

namespace A024839

/-- `A024835(n+2)+A000027(xor(1, A024835(n+2)))` -/
def P6993528689708688909.Spec : Prop :=
  ∀ n, P6993528689708688909.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P13728444873727152062

`A000027(lcm(2, A024835(n+2))-1)`
-/

namespace A024839.P13728444873727152062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm 2 (A024835 (n + 2)) - 1)

end

end A024839.P13728444873727152062

namespace A024839

/-- `A000027(lcm(2, A024835(n+2))-1)` -/
def P13728444873727152062.Spec : Prop :=
  ∀ n, P13728444873727152062.a n = A024839 (n + 2)

end A024839

/-! ## A024839.P12227411903804594333

`A000027(xor(3, 2*A024835(n+2)))`
-/

namespace A024839.P12227411903804594333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 3 (2 * A024835 (n + 2))).toNat

end

end A024839.P12227411903804594333

namespace A024839

/-- `A000027(xor(3, 2*A024835(n+2)))` -/
def P12227411903804594333.Spec : Prop :=
  ∀ n, P12227411903804594333.a n = A024839 (n + 2)

end A024839

/-!
# A024840: a(n) = least m such that if r and s in {1/1, 1/2, 1/3, ..., 1/n} satisfy r < s, then r < k/m < (k+2)/m < s for some integer k.

The programs for A024840, there is no canonical definition to state claims against.
-/

/-! ## A024840.P15892656201538159222

`A144328(A072214(n))+∑[4*n+6]`
-/

namespace A024840.P15892656201538159222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A072214 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024840.P15892656201538159222

/-! ## A024840.P1909178903455044537

`or(A056220(n+2), A309892(A003319(n)))`
-/

namespace A024840.P1909178903455044537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056220 (n + 2)) (A309892 (A003319 n).toNat)

end

end A024840.P1909178903455044537

/-! ## A024840.P17463144942929782139

`or(A056220(n+2), A278987(A189076(n)))`
-/

namespace A024840.P17463144942929782139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056220 (n + 2)) (A278987 (A189076 n).toNat)

end

end A024840.P17463144942929782139

/-!
# A024841: a(n) = least m such that if r and s in {1/1, 1/3, 1/5, ..., 1/(2n-1)} satisfy r < s, then r < k/m < (k+2)/m < s for some integer k.

The programs for A024841, there is no canonical definition to state claims against.
-/

/-! ## A024841.P12318137943085852198

`A359966(A008982(n))+A028387(2*n+1)`
-/

namespace A024841.P12318137943085852198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359966 (A008982 n).toNat + A028387 (2 * n + 1)

end

end A024841.P12318137943085852198

/-! ## A024841.P15973264964732595221

`A125750((n+1)*(2*n+3))`
-/

namespace A024841.P15973264964732595221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125750 ((n + 1) * (2 * n + 3))

end

end A024841.P15973264964732595221

/-!
# A024842: a(n) = least m such that if r and s in {1/2, 1/4, 1/6, ..., 1/2n} satisfy r < s, then r < k/m < (k+2)/m < s for some integer k.

The programs for A024842, there is no canonical definition to state claims against.
-/

/-! ## A024842.P8171238854246991011

`A185284(n²)+A028387(2*(n+1))`
-/

namespace A024842.P8171238854246991011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2) + A028387 (2 * (n + 1))

end

end A024842.P8171238854246991011

/-! ## A024842.P4690970664299020689

`A374706(A251075(n))+A028387(2*(n+1))`
-/

namespace A024842.P4690970664299020689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (A251075 n).toNat + A028387 (2 * (n + 1))

end

end A024842.P4690970664299020689

/-!
# A024843: a(n) = least m such that if r and s in {1/1, 1/2, 1/3, ..., 1/n} satisfy r < s, then r < k/m < (k+3)/m < s for some integer k.

The programs for A024843, there is no canonical definition to state claims against.
-/

/-! ## A024843.P9390703564309969106

`Δ[n*A334116((n+2)²)]`
-/

namespace A024843.P9390703564309969106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A334116 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024843.P9390703564309969106

/-! ## A024843.P3185830326424844095

`A099375(∑[C(3*n+5, 3)])`
-/

namespace A024843.P3185830326424844095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 5) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024843.P3185830326424844095

/-! ## A024843.P10333437803414894396

`Δ[n*record[A158440(n+1)²]]`
-/

namespace A024843.P10333437803414894396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158440 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024843.P10333437803414894396

/-! ## A024843.P387487121913164239

`Δ[(n+1)*A184427((n+1)²)]`
-/

namespace A024843.P387487121913164239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A184427 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024843.P387487121913164239

/-! ## A024843.P9466866184588987112

`A099375(A024391(n+1))`
-/

namespace A024843.P9466866184588987112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A024391 (n + 1)).toNat

end

end A024843.P9466866184588987112

/-!
# A024844: a(n) = least m such that if r and s in {1/1, 1/3, 1/5, ..., 1/(2n-1)} satisfy r < s, then r < k/m < (k+3)/m < s for some integer k.

The programs for A024844, there is no canonical definition to state claims against.
-/

/-! ## A024844.P1914590645586638479

`∑[12*n+7]+A001222(4^n)`
-/

namespace A024844.P1914590645586638479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A001222 (4 ^ n)

end

end A024844.P1914590645586638479

/-! ## A024844.P11835705503508724006

`3*(n+2)*A000005(4^n)+1`
-/

namespace A024844.P11835705503508724006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) : ℤ) * A000005 (4 ^ n) + 1

end

end A024844.P11835705503508724006

/-! ## A024844.P1665234500908883837

`∏{e}[A007283(2*n+1), C(#+2, 2)]-2`
-/

namespace A024844.P1665234500908883837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (Nat.factorization (f1 n).natAbs p + 2) 2 : ℕ) : ℤ) - 2

end

end A024844.P1665234500908883837

/-! ## A024844.P14645752560697734391

`record[A123684(A125199(n+2))]`
-/

namespace A024844.P14645752560697734391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A125199 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024844.P14645752560697734391

/-! ## A024844.P12599115976302953484

`A195319(A032555(n+1))-2`
-/

namespace A024844.P12599115976302953484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 (A032555 (n + 1)).toNat - 2

end

end A024844.P12599115976302953484

/-!
# A024845: a(n) = least m such that if r and s in {1/2, 1/4, 1/6, ..., 1/(2*n)} satisfy r < s, then r < k/m < (k+3)/m < s for some integer k.

The programs for A024845, there is no canonical definition to state claims against.
-/

/-! ## A024845.P8787758067225114181

`Δ[n*record[A128225(n+2)]]`
-/

namespace A024845.P8787758067225114181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128225 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024845.P8787758067225114181

/-! ## A024845.P6306968853434954045

`∑[A337108((12*(n+1))²)+3]+1`
-/

namespace A024845.P6306968853434954045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 ((12 * (n + 1)) ^ 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024845.P6306968853434954045

/-! ## A024845.P1696463458461717054

`∑[A045506(A004768(n))]+1`
-/

namespace A024845.P1696463458461717054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 (A004768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024845.P1696463458461717054

/-! ## A024845.P15505983051478389649

`A239325(A032551(n+1)+1)`
-/

namespace A024845.P15505983051478389649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239325 (A032551 (n + 1) + 1).toNat

end

end A024845.P15505983051478389649

/-!
# A024846: a(n) = least m such that if r and s in {1/1, 1/2, 1/3, ..., 1/n} satisfy r < s, then r < k/m < (k+4)/m < s for some integer k.

The programs for A024846, there is no canonical definition to state claims against.
-/

/-! ## A024846.P4618408267356903150

`A164004(2*(n+1))+gcd(A017653(n), A064731(n+1))`
-/

namespace A024846.P4618408267356903150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164004 (2 * (n + 1)) + (Int.gcd (A017653 n) (A064731 (n + 1)) : ℤ)

end

end A024846.P4618408267356903150

/-! ## A024846.P815457836059388609

`A347954(10*2^n)`
-/

namespace A024846.P815457836059388609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347954 (10 * 2 ^ n)

end

end A024846.P815457836059388609

/-! ## A024846.P2094155860476192054

`A082108((n+1)^gcd(11, n))`
-/

namespace A024846.P2094155860476192054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 ((n + 1) ^ Nat.gcd 11 n)

end

end A024846.P2094155860476192054

/-! ## A024846.P8851983914986749645

`A082108(A121775(∑[n+1]))`
-/

namespace A024846.P8851983914986749645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 (A121775 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A024846.P8851983914986749645

/-! ## A024846.P16756459874428693695

`∑[A208287(A000384(2*n+3))]+1`
-/

namespace A024846.P16756459874428693695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (A000384 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024846.P16756459874428693695

/-!
# A024847: a(n) = least m such that if r and s in {1/1, 1/3, 1/5, ..., 1/(2n-1)} satisfy r < s, then r < k/m < (k+4)/m < s for some integer k.

The programs for A024847, there is no canonical definition to state claims against.
-/

/-! ## A024847.P14872168833513449098

`A379838((2*(n+1))²)`
-/

namespace A024847.P14872168833513449098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379838 ((2 * (n + 1)) ^ 2)

end

end A024847.P14872168833513449098

/-! ## A024847.P14296417530596031025

`2*eq[2, A200192(2*(n+1))]`
-/

namespace A024847.P14296417530596031025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024847.P14296417530596031025

/-! ## A024847.P11063019690488769735

`A034856(record[xor(3, n)]^(n-∑{digits}[n, #]+1))`
-/

namespace A024847.P11063019690488769735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + 1 : ℤ))).toNat

end

end A024847.P11063019690488769735

/-! ## A024847.P4198830300252757023

`A034856(∏{e}[4*a(n-1), #+1]+1)` with `a(0)=3`
-/

namespace A024847.P4198830300252757023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1)

end

end A024847.P4198830300252757023

/-! ## A024847.P6745187233497226159

`A381737(A137507(n))`
-/

namespace A024847.P6745187233497226159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381737 (A137507 n).toNat

end

end A024847.P6745187233497226159

/-!
# A024848: a(n) = least m such that if r and s in {1/2, 1/4, 1/6, ..., 1/2n} satisfy r < s, then r < k/m < (k+4)/m < s for some integer k.

The programs for A024848, there is no canonical definition to state claims against.
-/

/-! ## A024848.P15320816189442506699

`A115510(∑[16*(n+1)+2]+1)`
-/

namespace A024848.P15320816189442506699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024848.P15320816189442506699

/-! ## A024848.P1695351401955134499

`A233583(∑[16*(n+1)]+1)+Δ[n²]+2`
-/

namespace A024848.P1695351401955134499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 2

end

end A024848.P1695351401955134499

/-! ## A024848.P8285002970753057440

`A316964(A014634(n+1))`
-/

namespace A024848.P8285002970753057440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A014634 (n + 1)).toNat

end

end A024848.P8285002970753057440

/-! ## A024848.P1695216365496420031

`A060653(A194431(n+2))`
-/

namespace A024848.P1695216365496420031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A194431 (n + 2)).toNat

end

end A024848.P1695216365496420031

/-! ## A024848.P1834625058715368007

`A233583(2*A001107(n+2))`
-/

namespace A024848.P1834625058715368007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * A001107 (n + 2)).toNat

end

end A024848.P1834625058715368007

/-!
# A024849: a(n) = least m such that if r and s in {|F(h+1)-tau*F(h)|: h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k, where F = A000045 (Fibonacci numbers) and tau = (1+sqrt(5))/2 (golden ratio).

The programs for A024849, there is no canonical definition to state claims against.
-/

/-! ## A024849.P1180608040994462194

`ceil(2*ϕ^n)`
-/

namespace A024849.P1180608040994462194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.goldenRatio ^ n⌉

end

end A024849.P1180608040994462194

/-! ## A024849.P646968088977004466

`record[ceil(∏[ϕ/a(n-1)])]` with `a(0)=2`
-/

namespace A024849.P646968088977004466
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f2 =>
  Real.goldenRatio / f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024849.P646968088977004466

/-! ## A024849.P18155159242456102705

`floor(2*ϕ^n)-(floor(acot(n))-1)`
-/

namespace A024849.P18155159242456102705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.goldenRatio ^ n⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A024849.P18155159242456102705

/-! ## A024849.P16089201564011930615

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=9, a(4)=14, a(5)=23`
-/

namespace A024849.P16089201564011930615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6, 9, 14, 23] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A024849.P16089201564011930615

/-!
# A024850: Let c(k) denote the k-th composite number and p(k) the k-th prime number; then a(n) = Sum_{i=n*(n-1)/2+1 .. n*(n+1)/2} c(i) - Sum_{i=1..n} p(i).

The programs for A024850, there is no canonical definition to state claims against.
-/

/-! ## A024850.P7625125779669588956

`A072475(n+1)-A007504(n+1)`
-/

namespace A024850.P7625125779669588956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072475 (n + 1) - A007504 (n + 1)

end

end A024850.P7625125779669588956

/-! ## A024850.P12412737139093101529

`A072475(n+1)-∑[A000040(n+1)]`
-/

namespace A024850.P12412737139093101529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072475 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024850.P12412737139093101529

/-! ## A024850.P17812968783857597452

`A072475(n+1)-∑[A001747(n+2)/2]`
-/

namespace A024850.P17812968783857597452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072475 (n + 1) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024850.P17812968783857597452

/-! ## A024850.P3737392257553707406

`A072475(n+1)-∑[p?[A007989(n)]]`
-/

namespace A024850.P3737392257553707406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072475 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024850.P3737392257553707406

/-! ## A024850.P6670349047954243847

`A072475(n+1)-∑[p?[A001057(n)]]`
-/

namespace A024850.P6670349047954243847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072475 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024850.P6670349047954243847

/-! ## A024850.P1364462104201764973

`A072475(n+1)-∑[p?[A006370(n)]]`
-/

namespace A024850.P1364462104201764973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072475 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024850.P1364462104201764973

/-!
# A024851: Least m such that if r and s in {-F(2*h) + phi*F(2*h-1): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k, where F = A000045 (Fibonacci numbers) and phi = (1+sqrt(5))/2 (golden ratio).

The programs for A024851, there is no canonical definition to state claims against.
-/

/-! ## A024851.P13524314938188661125

`ceil(ϕ^Δ[n²])`
-/

namespace A024851.P13524314938188661125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)⌉

end

end A024851.P13524314938188661125

/-! ## A024851.P11454997553753220086

`record[ceil(ϕ^xor(1, n))]`
-/

namespace A024851.P11454997553753220086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ Nat.xor 1 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024851.P11454997553753220086

/-! ## A024851.P11518356206585906084

`record[ceil(ϕ*(-ϕ)^n)]`
-/

namespace A024851.P11518356206585906084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (-Real.goldenRatio) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024851.P11518356206585906084

/-! ## A024851.P7118668926132238852

`floor(ϕ^or(1, 2*n))+1`
-/

namespace A024851.P7118668926132238852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ Nat.lor 1 (2 * n)⌋ + 1

end

end A024851.P7118668926132238852

/-! ## A024851.P7121175827606582457

`floor(ϕ^xor(1, 2*n))+1`
-/

namespace A024851.P7121175827606582457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ Nat.xor 1 (2 * n)⌋ + 1

end

end A024851.P7121175827606582457

/-!
# A024854: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = (natural numbers), t = (natural numbers >= 3).

The programs for A024854, the canonical program `A024854.P13567153877183298793` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024854 has offset 2).

The definition of A024854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024854.P13567153877183298793

`A023857(n+1)+A008805(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024854

/-- `A023857(n+1)+A008805(n)` -/
def P13567153877183298793.Spec : Prop :=
  ∀ n, P13567153877183298793.a n = A024854 (n + 2)

theorem P13567153877183298793.correct : P13567153877183298793.Spec := by
  intro n
  simp only [A024854, Nat.add_sub_cancel]

end A024854

/-! ## A024854.P12681858722559080829

`A023857(n+1)+∑[A027656(n)]`
-/

namespace A024854.P12681858722559080829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024854.P12681858722559080829

namespace A024854

/-- `A023857(n+1)+∑[A027656(n)]` -/
def P12681858722559080829.Spec : Prop :=
  ∀ n, P12681858722559080829.a n = A024854 (n + 2)

end A024854

/-! ## A024854.P2763415105796146073

`A023856(n+1)+2*A008805(n)`
-/

namespace A024854.P2763415105796146073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + 2 * A008805 n

end

end A024854.P2763415105796146073

namespace A024854

/-- `A023856(n+1)+2*A008805(n)` -/
def P2763415105796146073.Spec : Prop :=
  ∀ n, P2763415105796146073.a n = A024854 (n + 2)

theorem P2763415105796146073.correct : P2763415105796146073.Spec := by
  intro n
  simp only [A024854, Nat.add_sub_cancel, A024854.P2763415105796146073.a, A024854.P13567153877183298793.a, A008805, A008805.P1560584299711762519.a, A023856, A023856.P15128792986930131944.a, A023857, A023857.P527520079518963399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024854

/-! ## A024854.P3805021702918067530

`2*A023857(n+1)-A023856(n+1)`
-/

namespace A024854.P3805021702918067530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023857 (n + 1) - A023856 (n + 1)

end

end A024854.P3805021702918067530

namespace A024854

/-- `2*A023857(n+1)-A023856(n+1)` -/
def P3805021702918067530.Spec : Prop :=
  ∀ n, P3805021702918067530.a n = A024854 (n + 2)

theorem P3805021702918067530.correct : P3805021702918067530.Spec := by
  intro n
  simp only [A024854, Nat.add_sub_cancel, A024854.P3805021702918067530.a, A024854.P13567153877183298793.a, A008805, A008805.P1560584299711762519.a, A023856, A023856.P15128792986930131944.a, A023857, A023857.P527520079518963399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024854

/-! ## A024854.P16834857331133265297

`2*A024869(n+2)-A024875(n+2)`
-/

namespace A024854.P16834857331133265297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024869 (n + 2) - A024875 (n + 2)

end

end A024854.P16834857331133265297

namespace A024854

/-- `2*A024869(n+2)-A024875(n+2)` -/
def P16834857331133265297.Spec : Prop :=
  ∀ n, P16834857331133265297.a n = A024854 (n + 2)

theorem P16834857331133265297.correct : P16834857331133265297.Spec := by
  intro n
  simp only [A024854, Nat.add_sub_cancel, A024854.P16834857331133265297.a, A024854.P13567153877183298793.a, A008805, A008805.P1560584299711762519.a, A023857, A023857.P527520079518963399.a, A024869, A024869.P18052300217753289267.a, A024875, A024875.P2931421296640362932.a, A023856, A023856.P15128792986930131944.a, A024305, A024305.P9851003365253708199.f1, A024305.P9851003365253708199.a, A024306, A024306.P12588528845389365373.a, A008619, A008619.P16053834178911111118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024854

/-! ## A024854.P577367909461237285

`∑[A008805(n)+A005563(A027656(n))]`
-/

namespace A024854.P577367909461237285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + A005563 (A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024854.P577367909461237285

namespace A024854

/-- `∑[A008805(n)+A005563(A027656(n))]` -/
def P577367909461237285.Spec : Prop :=
  ∀ n, P577367909461237285.a n = A024854 (n + 2)

end A024854

/-! ## A024854.P8629486818083016205

`A023857(n+1)+A000217(A008619(n))`
-/

namespace A024854.P8629486818083016205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) + A000217 (A008619 n).toNat

end

end A024854.P8629486818083016205

namespace A024854

/-- `A023857(n+1)+A000217(A008619(n))` -/
def P8629486818083016205.Spec : Prop :=
  ∀ n, P8629486818083016205.a n = A024854 (n + 2)

end A024854

/-! ## A024854.P14442704644635893294

`A023856(n+1)+A008619(n)+A008619(n)²`
-/

namespace A024854.P14442704644635893294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (A008619 n + A008619 n ^ 2)

end

end A024854.P14442704644635893294

namespace A024854

/-- `A023856(n+1)+A008619(n)+A008619(n)²` -/
def P14442704644635893294.Spec : Prop :=
  ∀ n, P14442704644635893294.a n = A024854 (n + 2)

end A024854

/-! ## A024854.P9890267428454540761

`A023856(n+1)+A023857(n+1)-A023855(n+1)`
-/

namespace A024854.P9890267428454540761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (A023857 (n + 1) - A023855 (n + 1))

end

end A024854.P9890267428454540761

namespace A024854

/-- `A023856(n+1)+A023857(n+1)-A023855(n+1)` -/
def P9890267428454540761.Spec : Prop :=
  ∀ n, P9890267428454540761.a n = A024854 (n + 2)

end A024854

/-! ## A024854.P4467343796626468393

`A023857(n+1)+A049779(n+2)-A000292(n+1)`
-/

namespace A024854.P4467343796626468393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) + (A049779 (n + 2) - A000292 (n + 1))

end

end A024854.P4467343796626468393

namespace A024854

/-- `A023857(n+1)+A049779(n+2)-A000292(n+1)` -/
def P4467343796626468393.Spec : Prop :=
  ∀ n, P4467343796626468393.a n = A024854 (n + 2)

end A024854

/-! ## A024854.P12902743815368673631

`A023857(n+1)+Δ[A006918(n)]`
-/

namespace A024854.P12902743815368673631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) + (f1 (n + 1) - f1 n)

end

end A024854.P12902743815368673631

namespace A024854

/-- `A023857(n+1)+Δ[A006918(n)]` -/
def P12902743815368673631.Spec : Prop :=
  ∀ n, P12902743815368673631.a n = A024854 (n + 2)

end A024854

/-! ## A024854.P13218641680746474080

`Δ[A006918(n)/2*A020719(n)]`
-/

namespace A024854.P13218641680746474080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 n : ℚ) / 2 * (A020719 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024854.P13218641680746474080

namespace A024854

/-- `Δ[A006918(n)/2*A020719(n)]` -/
def P13218641680746474080.Spec : Prop :=
  ∀ n, P13218641680746474080.a n = (A024854 (n + 2) : ℚ)

end A024854

/-! ## A024854.P17276441801354673212

`A023855(n+1)+A008486(A008805(n))`
-/

namespace A024854.P17276441801354673212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) + A008486 (A008805 n).toNat

end

end A024854.P17276441801354673212

namespace A024854

/-- `A023855(n+1)+A008486(A008805(n))` -/
def P17276441801354673212.Spec : Prop :=
  ∀ n, P17276441801354673212.a n = A024854 (n + 2)

end A024854

/-! ## A024854.P10677927797729412021

`A213500(A000982(n+4)+2)`
-/

namespace A024854.P10677927797729412021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A000982 (n + 4) + 2).toNat

end

end A024854.P10677927797729412021

namespace A024854

/-- `A213500(A000982(n+4)+2)` -/
def P10677927797729412021.Spec : Prop :=
  ∀ n, P10677927797729412021.a n = A024854 (n + 2)

end A024854

/-!
# A024855: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = A023531.

The programs for A024855, there is no canonical definition to state claims against.
-/

/-! ## A024855.P13854744452100111552

`A008805(n)-A024856(n+2)`
-/

namespace A024855.P13854744452100111552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A024856 (n + 2)

end

end A024855.P13854744452100111552

/-! ## A024855.P5816958459143381952

`∑[A027656(n)]-A024856(n+2)`
-/

namespace A024855.P5816958459143381952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024856 (n + 2)

end

end A024855.P5816958459143381952

/-! ## A024855.P2397019851459314813

`A000217(∑[and(1, n+1)])-A024856(n+2)`
-/

namespace A024855.P2397019851459314813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - A024856 (n + 2)

end

end A024855.P2397019851459314813

/-! ## A024855.P9190115961738486127

`A000217(A008619(n))-A024856(n+2)`
-/

namespace A024855.P9190115961738486127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat - A024856 (n + 2)

end

end A024855.P9190115961738486127

/-! ## A024855.P14186683450330324479

`A024865(n+2)+A024866(n+2)-A024856(n+2)`
-/

namespace A024855.P14186683450330324479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024865 (n + 2) + (A024866 (n + 2) - A024856 (n + 2))

end

end A024855.P14186683450330324479

/-!
# A024856: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = A023532.

The programs for A024856, there is no canonical definition to state claims against.
-/

/-! ## A024856.P5250811200094782500

`A008805(n)-A024855(n+2)`
-/

namespace A024856.P5250811200094782500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A024855 (n + 2)

end

end A024856.P5250811200094782500

/-! ## A024856.P205151899704271202

`∑[A027656(n)]-A024855(n+2)`
-/

namespace A024856.P205151899704271202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024855 (n + 2)

end

end A024856.P205151899704271202

/-! ## A024856.P6100071510541411818

`A000217(∑[char[2*n]])-A024855(n+2)`
-/

namespace A024856.P6100071510541411818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - A024855 (n + 2)

end

end A024856.P6100071510541411818

/-! ## A024856.P11656909041387914844

`abs(A024855(n+2)-A000217(A008619(n)))`
-/

namespace A024856.P11656909041387914844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024855 (n + 2) - A000217 (A008619 n).toNat|

end

end A024856.P11656909041387914844

/-! ## A024856.P16953881912176551456

`A024865(n+2)+A024866(n+2)-A024855(n+2)`
-/

namespace A024856.P16953881912176551456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024865 (n + 2) + (A024866 (n + 2) - A024855 (n + 2))

end

end A024856.P16953881912176551456

/-!
# A024858: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = (Lucas numbers).

The programs for A024858, the canonical program `A024858.P7566223629686683624` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024858 has offset 2).

The definition of A024858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024858.P2954643641148890386

`A024861(n+2)+A023860(n+1)`
-/

namespace A024858.P2954643641148890386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024861 (n + 2) + A023860 (n + 1)

end

end A024858.P2954643641148890386

namespace A024858

/-- `A024861(n+2)+A023860(n+1)` -/
def P2954643641148890386.Spec : Prop :=
  ∀ n, P2954643641148890386.a n = A024858 (n + 2)

theorem P2954643641148890386.correct : P2954643641148890386.Spec := by
  intro n
  simp only [A024858, Nat.add_sub_cancel, A024858.P2954643641148890386.a, A024858.P7566223629686683624.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024861, A024861.P6522082039831877776.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024858

/-! ## A024858.P7566223629686683624

`A023864(n+1)+2*A023860(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024858

/-- `A023864(n+1)+2*A023860(n+1)` -/
def P7566223629686683624.Spec : Prop :=
  ∀ n, P7566223629686683624.a n = A024858 (n + 2)

theorem P7566223629686683624.correct : P7566223629686683624.Spec := by
  intro n
  simp only [A024858, Nat.add_sub_cancel]

end A024858

/-! ## A024858.P9248111540828249512

`A024309(n+1)+A024861(n+2)-A129361(n)`
-/

namespace A024858.P9248111540828249512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 1) + (A024861 (n + 2) - A129361 n)

end

end A024858.P9248111540828249512

namespace A024858

/-- `A024309(n+1)+A024861(n+2)-A129361(n)` -/
def P9248111540828249512.Spec : Prop :=
  ∀ n, P9248111540828249512.a n = A024858 (n + 2)

theorem P9248111540828249512.correct : P9248111540828249512.Spec := by
  intro n
  simp only [A024858, Nat.add_sub_cancel, A024858.P9248111540828249512.a, A024858.P7566223629686683624.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024861, A024861.P6522082039831877776.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024858

/-! ## A024858.P3018369915578120823

`A024861(n+2)+A024861(n+2)-A023864(n+1)`
-/

namespace A024858.P3018369915578120823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024861 (n + 2) + (A024861 (n + 2) - A023864 (n + 1))

end

end A024858.P3018369915578120823

namespace A024858

/-- `A024861(n+2)+A024861(n+2)-A023864(n+1)` -/
def P3018369915578120823.Spec : Prop :=
  ∀ n, P3018369915578120823.a n = A024858 (n + 2)

theorem P3018369915578120823.correct : P3018369915578120823.Spec := by
  intro n
  simp only [A024858, Nat.add_sub_cancel, A024858.P3018369915578120823.a, A024858.P7566223629686683624.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024861, A024861.P6522082039831877776.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024858

/-! ## A024858.P17619812349965289217

`2*A024861(n+2)-A023864(n+1)`
-/

namespace A024858.P17619812349965289217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024861 (n + 2) - A023864 (n + 1)

end

end A024858.P17619812349965289217

namespace A024858

/-- `2*A024861(n+2)-A023864(n+1)` -/
def P17619812349965289217.Spec : Prop :=
  ∀ n, P17619812349965289217.a n = A024858 (n + 2)

theorem P17619812349965289217.correct : P17619812349965289217.Spec := by
  intro n
  simp only [A024858, Nat.add_sub_cancel, A024858.P17619812349965289217.a, A024858.P7566223629686683624.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024861, A024861.P6522082039831877776.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024858

/-! ## A024858.P5214267031115673607

`A024873(n+2)+A024873(n+2)-A024877(n+2)`
-/

namespace A024858.P5214267031115673607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024873 (n + 2) + (A024873 (n + 2) - A024877 (n + 2))

end

end A024858.P5214267031115673607

namespace A024858

/-- `A024873(n+2)+A024873(n+2)-A024877(n+2)` -/
def P5214267031115673607.Spec : Prop :=
  ∀ n, P5214267031115673607.a n = A024858 (n + 2)

theorem P5214267031115673607.correct : P5214267031115673607.Spec := by
  intro n
  simp only [A024858, Nat.add_sub_cancel, A024858.P5214267031115673607.a, A024858.P7566223629686683624.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024873, A024873.P15411452994750175105.a, A024877, A024877.P16584012869159844224.a, A014286, A014286.P3857901398610574397.a, A024309, A024309.P18160775639560700928.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024872, A024872.P6809425359056890803.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A020695, A020695.P5292720263086745780.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024858

/-! ## A024858.P1607574364747554221

`2*A024873(n+2)-A024877(n+2)`
-/

namespace A024858.P1607574364747554221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024873 (n + 2) - A024877 (n + 2)

end

end A024858.P1607574364747554221

namespace A024858

/-- `2*A024873(n+2)-A024877(n+2)` -/
def P1607574364747554221.Spec : Prop :=
  ∀ n, P1607574364747554221.a n = A024858 (n + 2)

theorem P1607574364747554221.correct : P1607574364747554221.Spec := by
  intro n
  simp only [A024858, Nat.add_sub_cancel, A024858.P1607574364747554221.a, A024858.P7566223629686683624.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024873, A024873.P15411452994750175105.a, A024877, A024877.P16584012869159844224.a, A014286, A014286.P3857901398610574397.a, A024309, A024309.P18160775639560700928.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024872, A024872.P6809425359056890803.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A020695, A020695.P5292720263086745780.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024858

/-!
# A024861: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = (F(2), F(3), F(4), ... ).

The programs for A024861, the canonical program `A024861.P6522082039831877776` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024861 has offset 2).

The definition of A024861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024861.P5464565577247835951

`round(ϕ*A023864(n+1))`
-/

namespace A024861.P5464565577247835951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A023864 (n + 1) : ℝ))

end

end A024861.P5464565577247835951

namespace A024861

/-- `round(ϕ*A023864(n+1))` -/
def P5464565577247835951.Spec : Prop :=
  ∀ n, P5464565577247835951.a n = A024861 (n + 2)

end A024861

/-! ## A024861.P6522082039831877776

`A023864(n+1)+A023860(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024861

/-- `A023864(n+1)+A023860(n+1)` -/
def P6522082039831877776.Spec : Prop :=
  ∀ n, P6522082039831877776.a n = A024861 (n + 2)

theorem P6522082039831877776.correct : P6522082039831877776.Spec := by
  intro n
  simp only [A024861, Nat.add_sub_cancel]

end A024861

/-! ## A024861.P7234651412012919001

`A023864(n+1)+A024309(n+1)-A129361(n)`
-/

namespace A024861.P7234651412012919001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + (A024309 (n + 1) - A129361 n)

end

end A024861.P7234651412012919001

namespace A024861

/-- `A023864(n+1)+A024309(n+1)-A129361(n)` -/
def P7234651412012919001.Spec : Prop :=
  ∀ n, P7234651412012919001.a n = A024861 (n + 2)

theorem P7234651412012919001.correct : P7234651412012919001.Spec := by
  intro n
  simp only [A024861, Nat.add_sub_cancel, A024861.P7234651412012919001.a, A024861.P6522082039831877776.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024861

/-! ## A024861.P638043786469565611

`A024858(n+2)-A023860(n+1)`
-/

namespace A024861.P638043786469565611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024858 (n + 2) - A023860 (n + 1)

end

end A024861.P638043786469565611

namespace A024861

/-- `A024858(n+2)-A023860(n+1)` -/
def P638043786469565611.Spec : Prop :=
  ∀ n, P638043786469565611.a n = A024861 (n + 2)

theorem P638043786469565611.correct : P638043786469565611.Spec := by
  intro n
  simp only [A024861, Nat.add_sub_cancel, A024861.P638043786469565611.a, A024861.P6522082039831877776.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024858, A024858.P7566223629686683624.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024861

/-! ## A024861.P220210249164266625

`3*A023864(n+1)-A023861(n+1)`
-/

namespace A024861.P220210249164266625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023864 (n + 1) - A023861 (n + 1)

end

end A024861.P220210249164266625

namespace A024861

/-- `3*A023864(n+1)-A023861(n+1)` -/
def P220210249164266625.Spec : Prop :=
  ∀ n, P220210249164266625.a n = A024861 (n + 2)

theorem P220210249164266625.correct : P220210249164266625.Spec := by
  intro n
  simp only [A024861, Nat.add_sub_cancel, A024861.P220210249164266625.a, A024861.P6522082039831877776.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023861, A023861.P14188661982875319503.a, A023864, A023864.P1322139053120086111.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024861

/-! ## A024861.P16856054811318674722

`2*A024874(n+2)-A024878(n+2)`
-/

namespace A024861.P16856054811318674722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024874 (n + 2) - A024878 (n + 2)

end

end A024861.P16856054811318674722

namespace A024861

/-- `2*A024874(n+2)-A024878(n+2)` -/
def P16856054811318674722.Spec : Prop :=
  ∀ n, P16856054811318674722.a n = A024861 (n + 2)

theorem P16856054811318674722.correct : P16856054811318674722.Spec := by
  intro n
  simp only [A024861, Nat.add_sub_cancel, A024861.P16856054811318674722.a, A024861.P6522082039831877776.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024874, A024874.P7651549887830111041.a, A024878, A024878.P13264414261582248090.a, A014286, A014286.P3857901398610574397.a, A024309, A024309.P18160775639560700928.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024872, A024872.P6809425359056890803.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A020695, A020695.P5292720263086745780.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024861

/-!
# A024862: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = natural numbers, t = odd natural numbers.

The programs for A024862, the canonical program `A024862.P18283074201215668358` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024862 has offset 2).

The definition of A024862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024862.P8255516580698798818

`A049779(n+2)+A027656(n)²`
-/

namespace A024862.P8255516580698798818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049779 (n + 2) + A027656 n ^ 2

end

end A024862.P8255516580698798818

namespace A024862

/-- `A049779(n+2)+A027656(n)²` -/
def P8255516580698798818.Spec : Prop :=
  ∀ n, P8255516580698798818.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P18283074201215668358

`A023856(n+1)+A023855(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024862

/-- `A023856(n+1)+A023855(n+1)` -/
def P18283074201215668358.Spec : Prop :=
  ∀ n, P18283074201215668358.a n = A024862 (n + 2)

theorem P18283074201215668358.correct : P18283074201215668358.Spec := by
  intro n
  simp only [A024862, Nat.add_sub_cancel]

end A024862

/-! ## A024862.P3984605395921500006

`A338429(n+1)-A394279(n+1)`
-/

namespace A024862.P3984605395921500006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338429 (n + 1) - A394279 (n + 1)

end

end A024862.P3984605395921500006

namespace A024862

/-- `A338429(n+1)-A394279(n+1)` -/
def P3984605395921500006.Spec : Prop :=
  ∀ n, P3984605395921500006.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P15921814923576262420

`A008805(n)+2*A023855(n+1)`
-/

namespace A024862.P15921814923576262420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + 2 * A023855 (n + 1)

end

end A024862.P15921814923576262420

namespace A024862

/-- `A008805(n)+2*A023855(n+1)` -/
def P15921814923576262420.Spec : Prop :=
  ∀ n, P15921814923576262420.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P13107110836384663279

`2*A023856(n+1)-A008805(n)`
-/

namespace A024862.P13107110836384663279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023856 (n + 1) - A008805 n

end

end A024862.P13107110836384663279

namespace A024862

/-- `2*A023856(n+1)-A008805(n)` -/
def P13107110836384663279.Spec : Prop :=
  ∀ n, P13107110836384663279.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P18364489489692788249

`A023856(n+1)+A006918(or(1, n))+A006918(n)`
-/

namespace A024862.P18364489489692788249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (A006918 (Nat.lor 1 n) + A006918 n)

end

end A024862.P18364489489692788249

namespace A024862

/-- `A023856(n+1)+A006918(or(1, n))+A006918(n)` -/
def P18364489489692788249.Spec : Prop :=
  ∀ n, P18364489489692788249.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P14582050563757174927

`A023856(n+1)+A006918(n)+∑[A027656(n)²]`
-/

namespace A024862.P14582050563757174927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (A006918 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024862.P14582050563757174927

namespace A024862

/-- `A023856(n+1)+A006918(n)+∑[A027656(n)²]` -/
def P14582050563757174927.Spec : Prop :=
  ∀ n, P14582050563757174927.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P1167204346491533644

`A023856(n+1)+2*A023856(n+1)-A023857(n+1)`
-/

namespace A024862.P1167204346491533644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (2 * A023856 (n + 1) - A023857 (n + 1))

end

end A024862.P1167204346491533644

namespace A024862

/-- `A023856(n+1)+2*A023856(n+1)-A023857(n+1)` -/
def P1167204346491533644.Spec : Prop :=
  ∀ n, P1167204346491533644.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P230511448517855276

`Δ[(n+2)*A006918(n)]`
-/

namespace A024862.P230511448517855276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024862.P230511448517855276

namespace A024862

/-- `Δ[(n+2)*A006918(n)]` -/
def P230511448517855276.Spec : Prop :=
  ∀ n, P230511448517855276.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P7441405629729790230

`∑[A074378(n+1)-a(n-1)]` with `a(0)=3`
-/

namespace A024862.P7441405629729790230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A074378 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024862.P7441405629729790230

namespace A024862

/-- `∑[A074378(n+1)-a(n-1)]` -/
def P7441405629729790230.Spec : Prop :=
  ∀ n, P7441405629729790230.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P9551648917370433174

`∑[A008619(n)*A064455(n+2)]`
-/

namespace A024862.P9551648917370433174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A064455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024862.P9551648917370433174

namespace A024862

/-- `∑[A008619(n)*A064455(n+2)]` -/
def P9551648917370433174.Spec : Prop :=
  ∀ n, P9551648917370433174.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P14227778025510791972

`∑[∑[A272774(a(n-1))]*A064455(n+2)]` with `a(0)=1`
-/

namespace A024862.P14227778025510791972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A272774 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A064455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024862.P14227778025510791972

namespace A024862

/-- `∑[∑[A272774(a(n-1))]*A064455(n+2)]` -/
def P14227778025510791972.Spec : Prop :=
  ∀ n, P14227778025510791972.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P10332546557342807775

`∑[A000982(n+1)+n+1-A083392(n+1)]`
-/

namespace A024862.P10332546557342807775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + ((n + 1 : ℤ) - A083392 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024862.P10332546557342807775

namespace A024862

/-- `∑[A000982(n+1)+n+1-A083392(n+1)]` -/
def P10332546557342807775.Spec : Prop :=
  ∀ n, P10332546557342807775.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P13718276046426461079

`∑[A064455(n+2)*A064455(A052928(n)+1)]`
-/

namespace A024862.P13718276046426461079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 2) * A064455 (A052928 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024862.P13718276046426461079

namespace A024862

/-- `∑[A064455(n+2)*A064455(A052928(n)+1)]` -/
def P13718276046426461079.Spec : Prop :=
  ∀ n, P13718276046426461079.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P999462055013364057

`A006918(n+1)+A178312(n+1)+A008805(n)`
-/

namespace A024862.P999462055013364057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) + (A178312 (n + 1) + A008805 n)

end

end A024862.P999462055013364057

namespace A024862

/-- `A006918(n+1)+A178312(n+1)+A008805(n)` -/
def P999462055013364057.Spec : Prop :=
  ∀ n, P999462055013364057.a n = A024862 (n + 2)

end A024862

/-! ## A024862.P3900990245869689391

`A295287(2*n+5)/2`
-/

namespace A024862.P3900990245869689391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295287 (2 * n + 5) : ℚ) / 2

end

end A024862.P3900990245869689391

namespace A024862

/-- `A295287(2*n+5)/2` -/
def P3900990245869689391.Spec : Prop :=
  ∀ n, P3900990245869689391.a n = (A024862 (n + 2) : ℚ)

end A024862

/-! ## A024862.P7808532124284648653

`A295292(2*n+5)/2`
-/

namespace A024862.P7808532124284648653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295292 (2 * n + 5) : ℚ) / 2

end

end A024862.P7808532124284648653

namespace A024862

/-- `A295292(2*n+5)/2` -/
def P7808532124284648653.Spec : Prop :=
  ∀ n, P7808532124284648653.a n = (A024862 (n + 2) : ℚ)

end A024862

/-! ## A024862.P14463490828100802874

`A295318(2*n+5)/2`
-/

namespace A024862.P14463490828100802874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295318 (2 * n + 5) : ℚ) / 2

end

end A024862.P14463490828100802874

namespace A024862

/-- `A295318(2*n+5)/2` -/
def P14463490828100802874.Spec : Prop :=
  ∀ n, P14463490828100802874.a n = (A024862 (n + 2) : ℚ)

end A024862

/-! ## A024862.P5228534315533186084

`A295320(2*n+5)/2`
-/

namespace A024862.P5228534315533186084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295320 (2 * n + 5) : ℚ) / 2

end

end A024862.P5228534315533186084

namespace A024862

/-- `A295320(2*n+5)/2` -/
def P5228534315533186084.Spec : Prop :=
  ∀ n, P5228534315533186084.a n = (A024862 (n + 2) : ℚ)

end A024862

/-! ## A024862.P12674827809317245009

`A213750(A080827(n+1)+2+n)`
-/

namespace A024862.P12674827809317245009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (A080827 (n + 1) + 2 + (n : ℤ)).toNat

end

end A024862.P12674827809317245009

namespace A024862

/-- `A213750(A080827(n+1)+2+n)` -/
def P12674827809317245009.Spec : Prop :=
  ∀ n, P12674827809317245009.a n = A024862 (n + 2)

end A024862

/-!
# A024863: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = A000201 (lower Wythoff sequence).

The programs for A024863, there is no canonical definition to state claims against.
-/

/-! ## A024863.P1548875653995614634

`A024864(n+2)-A023856(n+1)`
-/

namespace A024863.P1548875653995614634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024864 (n + 2) - A023856 (n + 1)

end

end A024863.P1548875653995614634

/-! ## A024863.P17624275745129360969

`A024864(n+2)-(A023855(n+1)+A008805(n))`
-/

namespace A024863.P17624275745129360969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024864 (n + 2) - (A023855 (n + 1) + A008805 n)

end

end A024863.P17624275745129360969

/-! ## A024863.P12342762456776204829

`A024864(n+2)+A008805(n)-A023857(n+1)`
-/

namespace A024863.P12342762456776204829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024864 (n + 2) + (A008805 n - A023857 (n + 1))

end

end A024863.P12342762456776204829

/-! ## A024863.P15206946162441149002

`A024864(n+2)-(A006918(n)+2*A058187(n))`
-/

namespace A024863.P15206946162441149002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024864 (n + 2) - (A006918 n + 2 * A058187 n)

end

end A024863.P15206946162441149002

/-! ## A024863.P6595463622244473554

`A025122(n+1)-(A025119(n+1)+A023856(n+1))`
-/

namespace A024863.P6595463622244473554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025122 (n + 1) - (A025119 (n + 1) + A023856 (n + 1))

end

end A024863.P6595463622244473554

/-! ## A024863.P17034937873758091400

`A024864(n+2)-A144678(A042963(n+1))`
-/

namespace A024863.P17034937873758091400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024864 (n + 2) - A144678 (A042963 (n + 1)).toNat

end

end A024863.P17034937873758091400

/-!
# A024864: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = A001950 (upper Wythoff sequence).

The programs for A024864, there is no canonical definition to state claims against.
-/

/-! ## A024864.P2021575211457488679

`A024863(n+2)+A023856(n+1)`
-/

namespace A024864.P2021575211457488679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024863 (n + 2) + A023856 (n + 1)

end

end A024864.P2021575211457488679

/-! ## A024864.P14675660462996778824

`A025122(n+1)-A025119(n+1)`
-/

namespace A024864.P14675660462996778824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025122 (n + 1) - A025119 (n + 1)

end

end A024864.P14675660462996778824

/-! ## A024864.P18311134127349417216

`A023855(n+1)+A024863(n+2)+A008805(n)`
-/

namespace A024864.P18311134127349417216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) + (A024863 (n + 2) + A008805 n)

end

end A024864.P18311134127349417216

/-! ## A024864.P16809818704693686862

`A023857(n+1)+A024863(n+2)-A008805(n)`
-/

namespace A024864.P16809818704693686862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) + (A024863 (n + 2) - A008805 n)

end

end A024864.P16809818704693686862

/-! ## A024864.P13386453174535377805

`A024863(n+2)+A006918(n)+2*A058187(n)`
-/

namespace A024864.P13386453174535377805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024863 (n + 2) + (A006918 n + 2 * A058187 n)

end

end A024864.P13386453174535377805

/-! ## A024864.P7219121877619771210

`A024863(n+2)+A000292(n+2)-A023855(n+2)`
-/

namespace A024864.P7219121877619771210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024863 (n + 2) + (A000292 (n + 2) - A023855 (n + 2))

end

end A024864.P7219121877619771210

/-! ## A024864.P17672827573757594570

`A144678(A042963(n+1))+A024863(n+2)`
-/

namespace A024864.P17672827573757594570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (A042963 (n + 1)).toNat + A024863 (n + 2)

end

end A024864.P17672827573757594570

/-!
# A024865: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A000027, t = A023533.

The programs for A024865, there is no canonical definition to state claims against.
-/

/-! ## A024865.P2854675353819424057

`A008805(n)-A024866(n+2)`
-/

namespace A024865.P2854675353819424057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A024866 (n + 2)

end

end A024865.P2854675353819424057

/-! ## A024865.P5596545950185732649

`∑[A027656(n)]-A024866(n+2)`
-/

namespace A024865.P5596545950185732649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024866 (n + 2)

end

end A024865.P5596545950185732649

/-! ## A024865.P17567402547654028903

`A025123(n+1)-A025120(n+1)`
-/

namespace A024865.P17567402547654028903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025123 (n + 1) - A025120 (n + 1)

end

end A024865.P17567402547654028903

/-! ## A024865.P6180518209927535577

`A000217(A008619(n))-A024866(n+2)`
-/

namespace A024865.P6180518209927535577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat - A024866 (n + 2)

end

end A024865.P6180518209927535577

/-! ## A024865.P14936602405067958337

`Δ[A006918(n)]-A024866(n+2)`
-/

namespace A024865.P14936602405067958337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024866 (n + 2)

end

end A024865.P14936602405067958337

/-!
# A024866: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers), t = A014306.

The programs for A024866, there is no canonical definition to state claims against.
-/

/-! ## A024866.P7758932539639252406

`A008805(n)-A024865(n+2)`
-/

namespace A024866.P7758932539639252406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A024865 (n + 2)

end

end A024866.P7758932539639252406

/-! ## A024866.P7612278059145239970

`∑[A027656(n)]-A024865(n+2)`
-/

namespace A024866.P7612278059145239970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024865 (n + 2)

end

end A024866.P7612278059145239970

/-! ## A024866.P12916732515807525943

`A025124(n+1)-A025121(n+1)`
-/

namespace A024866.P12916732515807525943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025124 (n + 1) - A025121 (n + 1)

end

end A024866.P12916732515807525943

/-! ## A024866.P3491584910571664258

`A000217(A008619(n))-A024865(n+2)`
-/

namespace A024866.P3491584910571664258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat - A024865 (n + 2)

end

end A024866.P3491584910571664258

/-! ## A024866.P4309498962479454641

`Δ[A006918(n)]-A024865(n+2)`
-/

namespace A024866.P4309498962479454641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024865 (n + 2)

end

end A024866.P4309498962479454641

/-! ## A024866.P12106304426582796373

`A000217(A065033(n+1))-A024865(n+2)`
-/

namespace A024866.P12106304426582796373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A065033 (n + 1)).toNat - A024865 (n + 2)

end

end A024866.P12106304426582796373

/-! ## A024866.P4263357642370279740

`∑[A142150(n+2)]-A024865(n+2)`
-/

namespace A024866.P4263357642370279740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024865 (n + 2)

end

end A024866.P4263357642370279740

/-!
# A024869: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = floor( n/2 ), s = natural numbers >= 2, t = natural numbers >= 3.

The programs for A024869, the canonical program `A024869.P18052300217753289267` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024869 has offset 2).

The definition of A024869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024869.P2273082711863640372

`A024312(n+1)-∑[A008619(n)]`
-/

namespace A024869.P2273082711863640372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024312 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024869.P2273082711863640372

namespace A024869

/-- `A024312(n+1)-∑[A008619(n)]` -/
def P2273082711863640372.Spec : Prop :=
  ∀ n, P2273082711863640372.a n = A024869 (n + 2)

theorem P2273082711863640372.correct : P2273082711863640372.Spec := by
  intro n
  simp only [A024869, Nat.add_sub_cancel, A024869.P2273082711863640372.f1, A024869.P2273082711863640372.a, A024869.P18052300217753289267.a, A008619, A008619.P16053834178911111118.a, A024305, A024305.P9851003365253708199.f1, A024305.P9851003365253708199.a, A024306, A024306.P12588528845389365373.a, A024312, A024312.P16770968988271834341.f1, A024312.P16770968988271834341.a, A023857, A023857.P527520079518963399.a, A008805, A008805.P1560584299711762519.a, A023856, A023856.P15128792986930131944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024869

/-! ## A024869.P7313254500082390148

`A024312(n+1)-A087811(n+1)`
-/

namespace A024869.P7313254500082390148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024312 (n + 1) - A087811 (n + 1)

end

end A024869.P7313254500082390148

namespace A024869

/-- `A024312(n+1)-A087811(n+1)` -/
def P7313254500082390148.Spec : Prop :=
  ∀ n, P7313254500082390148.a n = A024869 (n + 2)

end A024869

/-! ## A024869.P18052300217753289267

`2*A024306(n+1)-A024305(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024869

/-- `2*A024306(n+1)-A024305(n+1)` -/
def P18052300217753289267.Spec : Prop :=
  ∀ n, P18052300217753289267.a n = A024869 (n + 2)

theorem P18052300217753289267.correct : P18052300217753289267.Spec := by
  intro n
  simp only [A024869, Nat.add_sub_cancel]

end A024869

/-! ## A024869.P51671973194925529

`A023857(n+3)-(n+5)`
-/

namespace A024869.P51671973194925529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 3) - (n + 5 : ℤ)

end

end A024869.P51671973194925529

namespace A024869

/-- `A023857(n+3)-(n+5)` -/
def P51671973194925529.Spec : Prop :=
  ∀ n, P51671973194925529.a n = A024869 (n + 2)

end A024869

/-! ## A024869.P13884314920494831314

`∑[∑[A001057(n+3)*(A028242(n)+3)]]`
-/

namespace A024869.P13884314920494831314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 3) * (A028242 n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024869.P13884314920494831314

namespace A024869

/-- `∑[∑[A001057(n+3)*(A028242(n)+3)]]` -/
def P13884314920494831314.Spec : Prop :=
  ∀ n, P13884314920494831314.a n = A024869 (n + 2)

end A024869

/-! ## A024869.P18388545522429571839

`∑[A245288(n+6)-(A004526(n)+4)]`
-/

namespace A024869.P18388545522429571839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 6) - (A004526 n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024869.P18388545522429571839

namespace A024869

/-- `∑[A245288(n+6)-(A004526(n)+4)]` -/
def P18388545522429571839.Spec : Prop :=
  ∀ n, P18388545522429571839.a n = A024869 (n + 2)

end A024869

/-!
# A024870: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 2), t = A023531.

The programs for A024870, there is no canonical definition to state claims against.
-/

/-! ## A024870.P17777812246888983261

`A000096(A008619(n))-A024871(n+2)`
-/

namespace A024870.P17777812246888983261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A008619 n).toNat - A024871 (n + 2)

end

end A024870.P17777812246888983261

/-! ## A024870.P2856658054630167097

`A023858(n+3)-A023531(n+3)`
-/

namespace A024870.P2856658054630167097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023858 (n + 3) - A023531 (n + 3)

end

end A024870.P2856658054630167097

/-! ## A024870.P4080244932102210949

`A023858(n+3)-A010054(n+4)`
-/

namespace A024870.P4080244932102210949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023858 (n + 3) - A010054 (n + 4)

end

end A024870.P4080244932102210949

/-! ## A024870.P9135562175130761546

`A023858(n+3)-Δ[A003056(n+3)]`
-/

namespace A024870.P9135562175130761546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023858 (n + 3) - (f1 (n + 1) - f1 n)

end

end A024870.P9135562175130761546

/-! ## A024870.P5091458977764416263

`A023858(n+3)-Δ[A002024(n+4)]`
-/

namespace A024870.P5091458977764416263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023858 (n + 3) - (f1 (n + 1) - f1 n)

end

end A024870.P5091458977764416263

/-!
# A024871: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 2), t = A023532.

The programs for A024871, there is no canonical definition to state claims against.
-/

/-! ## A024871.P10600001044372971069

`A000096(∑[char[2*n]])-A024870(n+2)`
-/

namespace A024871.P10600001044372971069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (∑ j ∈ Finset.range (n + 1), f1 j) - A024870 (n + 2)

end

end A024871.P10600001044372971069

/-! ## A024871.P7016207822864103176

`A000096(A008619(n))-(A023858(n+3)-A023531(n+3))`
-/

namespace A024871.P7016207822864103176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A008619 n).toNat - (A023858 (n + 3) - A023531 (n + 3))

end

end A024871.P7016207822864103176

/-! ## A024871.P2254980186784264751

`A023859(n+3)-A023532(n+3)`
-/

namespace A024871.P2254980186784264751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023859 (n + 3) - A023532 (n + 3)

end

end A024871.P2254980186784264751

/-! ## A024871.P2717564832937779998

`A000096(A008619(n))-(A023858(n+3)-A010054(n+4))`
-/

namespace A024871.P2717564832937779998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A008619 n).toNat - (A023858 (n + 3) - A010054 (n + 4))

end

end A024871.P2717564832937779998

/-! ## A024871.P875367546365803287

`A023859(n+3)-A114607(n+5)`
-/

namespace A024871.P875367546365803287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023859 (n + 3) - A114607 (n + 5)

end

end A024871.P875367546365803287

/-!
# A024872: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 2), t = (Fibonacci numbers).

The programs for A024872, the canonical program `A024872.P6809425359056890803` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024872 has offset 2).

The definition of A024872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024872.P6809425359056890803

`A023860(n+3)-A020695(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024872

/-- `A023860(n+3)-A020695(n)` -/
def P6809425359056890803.Spec : Prop :=
  ∀ n, P6809425359056890803.a n = A024872 (n + 2)

theorem P6809425359056890803.correct : P6809425359056890803.Spec := by
  intro n
  simp only [A024872, Nat.add_sub_cancel]

end A024872

/-! ## A024872.P17983652835014779065

`A023860(n+3)-Δ[A020706(n)]`
-/

namespace A024872.P17983652835014779065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 3) - (f1 (n + 1) - f1 n)

end

end A024872.P17983652835014779065

namespace A024872

/-- `A023860(n+3)-Δ[A020706(n)]` -/
def P17983652835014779065.Spec : Prop :=
  ∀ n, P17983652835014779065.a n = A024872 (n + 2)

end A024872

/-! ## A024872.P11993693071811608241

`A023860(n+3)-A000045(n+3)`
-/

namespace A024872.P11993693071811608241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 3) - A000045 (n + 3)

end

end A024872.P11993693071811608241

namespace A024872

/-- `A023860(n+3)-A000045(n+3)` -/
def P11993693071811608241.Spec : Prop :=
  ∀ n, P11993693071811608241.a n = A024872 (n + 2)

end A024872

/-! ## A024872.P10025630367805689536

`round(A024874(n+2)/ϕ)`
-/

namespace A024872.P10025630367805689536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024874 (n + 2) : ℝ) / Real.goldenRatio)

end

end A024872.P10025630367805689536

namespace A024872

/-- `round(A024874(n+2)/ϕ)` -/
def P10025630367805689536.Spec : Prop :=
  ∀ n, P10025630367805689536.a n = A024872 (n + 2)

end A024872

/-! ## A024872.P9513427268212925264

`A024874(n+2)-A024309(n+1)`
-/

namespace A024872.P9513427268212925264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024874 (n + 2) - A024309 (n + 1)

end

end A024872.P9513427268212925264

namespace A024872

/-- `A024874(n+2)-A024309(n+1)` -/
def P9513427268212925264.Spec : Prop :=
  ∀ n, P9513427268212925264.a n = A024872 (n + 2)

theorem P9513427268212925264.correct : P9513427268212925264.Spec := by
  intro n
  simp only [A024872, Nat.add_sub_cancel, A024872.P9513427268212925264.a, A024872.P6809425359056890803.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A024874, A024874.P7651549887830111041.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024872

/-! ## A024872.P11184521637250840944

`(A024315(n+1)+A023864(n+1))/2`
-/

namespace A024872.P11184521637250840944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024315 (n + 1) + A023864 (n + 1) : ℚ) / 2

end

end A024872.P11184521637250840944

namespace A024872

/-- `(A024315(n+1)+A023864(n+1))/2` -/
def P11184521637250840944.Spec : Prop :=
  ∀ n, P11184521637250840944.a n = (A024872 (n + 2) : ℚ)

theorem P11184521637250840944.correct : P11184521637250840944.Spec := by
  intro n
  simp only [A024872, Nat.add_sub_cancel, A024872.P11184521637250840944.a, A024872.P6809425359056890803.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024315, A024315.P2335891269979573061.a, A014286, A014286.P3857901398610574397.a, A024309, A024309.P18160775639560700928.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024872

/-! ## A024872.P15574971145434803362

`A024874(n+2)-(A129361(n)+A023860(n+1))`
-/

namespace A024872.P15574971145434803362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024874 (n + 2) - (A129361 n + A023860 (n + 1))

end

end A024872.P15574971145434803362

namespace A024872

/-- `A024874(n+2)-(A129361(n)+A023860(n+1))` -/
def P15574971145434803362.Spec : Prop :=
  ∀ n, P15574971145434803362.a n = A024872 (n + 2)

theorem P15574971145434803362.correct : P15574971145434803362.Spec := by
  intro n
  simp only [A024872, Nat.add_sub_cancel, A024872.P15574971145434803362.a, A024872.P6809425359056890803.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024874, A024874.P7651549887830111041.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A024309, A024309.P18160775639560700928.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024872

/-! ## A024872.P16156656336122484102

`A024873(n+2)-2*A024309(n+1)`
-/

namespace A024872.P16156656336122484102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024873 (n + 2) - 2 * A024309 (n + 1)

end

end A024872.P16156656336122484102

namespace A024872

/-- `A024873(n+2)-2*A024309(n+1)` -/
def P16156656336122484102.Spec : Prop :=
  ∀ n, P16156656336122484102.a n = A024872 (n + 2)

theorem P16156656336122484102.correct : P16156656336122484102.Spec := by
  intro n
  simp only [A024872, Nat.add_sub_cancel, A024872.P16156656336122484102.a, A024872.P6809425359056890803.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A024873, A024873.P15411452994750175105.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024872

/-! ## A024872.P586118494985572163

`2*A024874(n+2)-A024873(n+2)`
-/

namespace A024872.P586118494985572163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024874 (n + 2) - A024873 (n + 2)

end

end A024872.P586118494985572163

namespace A024872

/-- `2*A024874(n+2)-A024873(n+2)` -/
def P586118494985572163.Spec : Prop :=
  ∀ n, P586118494985572163.a n = A024872 (n + 2)

theorem P586118494985572163.correct : P586118494985572163.Spec := by
  intro n
  simp only [A024872, Nat.add_sub_cancel, A024872.P586118494985572163.a, A024872.P6809425359056890803.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024873, A024873.P15411452994750175105.a, A024874, A024874.P7651549887830111041.a, A014286, A014286.P3857901398610574397.a, A024309, A024309.P18160775639560700928.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024872

/-!
# A024873: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 2), t = (Lucas numbers).

The programs for A024873, the canonical program `A024873.P15411452994750175105` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024873 has offset 2).

The definition of A024873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024873.P2679512537173692209

`A024874(n+2)+A024309(n+1)`
-/

namespace A024873.P2679512537173692209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024874 (n + 2) + A024309 (n + 1)

end

end A024873.P2679512537173692209

namespace A024873

/-- `A024874(n+2)+A024309(n+1)` -/
def P2679512537173692209.Spec : Prop :=
  ∀ n, P2679512537173692209.a n = A024873 (n + 2)

theorem P2679512537173692209.correct : P2679512537173692209.Spec := by
  intro n
  simp only [A024873, Nat.add_sub_cancel, A024873.P2679512537173692209.a, A024873.P15411452994750175105.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A024874, A024874.P7651549887830111041.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024873

/-! ## A024873.P1097380911886869688

`A023861(n+3)-A000204(n+3)`
-/

namespace A024873.P1097380911886869688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023861 (n + 3) - A000204 (n + 3)

end

end A024873.P1097380911886869688

namespace A024873

/-- `A023861(n+3)-A000204(n+3)` -/
def P1097380911886869688.Spec : Prop :=
  ∀ n, P1097380911886869688.a n = A024873 (n + 2)

end A024873

/-! ## A024873.P15411452994750175105

`A024872(n+2)+2*A024309(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024873

/-- `A024872(n+2)+2*A024309(n+1)` -/
def P15411452994750175105.Spec : Prop :=
  ∀ n, P15411452994750175105.a n = A024873 (n + 2)

theorem P15411452994750175105.correct : P15411452994750175105.Spec := by
  intro n
  simp only [A024873, Nat.add_sub_cancel]

end A024873

/-! ## A024873.P1669411266292905255

`2*A024874(n+2)-A024872(n+2)`
-/

namespace A024873.P1669411266292905255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024874 (n + 2) - A024872 (n + 2)

end

end A024873.P1669411266292905255

namespace A024873

/-- `2*A024874(n+2)-A024872(n+2)` -/
def P1669411266292905255.Spec : Prop :=
  ∀ n, P1669411266292905255.a n = A024873 (n + 2)

theorem P1669411266292905255.correct : P1669411266292905255.Spec := by
  intro n
  simp only [A024873, Nat.add_sub_cancel, A024873.P1669411266292905255.a, A024873.P15411452994750175105.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A024874, A024874.P7651549887830111041.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024873

/-! ## A024873.P13935846263751374131

`A023860(n+1)+A129361(n)+A024874(n+2)`
-/

namespace A024873.P13935846263751374131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 1) + (A129361 n + A024874 (n + 2))

end

end A024873.P13935846263751374131

namespace A024873

/-- `A023860(n+1)+A129361(n)+A024874(n+2)` -/
def P13935846263751374131.Spec : Prop :=
  ∀ n, P13935846263751374131.a n = A024873 (n + 2)

theorem P13935846263751374131.correct : P13935846263751374131.Spec := by
  intro n
  simp only [A024873, Nat.add_sub_cancel, A024873.P13935846263751374131.a, A024873.P15411452994750175105.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A024874, A024874.P7651549887830111041.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A020695, A020695.P5292720263086745780.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024873

/-!
# A024874: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 2), t = (F(2), F(3), F(4), ...).

The programs for A024874, the canonical program `A024874.P7651549887830111041` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024874 has offset 2).

The definition of A024874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024874.P7651549887830111041

`A024872(n+2)+A024309(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024874

/-- `A024872(n+2)+A024309(n+1)` -/
def P7651549887830111041.Spec : Prop :=
  ∀ n, P7651549887830111041.a n = A024874 (n + 2)

theorem P7651549887830111041.correct : P7651549887830111041.Spec := by
  intro n
  simp only [A024874, Nat.add_sub_cancel]

end A024874

/-! ## A024874.P2968095343416753215

`A023864(n+3)-A020695(n+1)`
-/

namespace A024874.P2968095343416753215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 3) - A020695 (n + 1)

end

end A024874.P2968095343416753215

namespace A024874

/-- `A023864(n+3)-A020695(n+1)` -/
def P2968095343416753215.Spec : Prop :=
  ∀ n, P2968095343416753215.a n = A024874 (n + 2)

end A024874

/-! ## A024874.P15607920425904990382

`A024309(n+1)+A023860(n+3)-A020695(n)`
-/

namespace A024874.P15607920425904990382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 1) + (A023860 (n + 3) - A020695 n)

end

end A024874.P15607920425904990382

namespace A024874

/-- `A024309(n+1)+A023860(n+3)-A020695(n)` -/
def P15607920425904990382.Spec : Prop :=
  ∀ n, P15607920425904990382.a n = A024874 (n + 2)

theorem P15607920425904990382.correct : P15607920425904990382.Spec := by
  intro n
  simp only [A024874, Nat.add_sub_cancel, A024874.P15607920425904990382.a, A024874.P7651549887830111041.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024874

/-! ## A024874.P16731843284004561269

`A024873(n+2)-A024309(n+1)`
-/

namespace A024874.P16731843284004561269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024873 (n + 2) - A024309 (n + 1)

end

end A024874.P16731843284004561269

namespace A024874

/-- `A024873(n+2)-A024309(n+1)` -/
def P16731843284004561269.Spec : Prop :=
  ∀ n, P16731843284004561269.a n = A024874 (n + 2)

theorem P16731843284004561269.correct : P16731843284004561269.Spec := by
  intro n
  simp only [A024874, Nat.add_sub_cancel, A024874.P16731843284004561269.a, A024874.P7651549887830111041.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A024873, A024873.P15411452994750175105.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024874

/-! ## A024874.P13957968482455371189

`A024873(n+2)-(A129361(n)+A023860(n+1))`
-/

namespace A024874.P13957968482455371189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024873 (n + 2) - (A129361 n + A023860 (n + 1))

end

end A024874.P13957968482455371189

namespace A024874

/-- `A024873(n+2)-(A129361(n)+A023860(n+1))` -/
def P13957968482455371189.Spec : Prop :=
  ∀ n, P13957968482455371189.a n = A024874 (n + 2)

theorem P13957968482455371189.correct : P13957968482455371189.Spec := by
  intro n
  simp only [A024874, Nat.add_sub_cancel, A024874.P13957968482455371189.a, A024874.P7651549887830111041.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A024873, A024873.P15411452994750175105.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A020695, A020695.P5292720263086745780.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024874

/-!
# A024875: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = floor( n/2 ), s = natural numbers >= 3.

The programs for A024875, the canonical program `A024875.P2931421296640362932` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024875 has offset 2).

The definition of A024875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024875.P2931421296640362932

`2*A024869(n+2)-A024854(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024875

/-- `2*A024869(n+2)-A024854(n+2)` -/
def P2931421296640362932.Spec : Prop :=
  ∀ n, P2931421296640362932.a n = A024875 (n + 2)

theorem P2931421296640362932.correct : P2931421296640362932.Spec := by
  intro n
  simp only [A024875, Nat.add_sub_cancel]

end A024875

/-! ## A024875.P4465953032031008489

`A027379(floor(n/2)+1)+A024312(n+1)`
-/

namespace A024875.P4465953032031008489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (⌊(n : ℚ) / 2⌋ + 1).toNat + A024312 (n + 1)

end

end A024875.P4465953032031008489

namespace A024875

/-- `A027379(floor(n/2)+1)+A024312(n+1)` -/
def P4465953032031008489.Spec : Prop :=
  ∀ n, P4465953032031008489.a n = A024875 (n + 2)

end A024875

/-! ## A024875.P52203830273827435

`∑[∑[A083392(2*gcd(2, n)+n+2)]]`
-/

namespace A024875.P52203830273827435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 (2 * Nat.gcd 2 n + (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024875.P52203830273827435

namespace A024875

/-- `∑[∑[A083392(2*gcd(2, n)+n+2)]]` -/
def P52203830273827435.Spec : Prop :=
  ∀ n, P52203830273827435.a n = A024875 (n + 2)

end A024875

/-! ## A024875.P15381403482512258356

`∑[∑[A001057(n+5)*(A028242(n)+3)]]`
-/

namespace A024875.P15381403482512258356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 5) * (A028242 n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024875.P15381403482512258356

namespace A024875

/-- `∑[∑[A001057(n+5)*(A028242(n)+3)]]` -/
def P15381403482512258356.Spec : Prop :=
  ∀ n, P15381403482512258356.a n = A024875 (n + 2)

end A024875

/-! ## A024875.P14420383900129116302

`∑[A027379(n+4)-A245288(n+7)]`
-/

namespace A024875.P14420383900129116302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (n + 4) - A245288 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024875.P14420383900129116302

namespace A024875

/-- `∑[A027379(n+4)-A245288(n+7)]` -/
def P14420383900129116302.Spec : Prop :=
  ∀ n, P14420383900129116302.a n = A024875 (n + 2)

end A024875

/-!
# A024876: Expansion of (3-2*x-3*x^2-4*x^3)/(1-3*x+x^2+x^3+x^4).

The programs for A024876, the canonical program `A024876.P8397387491871797528` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024876 has offset 0).

The definition of A024876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-2x-3x^2-4x^3)/(1-3x+x^2+x^3+x^4))` (program `A024876.P8397387491871797528`, by `A024876.P8397387491871797528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024876.P8397387491871797528

`ogf((3-2x-3x^2-4x^3)/(1-3x+x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024876

/-- `ogf((3-2x-3x^2-4x^3)/(1-3x+x^2+x^3+x^4))` -/
def P8397387491871797528.Spec : Prop :=
  ∀ n, P8397387491871797528.a n = A024876 n

theorem P8397387491871797528.correct : P8397387491871797528.Spec := by
  intro n
  simp only [A024876]

end A024876

/-! ## A024876.P5715500282915664

`A322753(2*(n+1))`
-/

namespace A024876.P5715500282915664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322753 (2 * (n + 1))

end

end A024876.P5715500282915664

namespace A024876

/-- `A322753(2*(n+1))` -/
def P5715500282915664.Spec : Prop :=
  ∀ n, P5715500282915664.a n = A024876 n

end A024876

/-! ## A024876.P8129321839839783531

`record[A322753(A233583(n+1)+n)]`
-/

namespace A024876.P8129321839839783531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322753 (A233583 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024876.P8129321839839783531

namespace A024876

/-- `record[A322753(A233583(n+1)+n)]` -/
def P8129321839839783531.Spec : Prop :=
  ∀ n, P8129321839839783531.a n = A024876 n

end A024876

/-! ## A024876.P5877188927534181141

`A322753(A103517(n))+A000038(n)`
-/

namespace A024876.P5877188927534181141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322753 (A103517 n).toNat + A000038 n

end

end A024876.P5877188927534181141

namespace A024876

/-- `A322753(A103517(n))+A000038(n)` -/
def P5877188927534181141.Spec : Prop :=
  ∀ n, P5877188927534181141.a n = A024876 n

end A024876

/-! ## A024876.P7013634680410154047

`A322753(Δ[A187710(n)])%A322764(n)`
-/

namespace A024876.P7013634680410154047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322753 (f1 (n + 1) - f1 n).toNat) (A322764 n)

end

end A024876.P7013634680410154047

namespace A024876

/-- `A322753(Δ[A187710(n)])%A322764(n)` -/
def P7013634680410154047.Spec : Prop :=
  ∀ n, P7013634680410154047.a n = A024876 n

end A024876

/-!
# A024877: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 3), t = (Lucas numbers).

The programs for A024877, the canonical program `A024877.P16584012869159844224` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024877 has offset 2).

The definition of A024877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024877.P6057561111526618162

`A024878(n+2)+A024313(n+1)`
-/

namespace A024877.P6057561111526618162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024878 (n + 2) + A024313 (n + 1)

end

end A024877.P6057561111526618162

namespace A024877

/-- `A024878(n+2)+A024313(n+1)` -/
def P6057561111526618162.Spec : Prop :=
  ∀ n, P6057561111526618162.a n = A024877 (n + 2)

theorem P6057561111526618162.correct : P6057561111526618162.Spec := by
  intro n
  simp only [A024877, Nat.add_sub_cancel, A024877.P6057561111526618162.a, A024877.P16584012869159844224.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024878, A024878.P13264414261582248090.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024877

/-! ## A024877.P16584012869159844224

`A024315(n+1)+2*A024313(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024877

/-- `A024315(n+1)+2*A024313(n+1)` -/
def P16584012869159844224.Spec : Prop :=
  ∀ n, P16584012869159844224.a n = A024877 (n + 2)

theorem P16584012869159844224.correct : P16584012869159844224.Spec := by
  intro n
  simp only [A024877, Nat.add_sub_cancel]

end A024877

/-! ## A024877.P146567804068852559

`A024878(n+2)+A024878(n+2)-A024315(n+1)`
-/

namespace A024877.P146567804068852559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024878 (n + 2) + (A024878 (n + 2) - A024315 (n + 1))

end

end A024877.P146567804068852559

namespace A024877

/-- `A024878(n+2)+A024878(n+2)-A024315(n+1)` -/
def P146567804068852559.Spec : Prop :=
  ∀ n, P146567804068852559.a n = A024877 (n + 2)

theorem P146567804068852559.correct : P146567804068852559.Spec := by
  intro n
  simp only [A024877, Nat.add_sub_cancel, A024877.P146567804068852559.a, A024877.P16584012869159844224.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024878, A024878.P13264414261582248090.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024877

/-! ## A024877.P9242609462886349451

`A024873(n+2)+A024873(n+2)-A024858(n+2)`
-/

namespace A024877.P9242609462886349451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024873 (n + 2) + (A024873 (n + 2) - A024858 (n + 2))

end

end A024877.P9242609462886349451

namespace A024877

/-- `A024873(n+2)+A024873(n+2)-A024858(n+2)` -/
def P9242609462886349451.Spec : Prop :=
  ∀ n, P9242609462886349451.a n = A024877 (n + 2)

theorem P9242609462886349451.correct : P9242609462886349451.Spec := by
  intro n
  simp only [A024877, Nat.add_sub_cancel, A024877.P9242609462886349451.a, A024877.P16584012869159844224.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024858, A024858.P7566223629686683624.a, A024873, A024873.P15411452994750175105.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024877

/-! ## A024877.P9965337618741429328

`A024878(n+2)+2*A024309(n+1)-A023860(n+1)`
-/

namespace A024877.P9965337618741429328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024878 (n + 2) + (2 * A024309 (n + 1) - A023860 (n + 1))

end

end A024877.P9965337618741429328

namespace A024877

/-- `A024878(n+2)+2*A024309(n+1)-A023860(n+1)` -/
def P9965337618741429328.Spec : Prop :=
  ∀ n, P9965337618741429328.a n = A024877 (n + 2)

theorem P9965337618741429328.correct : P9965337618741429328.Spec := by
  intro n
  simp only [A024877, Nat.add_sub_cancel, A024877.P9965337618741429328.a, A024877.P16584012869159844224.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024878, A024878.P13264414261582248090.a, A014286, A014286.P3857901398610574397.a, A020695, A020695.P5292720263086745780.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024877

/-! ## A024877.P5150655828514902156

`2*A024872(n+2)-A023864(n+1)+A024313(n+1)+A024313(n+1)`
-/

namespace A024877.P5150655828514902156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024872 (n + 2) - A023864 (n + 1) + (A024313 (n + 1) + A024313 (n + 1))

end

end A024877.P5150655828514902156

namespace A024877

/-- `2*A024872(n+2)-A023864(n+1)+A024313(n+1)+A024313(n+1)` -/
def P5150655828514902156.Spec : Prop :=
  ∀ n, P5150655828514902156.a n = A024877 (n + 2)

theorem P5150655828514902156.correct : P5150655828514902156.Spec := by
  intro n
  simp only [A024877, Nat.add_sub_cancel, A024877.P5150655828514902156.a, A024877.P16584012869159844224.a, A023864, A023864.P1322139053120086111.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024872, A024872.P6809425359056890803.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024877

/-! ## A024877.P5473377763958953781

`2*A024878(n+2)-A024315(n+1)`
-/

namespace A024877.P5473377763958953781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024878 (n + 2) - A024315 (n + 1)

end

end A024877.P5473377763958953781

namespace A024877

/-- `2*A024878(n+2)-A024315(n+1)` -/
def P5473377763958953781.Spec : Prop :=
  ∀ n, P5473377763958953781.a n = A024877 (n + 2)

theorem P5473377763958953781.correct : P5473377763958953781.Spec := by
  intro n
  simp only [A024877, Nat.add_sub_cancel, A024877.P5473377763958953781.a, A024877.P16584012869159844224.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024878, A024878.P13264414261582248090.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024877

/-! ## A024877.P17206780841179836242

`2*A024873(n+2)-A024858(n+2)`
-/

namespace A024877.P17206780841179836242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024873 (n + 2) - A024858 (n + 2)

end

end A024877.P17206780841179836242

namespace A024877

/-- `2*A024873(n+2)-A024858(n+2)` -/
def P17206780841179836242.Spec : Prop :=
  ∀ n, P17206780841179836242.a n = A024877 (n + 2)

theorem P17206780841179836242.correct : P17206780841179836242.Spec := by
  intro n
  simp only [A024877, Nat.add_sub_cancel, A024877.P17206780841179836242.a, A024877.P16584012869159844224.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024858, A024858.P7566223629686683624.a, A024873, A024873.P15411452994750175105.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024877

/-!
# A024878: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 3), t = (F(2), F(3), F(4), ...).

The programs for A024878, the canonical program `A024878.P13264414261582248090` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024878 has offset 2).

The definition of A024878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024878.P13264414261582248090

`A024315(n+1)+A024313(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024878

/-- `A024315(n+1)+A024313(n+1)` -/
def P13264414261582248090.Spec : Prop :=
  ∀ n, P13264414261582248090.a n = A024878 (n + 2)

theorem P13264414261582248090.correct : P13264414261582248090.Spec := by
  intro n
  simp only [A024878, Nat.add_sub_cancel]

end A024878

/-! ## A024878.P3855529262455715163

`A024877(n+2)-A024313(n+1)`
-/

namespace A024878.P3855529262455715163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024877 (n + 2) - A024313 (n + 1)

end

end A024878.P3855529262455715163

namespace A024878

/-- `A024877(n+2)-A024313(n+1)` -/
def P3855529262455715163.Spec : Prop :=
  ∀ n, P3855529262455715163.a n = A024878 (n + 2)

theorem P3855529262455715163.correct : P3855529262455715163.Spec := by
  intro n
  simp only [A024878, Nat.add_sub_cancel, A024878.P3855529262455715163.a, A024878.P13264414261582248090.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024877, A024877.P16584012869159844224.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024878

/-! ## A024878.P16899265565529157253

`A023860(n+5)-A000032(n+5)`
-/

namespace A024878.P16899265565529157253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 5) - A000032 (n + 5)

end

end A024878.P16899265565529157253

namespace A024878

/-- `A023860(n+5)-A000032(n+5)` -/
def P16899265565529157253.Spec : Prop :=
  ∀ n, P16899265565529157253.a n = A024878 (n + 2)

end A024878

/-! ## A024878.P5241719024814594830

`A023860(n+5)-A000204(n+5)`
-/

namespace A024878.P5241719024814594830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 5) - A000204 (n + 5)

end

end A024878.P5241719024814594830

namespace A024878

/-- `A023860(n+5)-A000204(n+5)` -/
def P5241719024814594830.Spec : Prop :=
  ∀ n, P5241719024814594830.a n = A024878 (n + 2)

end A024878

/-! ## A024878.P8774841555904264584

`2*A024874(n+2)-A024861(n+2)`
-/

namespace A024878.P8774841555904264584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024874 (n + 2) - A024861 (n + 2)

end

end A024878.P8774841555904264584

namespace A024878

/-- `2*A024874(n+2)-A024861(n+2)` -/
def P8774841555904264584.Spec : Prop :=
  ∀ n, P8774841555904264584.a n = A024878 (n + 2)

theorem P8774841555904264584.correct : P8774841555904264584.Spec := by
  intro n
  simp only [A024878, Nat.add_sub_cancel, A024878.P8774841555904264584.a, A024878.P13264414261582248090.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A024861, A024861.P6522082039831877776.a, A024874, A024874.P7651549887830111041.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024878

/-! ## A024878.P7999284351019457621

`A024872(n+4)-2*A020695(n+1)`
-/

namespace A024878.P7999284351019457621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024872 (n + 4) - 2 * A020695 (n + 1)

end

end A024878.P7999284351019457621

namespace A024878

/-- `A024872(n+4)-2*A020695(n+1)` -/
def P7999284351019457621.Spec : Prop :=
  ∀ n, P7999284351019457621.a n = A024878 (n + 2)

end A024878

/-! ## A024878.P5188345718719990763

`3*A024315(n+1)-A024314(n+1)`
-/

namespace A024878.P5188345718719990763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024315 (n + 1) - A024314 (n + 1)

end

end A024878.P5188345718719990763

namespace A024878

/-- `3*A024315(n+1)-A024314(n+1)` -/
def P5188345718719990763.Spec : Prop :=
  ∀ n, P5188345718719990763.a n = A024878 (n + 2)

theorem P5188345718719990763.correct : P5188345718719990763.Spec := by
  intro n
  simp only [A024878, Nat.add_sub_cancel, A024878.P5188345718719990763.a, A024878.P13264414261582248090.a, A024313, A024313.P16585731645068603023.a, A024314, A024314.P2143404515256360905.a, A024315, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A023861, A023861.P14188661982875319503.a, A024309, A024309.P18160775639560700928.a, A024310, A024310.P6708413732183315017.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024872, A024872.P6809425359056890803.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024878

/-!
# A024879: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A023531.

The programs for A024879, the canonical program `A024879.P8859403091492470975` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024879 has offset 2).

The definition of A024879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024879.P8859403091492470975

`A307597(n+5)-char[A046691(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A024879

/-- `A307597(n+5)-char[A046691(n)]` -/
def P8859403091492470975.Spec : Prop :=
  ∀ n, P8859403091492470975.a n = A024879 (n + 2)

theorem P8859403091492470975.correct : P8859403091492470975.Spec := by
  intro n
  simp only [A024879, Nat.add_sub_cancel]

end A024879

/-! ## A024879.P8528435806577066407

`A024316(n+1)+A024317(n+1)-A024880(n+2)`
-/

namespace A024879.P8528435806577066407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) + (A024317 (n + 1) - A024880 (n + 2))

end

end A024879.P8528435806577066407

namespace A024879

/-- `A024316(n+1)+A024317(n+1)-A024880(n+2)` -/
def P8528435806577066407.Spec : Prop :=
  ∀ n, P8528435806577066407.a n = A024879 (n + 2)

end A024879

/-! ## A024879.P1272429629631282147

`A024889(n+2)+A024890(n+2)-A024880(n+2)`
-/

namespace A024879.P1272429629631282147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024889 (n + 2) + (A024890 (n + 2) - A024880 (n + 2))

end

end A024879.P1272429629631282147

namespace A024879

/-- `A024889(n+2)+A024890(n+2)-A024880(n+2)` -/
def P1272429629631282147.Spec : Prop :=
  ∀ n, P1272429629631282147.a n = A024879 (n + 2)

end A024879

/-! ## A024879.P8469544834243391050

`floor(A023555(n+2)/2)`
-/

namespace A024879.P8469544834243391050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023555 (n + 2) : ℚ) / 2⌋

end

end A024879.P8469544834243391050

namespace A024879

/-- `floor(A023555(n+2)/2)` -/
def P8469544834243391050.Spec : Prop :=
  ∀ n, P8469544834243391050.a n = A024879 (n + 2)

end A024879

/-! ## A024879.P7354753099674186270

`A023555(n+2)-A024316(n+2)`
-/

namespace A024879.P7354753099674186270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023555 (n + 2) - A024316 (n + 2)

end

end A024879.P7354753099674186270

namespace A024879

/-- `A023555(n+2)-A024316(n+2)` -/
def P7354753099674186270.Spec : Prop :=
  ∀ n, P7354753099674186270.a n = A024879 (n + 2)

end A024879

/-! ## A024879.P3290173872711781115

`A024316(n+1)-Δ[A024317(n+1)]`
-/

namespace A024879.P3290173872711781115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) - (f1 (n + 1) - f1 n)

end

end A024879.P3290173872711781115

namespace A024879

/-- `A024316(n+1)-Δ[A024317(n+1)]` -/
def P3290173872711781115.Spec : Prop :=
  ∀ n, P3290173872711781115.a n = A024879 (n + 2)

end A024879

/-! ## A024879.P8373949512810109154

`A024316(n+1)+A024317(n+1)-A024317(n+2)`
-/

namespace A024879.P8373949512810109154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) + (A024317 (n + 1) - A024317 (n + 2))

end

end A024879.P8373949512810109154

namespace A024879

/-- `A024316(n+1)+A024317(n+1)-A024317(n+2)` -/
def P8373949512810109154.Spec : Prop :=
  ∀ n, P8373949512810109154.a n = A024879 (n + 2)

end A024879

/-! ## A024879.P7151850837136625383

`A307597(n+5)-A010054(n+4)`
-/

namespace A024879.P7151850837136625383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (n + 5) - A010054 (n + 4)

end

end A024879.P7151850837136625383

namespace A024879

/-- `A307597(n+5)-A010054(n+4)` -/
def P7151850837136625383.Spec : Prop :=
  ∀ n, P7151850837136625383.a n = A024879 (n + 2)

end A024879

/-!
# A024880: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = A023532.

The programs for A024880, the canonical program `A024880.P13248574875159670517` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024880 has offset 2).

The definition of A024880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024880.P13248574875159670517

`∑[A024316(n+1)-A024879(n+2)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A024880

/-- `∑[A024316(n+1)-A024879(n+2)]` -/
def P13248574875159670517.Spec : Prop :=
  ∀ n, P13248574875159670517.a n = A024880 (n + 2)

theorem P13248574875159670517.correct : P13248574875159670517.Spec := by
  intro n
  simp only [A024880, Nat.add_sub_cancel]

end A024880

/-! ## A024880.P16405164060049725417

`A024871(n+2)-(A025066(n+1)+A024856(n+2))`
-/

namespace A024880.P16405164060049725417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024871 (n + 2) - (A025066 (n + 1) + A024856 (n + 2))

end

end A024880.P16405164060049725417

namespace A024880

/-- `A024871(n+2)-(A025066(n+1)+A024856(n+2))` -/
def P16405164060049725417.Spec : Prop :=
  ∀ n, P16405164060049725417.a n = A024880 (n + 2)

end A024880

/-! ## A024880.P16096344665779076733

`A024889(n+2)+A024890(n+2)-A024879(n+2)`
-/

namespace A024880.P16096344665779076733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024889 (n + 2) + (A024890 (n + 2) - A024879 (n + 2))

end

end A024880.P16096344665779076733

namespace A024880

/-- `A024889(n+2)+A024890(n+2)-A024879(n+2)` -/
def P16096344665779076733.Spec : Prop :=
  ∀ n, P16096344665779076733.a n = A024880 (n + 2)

end A024880

/-! ## A024880.P13128030564816065117

`A024317(n+2)`
-/

namespace A024880.P13128030564816065117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (n + 2)

end

end A024880.P13128030564816065117

namespace A024880

/-- `A024317(n+2)` -/
def P13128030564816065117.Spec : Prop :=
  ∀ n, P13128030564816065117.a n = A024880 (n + 2)

end A024880

/-! ## A024880.P10061176762771134083

`A024317(A016777(n)-A004273(n))%A030533(n)`
-/

namespace A024880.P10061176762771134083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024317 (A016777 n - A004273 n).toNat) (A030533 n)

end

end A024880.P10061176762771134083

namespace A024880

/-- `A024317(A016777(n)-A004273(n))%A030533(n)` -/
def P10061176762771134083.Spec : Prop :=
  ∀ n, P10061176762771134083.a n = A024880 (n + 2)

end A024880

/-!
# A024882: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = (Lucas numbers).

The programs for A024882, there is no canonical definition to state claims against.
-/

/-! ## A024882.P1397010304628120521

`round(sqrt(5)*A024322(n+1))`
-/

namespace A024882.P1397010304628120521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (5 : ℝ) * (A024322 (n + 1) : ℝ))

end

end A024882.P1397010304628120521

/-! ## A024882.P13827883080144367711

`A024885(n+2)+A024318(n+1)`
-/

namespace A024882.P13827883080144367711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024885 (n + 2) + A024318 (n + 1)

end

end A024882.P13827883080144367711

/-! ## A024882.P12525272129196780909

`A024322(n+1)+2*A024318(n+1)`
-/

namespace A024882.P12525272129196780909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024322 (n + 1) + 2 * A024318 (n + 1)

end

end A024882.P12525272129196780909

/-! ## A024882.P10129372550437235614

`2*A024885(n+2)-A024322(n+1)`
-/

namespace A024882.P10129372550437235614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024885 (n + 2) - A024322 (n + 1)

end

end A024882.P10129372550437235614

/-! ## A024882.P17269171985510704037

`A024885(n+2)+A129361(n)-A024367(n+1)`
-/

namespace A024882.P17269171985510704037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024885 (n + 2) + (A129361 n - A024367 (n + 1))

end

end A024882.P17269171985510704037

/-!
# A024885: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = (F(2), F(3), F(4), ...).

The programs for A024885, there is no canonical definition to state claims against.
-/

/-! ## A024885.P3657740544031116643

`round(ϕ*A024322(n+1))`
-/

namespace A024885.P3657740544031116643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A024322 (n + 1) : ℝ))

end

end A024885.P3657740544031116643

/-! ## A024885.P15573148779841099365

`round(ϕ²*A024318(n+1))`
-/

namespace A024885.P15573148779841099365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (A024318 (n + 1) : ℝ))

end

end A024885.P15573148779841099365

/-! ## A024885.P13775597593897222660

`A024322(n+1)+A024318(n+1)`
-/

namespace A024885.P13775597593897222660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024322 (n + 1) + A024318 (n + 1)

end

end A024885.P13775597593897222660

/-! ## A024885.P12908703344562568013

`round((A129361(n)-A024367(n+1))*ϕ²)`
-/

namespace A024885.P12908703344562568013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A129361 n - A024367 (n + 1) : ℝ) * Real.goldenRatio ^ 2)

end

end A024885.P12908703344562568013

/-! ## A024885.P10929278358107419235

`A024882(n+2)-A024318(n+1)`
-/

namespace A024885.P10929278358107419235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024882 (n + 2) - A024318 (n + 1)

end

end A024885.P10929278358107419235

/-! ## A024885.P11418264763647974558

`3*A024322(n+1)-A024319(n+1)`
-/

namespace A024885.P11418264763647974558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024322 (n + 1) - A024319 (n + 1)

end

end A024885.P11418264763647974558

/-!
# A024889: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A023531, t = A023533.

The programs for A024889, there is no canonical definition to state claims against.
-/

/-! ## A024889.P1287726131453678159

`A024316(n+1)+A024317(n+1)-A024890(n+2)`
-/

namespace A024889.P1287726131453678159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) + (A024317 (n + 1) - A024890 (n + 2))

end

end A024889.P1287726131453678159

/-! ## A024889.P13800485484133557073

`A024326(n+1)+A024327(n+1)-A024890(n+2)`
-/

namespace A024889.P13800485484133557073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024326 (n + 1) + (A024327 (n + 1) - A024890 (n + 2))

end

end A024889.P13800485484133557073

/-! ## A024889.P16243517404822608018

`A024879(n+2)+A024880(n+2)-A024890(n+2)`
-/

namespace A024889.P16243517404822608018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024879 (n + 2) + (A024880 (n + 2) - A024890 (n + 2))

end

end A024889.P16243517404822608018

/-! ## A024889.P7424640962388874984

`A014306((n*A024326(n+2))²)`
-/

namespace A024889.P7424640962388874984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (((n : ℤ) * A024326 (n + 2)) ^ 2).toNat

end

end A024889.P7424640962388874984

/-! ## A024889.P17253903087706274081

`A014306((2*n)^A024326(n+2))`
-/

namespace A024889.P17253903087706274081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (SequenceMachineLib.roundAway ((2 * n : ℚ) ^ (A024326 (n + 2) : ℤ))).toNat

end

end A024889.P17253903087706274081

/-! ## A024889.P2659745356935455872

`A057427(A024326(n+2)*A080978(n))`
-/

namespace A024889.P2659745356935455872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A024326 (n + 2) * A080978 n).toNat

end

end A024889.P2659745356935455872

/-! ## A024889.P1592731654681737302

`A178334(A024326(n+2)^A328580(n))`
-/

namespace A024889.P1592731654681737302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (SequenceMachineLib.roundAway ((A024326 (n + 2) : ℚ) ^ (A328580 n : ℤ))).toNat

end

end A024889.P1592731654681737302

/-! ## A024889.P9805292630993642909

`A057427(A004872(n+1)*A024326(n+2))`
-/

namespace A024889.P9805292630993642909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004872 (n + 1) * A024326 (n + 2)).toNat

end

end A024889.P9805292630993642909

/-! ## A024889.P10541335354691579436

`A057427(A024326(n+2)*A126684(n+1))`
-/

namespace A024889.P10541335354691579436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A024326 (n + 2) * A126684 (n + 1)).toNat

end

end A024889.P10541335354691579436

/-! ## A024889.P6615099979609279909

`A057427(A024326(n+2)*A212591(n+1))`
-/

namespace A024889.P6615099979609279909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A024326 (n + 2) * A212591 (n + 1)).toNat

end

end A024889.P6615099979609279909

/-! ## A024889.P5020352685738775521

`A000120(A024326(n+2)^A020481(n+2))`
-/

namespace A024889.P5020352685738775521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A024326 (n + 2) : ℚ) ^ (A020481 (n + 2) : ℤ))).toNat

end

end A024889.P5020352685738775521

/-! ## A024889.P15126937248705814068

`A095792(n*A024326(n+2)*A049456(n+1))`
-/

namespace A024889.P15126937248705814068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 ((n : ℤ) * A024326 (n + 2) * A049456 (n + 1)).toNat

end

end A024889.P15126937248705814068

/-! ## A024889.P7095335117131244250

`ceil(A024326(n+2)/A008620(∑[n]))`
-/

namespace A024889.P7095335117131244250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024326 (n + 2) : ℚ) / (A008620 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌉

end

end A024889.P7095335117131244250

/-! ## A024889.P11613371068693698267

`A002262(C(n+2, 2)-n*A024326(n+2))`
-/

namespace A024889.P11613371068693698267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((Nat.choose (n + 2) 2 : ℤ) - (n : ℤ) * A024326 (n + 2)).toNat

end

end A024889.P11613371068693698267

/-! ## A024889.P9390863608257296389

`A057427(A024326(n+2)*A098871(n))`
-/

namespace A024889.P9390863608257296389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A024326 (n + 2) * A098871 n).toNat

end

end A024889.P9390863608257296389

/-! ## A024889.P11161943483323109097

`A095792(n*A024326(n+2)*A141429(n+1))`
-/

namespace A024889.P11161943483323109097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 ((n : ℤ) * A024326 (n + 2) * A141429 (n + 1)).toNat

end

end A024889.P11161943483323109097

/-! ## A024889.P11282762769182524528

`A095792(n*n*A024326(n+2))`
-/

namespace A024889.P11282762769182524528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 ((n : ℤ) * ((n : ℤ) * A024326 (n + 2))).toNat

end

end A024889.P11282762769182524528

/-!
# A024890: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = A014306.

The programs for A024890, there is no canonical definition to state claims against.
-/

/-! ## A024890.P11520617699905292089

`A025126(n+1)+A025128(n+1)-A025076(n+1)`
-/

namespace A024890.P11520617699905292089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (n + 1) + (A025128 (n + 1) - A025076 (n + 1))

end

end A024890.P11520617699905292089

/-! ## A024890.P368138583440487889

`A024316(n+1)+A024317(n+1)-A024889(n+2)`
-/

namespace A024890.P368138583440487889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) + (A024317 (n + 1) - A024889 (n + 2))

end

end A024890.P368138583440487889

/-! ## A024890.P15144058222705731457

`A024879(n+2)+A024880(n+2)-A024889(n+2)`
-/

namespace A024890.P15144058222705731457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024879 (n + 2) + (A024880 (n + 2) - A024889 (n + 2))

end

end A024890.P15144058222705731457

/-! ## A024890.P13615353302040806403

`A297038(A050068(n+1)+A001651(A284564(n)))`
-/

namespace A024890.P13615353302040806403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A050068 (n + 1) + A001651 (A284564 n).toNat).toNat

end

end A024890.P13615353302040806403

/-! ## A024890.P1031998185939778593

`A024327(n+1)-Δ[A359595(A083353(n)+1)]`
-/

namespace A024890.P1031998185939778593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359595 (A083353 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (n + 1) - (f1 (n + 1) - f1 n)

end

end A024890.P1031998185939778593

/-!
# A024891: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023531, t = (primes).

The programs for A024891, there is no canonical definition to state claims against.
-/

/-! ## A024891.P12674067997904300738

`A008578(A087051(n+2))%A192958(n+1)`
-/

namespace A024891.P12674067997904300738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A087051 (n + 2)).toNat) (A192958 (n + 1))

end

end A024891.P12674067997904300738

/-!
# A024892: Numbers k such that 3*k+1 is prime.

The programs for A024892, the canonical program `A024892.P16415756405401507162` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024892 has offset 1).

The definition of A024892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024892.P16415756405401507162

`A034936(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024892

/-- `A034936(n+1)+1` -/
def P16415756405401507162.Spec : Prop :=
  ∀ n, P16415756405401507162.a n = A024892 (n + 1)

theorem P16415756405401507162.correct : P16415756405401507162.Spec := by
  intro n
  simp only [A024892, Nat.add_sub_cancel]

end A024892

/-! ## A024892.P11937264052564440642

`A153183(n+1)-1`
-/

namespace A024892.P11937264052564440642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1) - 1

end

end A024892.P11937264052564440642

namespace A024892

/-- `A153183(n+1)-1` -/
def P11937264052564440642.Spec : Prop :=
  ∀ n, P11937264052564440642.a n = A024892 (n + 1)

theorem P11937264052564440642.correct : P11937264052564440642.Spec := by
  intro n
  simp only [A024892, Nat.add_sub_cancel, A024892.P11937264052564440642.a, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153183, A153183.P10933182994355425075.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024892

/-! ## A024892.P18253975192096097916

`A107303(n+1)-2`
-/

namespace A024892.P18253975192096097916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1) - 2

end

end A024892.P18253975192096097916

namespace A024892

/-- `A107303(n+1)-2` -/
def P18253975192096097916.Spec : Prop :=
  ∀ n, P18253975192096097916.a n = A024892 (n + 1)

theorem P18253975192096097916.correct : P18253975192096097916.Spec := by
  intro n
  simp only [A024892, Nat.add_sub_cancel, A024892.P18253975192096097916.a, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A107303, A107303.P6905371674303678170.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024892

/-! ## A024892.P16474482847572819983

`2*A024899(n+1)`
-/

namespace A024892.P16474482847572819983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1)

end

end A024892.P16474482847572819983

namespace A024892

/-- `2*A024899(n+1)` -/
def P16474482847572819983.Spec : Prop :=
  ∀ n, P16474482847572819983.a n = A024892 (n + 1)

end A024892

/-! ## A024892.P14297812793167646786

`(A002476(n+1)-1)/3`
-/

namespace A024892.P14297812793167646786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) - 1 : ℚ) / 3

end

end A024892.P14297812793167646786

namespace A024892

/-- `(A002476(n+1)-1)/3` -/
def P14297812793167646786.Spec : Prop :=
  ∀ n, P14297812793167646786.a n = (A024892 (n + 1) : ℚ)

end A024892

/-! ## A024892.P7266621113723956209

`(p?[3*n+1]-1)/3`
-/

namespace A024892.P7266621113723956209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 3

end

end A024892.P7266621113723956209

namespace A024892

/-- `(p?[3*n+1]-1)/3` -/
def P7266621113723956209.Spec : Prop :=
  ∀ n, P7266621113723956209.a n = (A024892 (n + 1) : ℚ)

end A024892

/-! ## A024892.P17644474405018307437

`A089953(n+1)+2`
-/

namespace A024892.P17644474405018307437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + 2

end

end A024892.P17644474405018307437

namespace A024892

/-- `A089953(n+1)+2` -/
def P17644474405018307437.Spec : Prop :=
  ∀ n, P17644474405018307437.a n = A024892 (n + 1)

theorem P17644474405018307437.correct : P17644474405018307437.Spec := by
  intro n
  simp only [A024892, Nat.add_sub_cancel, A024892.P17644474405018307437.a, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A089953, A089953.P3265903741196432824.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024892

/-! ## A024892.P943386862179958846

`floor(A002476(n+1)/3)`
-/

namespace A024892.P943386862179958846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002476 (n + 1) : ℚ) / 3⌋

end

end A024892.P943386862179958846

namespace A024892

/-- `floor(A002476(n+1)/3)` -/
def P943386862179958846.Spec : Prop :=
  ∀ n, P943386862179958846.a n = A024892 (n + 1)

end A024892

/-! ## A024892.P5276460932125317121

`2*(A153218(n+1)+1)`
-/

namespace A024892.P5276460932125317121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153218 (n + 1) + 1)

end

end A024892.P5276460932125317121

namespace A024892

/-- `2*(A153218(n+1)+1)` -/
def P5276460932125317121.Spec : Prop :=
  ∀ n, P5276460932125317121.a n = A024892 (n + 1)

theorem P5276460932125317121.correct : P5276460932125317121.Spec := by
  intro n
  simp only [A024892, Nat.add_sub_cancel, A024892.P5276460932125317121.a, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024892

/-! ## A024892.P11371412165352796097

`A139394(n+1)+A022760(n+1)`
-/

namespace A024892.P11371412165352796097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139394 (n + 1) + A022760 (n + 1)

end

end A024892.P11371412165352796097

namespace A024892

/-- `A139394(n+1)+A022760(n+1)` -/
def P11371412165352796097.Spec : Prop :=
  ∀ n, P11371412165352796097.a n = A024892 (n + 1)

end A024892

/-! ## A024892.P9385039382306409413

`A173177(n+1)-A153218(n+1)`
-/

namespace A024892.P9385039382306409413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1) - A153218 (n + 1)

end

end A024892.P9385039382306409413

namespace A024892

/-- `A173177(n+1)-A153218(n+1)` -/
def P9385039382306409413.Spec : Prop :=
  ∀ n, P9385039382306409413.a n = A024892 (n + 1)

end A024892

/-! ## A024892.P7667902110059430727

`2*(A022760(n+1)-A024898(n+1))`
-/

namespace A024892.P7667902110059430727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022760 (n + 1) - A024898 (n + 1))

end

end A024892.P7667902110059430727

namespace A024892

/-- `2*(A022760(n+1)-A024898(n+1))` -/
def P7667902110059430727.Spec : Prop :=
  ∀ n, P7667902110059430727.a n = A024892 (n + 1)

theorem P7667902110059430727.correct : P7667902110059430727.Spec := by
  intro n
  simp only [A024892, Nat.add_sub_cancel, A024892.P7667902110059430727.a, A024892.P16415756405401507162.a, A022760, A022760.P12074805106371372305.a, A024898, A024898.P2838277204682131429.a, A034936, A034936.P1115765045630556781.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A153134, A153134.P3803390437604555717.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024892

/-! ## A024892.P5572829309833341006

`A024898(n+1)+A139394(n+1)+A024899(n+1)`
-/

namespace A024892.P5572829309833341006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) + (A139394 (n + 1) + A024899 (n + 1))

end

end A024892.P5572829309833341006

namespace A024892

/-- `A024898(n+1)+A139394(n+1)+A024899(n+1)` -/
def P5572829309833341006.Spec : Prop :=
  ∀ n, P5572829309833341006.a n = A024892 (n + 1)

end A024892

/-! ## A024892.P14233329211165991975

`eq[1, A245838(n+1)]+1`
-/

namespace A024892.P14233329211165991975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024892.P14233329211165991975

namespace A024892

/-- `eq[1, A245838(n+1)]+1` -/
def P14233329211165991975.Spec : Prop :=
  ∀ n, (P14233329211165991975.a n : ℤ) = A024892 (n + 1)

end A024892

/-! ## A024892.P8925191332722426852

`∩[2*n, A335031(n+1)]`
-/

namespace A024892.P8925191332722426852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024892.P8925191332722426852

namespace A024892

/-- `∩[2*n, A335031(n+1)]` -/
def P8925191332722426852.Spec : Prop :=
  ∀ n, (P8925191332722426852.a n : ℤ) = A024892 (n + 1)

end A024892

/-! ## A024892.P2158408883560628186

`filter[A335031(n+2), A354034(#)]`
-/

namespace A024892.P2158408883560628186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A024892.P2158408883560628186

namespace A024892

/-- `filter[A335031(n+2), A354034(#)]` -/
def P2158408883560628186.Spec : Prop :=
  ∀ n, P2158408883560628186.a n = A024892 (n + 1)

end A024892

/-! ## A024892.P10267766376776481929

`∩[2*n, A144769(n+3)]`
-/

namespace A024892.P10267766376776481929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024892.P10267766376776481929

namespace A024892

/-- `∩[2*n, A144769(n+3)]` -/
def P10267766376776481929.Spec : Prop :=
  ∀ n, (P10267766376776481929.a n : ℤ) = A024892 (n + 1)

end A024892

/-! ## A024892.P9996258420365971898

`A144769(A091178(n+1))`
-/

namespace A024892.P9996258420365971898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A091178 (n + 1)).toNat

end

end A024892.P9996258420365971898

namespace A024892

/-- `A144769(A091178(n+1))` -/
def P9996258420365971898.Spec : Prop :=
  ∀ n, P9996258420365971898.a n = A024892 (n + 1)

end A024892

/-! ## A024892.P18040230695226021892

`A144769(A171820(n+2))`
-/

namespace A024892.P18040230695226021892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A171820 (n + 2)).toNat

end

end A024892.P18040230695226021892

namespace A024892

/-- `A144769(A171820(n+2))` -/
def P18040230695226021892.Spec : Prop :=
  ∀ n, P18040230695226021892.a n = A024892 (n + 1)

end A024892

/-! ## A024892.P7299748622064493647

`eq[1, A156706(n+1)]+1`
-/

namespace A024892.P7299748622064493647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024892.P7299748622064493647

namespace A024892

/-- `eq[1, A156706(n+1)]+1` -/
def P7299748622064493647.Spec : Prop :=
  ∀ n, (P7299748622064493647.a n : ℤ) = A024892 (n + 1)

end A024892

/-!
# A024893: Numbers k such that 3*k+2 is prime.

The programs for A024893, the canonical program `A024893.P13828910964466952161` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024893 has offset 1).

The definition of A024893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024893.P2065099688270039859

`A088879(n+1)+1`
-/

namespace A024893.P2065099688270039859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1) + 1

end

end A024893.P2065099688270039859

namespace A024893

/-- `A088879(n+1)+1` -/
def P2065099688270039859.Spec : Prop :=
  ∀ n, P2065099688270039859.a n = A024893 (n + 1)

theorem P2065099688270039859.correct : P2065099688270039859.Spec := by
  intro n
  simp only [A024893, Nat.add_sub_cancel, A024893.P2065099688270039859.a, A024893.P13828910964466952161.a, A003627, A003627.P15428665616045919031.f1, A003627.P15428665616045919031.a, A088879, A088879.P17861856931991418043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024893

/-! ## A024893.P6332273451421307792

`A087370(n+1)-1`
-/

namespace A024893.P6332273451421307792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) - 1

end

end A024893.P6332273451421307792

namespace A024893

/-- `A087370(n+1)-1` -/
def P6332273451421307792.Spec : Prop :=
  ∀ n, P6332273451421307792.a n = A024893 (n + 1)

theorem P6332273451421307792.correct : P6332273451421307792.Spec := by
  intro n
  simp only [A024893, Nat.add_sub_cancel, A024893.P6332273451421307792.a, A024893.P13828910964466952161.a, A003627, A003627.P15428665616045919031.f1, A003627.P15428665616045919031.a, A087370, A087370.P13081478273326354661.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024893

/-! ## A024893.P1780210840696802157

`(p?[3*n-1]-2)/3`
-/

namespace A024893.P1780210840696802157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 : ℚ) / 3

end

end A024893.P1780210840696802157

namespace A024893

/-- `(p?[3*n-1]-2)/3` -/
def P1780210840696802157.Spec : Prop :=
  ∀ n, P1780210840696802157.a n = (A024893 (n + 1) : ℚ)

end A024893

/-! ## A024893.P12189857791696078572

`A228121(n+1)-2`
-/

namespace A024893.P12189857791696078572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 2

end

end A024893.P12189857791696078572

namespace A024893

/-- `A228121(n+1)-2` -/
def P12189857791696078572.Spec : Prop :=
  ∀ n, P12189857791696078572.a n = A024893 (n + 1)

theorem P12189857791696078572.correct : P12189857791696078572.Spec := by
  intro n
  simp only [A024893, Nat.add_sub_cancel, A024893.P12189857791696078572.a, A024893.P13828910964466952161.a, A003627, A003627.P15428665616045919031.f1, A003627.P15428665616045919031.a, A228121, A228121.P1458711502036451659.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024893

/-! ## A024893.P13828910964466952161

`floor(A003627(n+1)/3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024893

/-- `floor(A003627(n+1)/3)` -/
def P13828910964466952161.Spec : Prop :=
  ∀ n, P13828910964466952161.a n = A024893 (n + 1)

theorem P13828910964466952161.correct : P13828910964466952161.Spec := by
  intro n
  simp only [A024893, Nat.add_sub_cancel]

end A024893

/-! ## A024893.P3495668671209870093

`floor(A112774(n+1)/6)`
-/

namespace A024893.P3495668671209870093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112774 (n + 1) : ℚ) / 6⌋

end

end A024893.P3495668671209870093

namespace A024893

/-- `floor(A112774(n+1)/6)` -/
def P3495668671209870093.Spec : Prop :=
  ∀ n, P3495668671209870093.a n = A024893 (n + 1)

theorem P3495668671209870093.correct : P3495668671209870093.Spec := by
  intro n
  simp only [A024893, Nat.add_sub_cancel, A024893.P3495668671209870093.a, A024893.P13828910964466952161.a, A003627, A003627.P15428665616045919031.f1, A003627.P15428665616045919031.a, A112774, A112774.P17976456391943950983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024893

/-! ## A024893.P15447184954788247017

`(A034934(n+1)-1)/2`
-/

namespace A024893.P15447184954788247017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034934 (n + 1) - 1 : ℚ) / 2

end

end A024893.P15447184954788247017

namespace A024893

/-- `(A034934(n+1)-1)/2` -/
def P15447184954788247017.Spec : Prop :=
  ∀ n, P15447184954788247017.a n = (A024893 (n + 1) : ℚ)

end A024893

/-! ## A024893.P13235440903828825507

`A003627(n+1)%A087370(n+1)`
-/

namespace A024893.P13235440903828825507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003627 (n + 1)) (A087370 (n + 1))

end

end A024893.P13235440903828825507

namespace A024893

/-- `A003627(n+1)%A087370(n+1)` -/
def P13235440903828825507.Spec : Prop :=
  ∀ n, P13235440903828825507.a n = A024893 (n + 1)

end A024893

/-! ## A024893.P3444567043962806626

`A034934(n+1)%A087370(n+1)`
-/

namespace A024893.P3444567043962806626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034934 (n + 1)) (A087370 (n + 1))

end

end A024893.P3444567043962806626

namespace A024893

/-- `A034934(n+1)%A087370(n+1)` -/
def P3444567043962806626.Spec : Prop :=
  ∀ n, P3444567043962806626.a n = A024893 (n + 1)

end A024893

/-! ## A024893.P1611974675238243381

`A045410(n+1)%A087370(n+1)`
-/

namespace A024893.P1611974675238243381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045410 (n + 1)) (A087370 (n + 1))

end

end A024893.P1611974675238243381

namespace A024893

/-- `A045410(n+1)%A087370(n+1)` -/
def P1611974675238243381.Spec : Prop :=
  ∀ n, P1611974675238243381.a n = A024893 (n + 1)

end A024893

/-! ## A024893.P8004254309519311296

`A034934(n+1)+A034934(n+1)-A003627(n+1)`
-/

namespace A024893.P8004254309519311296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1) + (A034934 (n + 1) - A003627 (n + 1))

end

end A024893.P8004254309519311296

namespace A024893

/-- `A034934(n+1)+A034934(n+1)-A003627(n+1)` -/
def P8004254309519311296.Spec : Prop :=
  ∀ n, P8004254309519311296.a n = A024893 (n + 1)

end A024893

/-! ## A024893.P8636080119988448353

`record[A228121(A133310(n))-2]`
-/

namespace A024893.P8636080119988448353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (A133310 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024893.P8636080119988448353

namespace A024893

/-- `record[A228121(A133310(n))-2]` -/
def P8636080119988448353.Spec : Prop :=
  ∀ n, P8636080119988448353.a n = A024893 (n + 1)

end A024893

/-! ## A024893.P17559583599702828350

`A144769(A091177(n+1))`
-/

namespace A024893.P17559583599702828350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A091177 (n + 1)).toNat

end

end A024893.P17559583599702828350

namespace A024893

/-- `A144769(A091177(n+1))` -/
def P17559583599702828350.Spec : Prop :=
  ∀ n, P17559583599702828350.a n = A024893 (n + 1)

end A024893

/-! ## A024893.P5360261989843206221

`eq[1, A001222(3*n+2)]`
-/

namespace A024893.P5360261989843206221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024893.P5360261989843206221

namespace A024893

/-- `eq[1, A001222(3*n+2)]` -/
def P5360261989843206221.Spec : Prop :=
  ∀ n, (P5360261989843206221.a n : ℤ) = A024893 (n + 1)

end A024893

/-! ## A024893.P353053285974236951

`eq[2, A000005(3*n+2)]`
-/

namespace A024893.P353053285974236951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024893.P353053285974236951

namespace A024893

/-- `eq[2, A000005(3*n+2)]` -/
def P353053285974236951.Spec : Prop :=
  ∀ n, (P353053285974236951.a n : ℤ) = A024893 (n + 1)

end A024893

/-! ## A024893.P8906087856099803217

`lt[n, A020639(3*n+2)]`
-/

namespace A024893.P8906087856099803217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024893.P8906087856099803217

namespace A024893

/-- `lt[n, A020639(3*n+2)]` -/
def P8906087856099803217.Spec : Prop :=
  ∀ n, (P8906087856099803217.a n : ℤ) = A024893 (n + 1)

end A024893

/-! ## A024893.P15064718975497799872

`lt[A001222(3*(n+1)-1), 2]`
-/

namespace A024893.P15064718975497799872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024893.P15064718975497799872

namespace A024893

/-- `lt[A001222(3*(n+1)-1), 2]` -/
def P15064718975497799872.Spec : Prop :=
  ∀ n, (P15064718975497799872.a n : ℤ) = A024893 (n + 1)

end A024893

/-! ## A024893.P13422209536971923925

`lt[A000005(3*(n+1)-1), 3]`
-/

namespace A024893.P13422209536971923925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024893.P13422209536971923925

namespace A024893

/-- `lt[A000005(3*(n+1)-1), 3]` -/
def P13422209536971923925.Spec : Prop :=
  ∀ n, (P13422209536971923925.a n : ℤ) = A024893 (n + 1)

end A024893

/-! ## A024893.P17020612297871181920

`lt[2*n, A006530(3*n+2)]`
-/

namespace A024893.P17020612297871181920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024893.P17020612297871181920

namespace A024893

/-- `lt[2*n, A006530(3*n+2)]` -/
def P17020612297871181920.Spec : Prop :=
  ∀ n, (P17020612297871181920.a n : ℤ) = A024893 (n + 1)

end A024893

/-! ## A024893.P10582206134121414491

`lt[3*n, A000010(3*n+2)]`
-/

namespace A024893.P10582206134121414491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024893.P10582206134121414491

namespace A024893

/-- `lt[3*n, A000010(3*n+2)]` -/
def P10582206134121414491.Spec : Prop :=
  ∀ n, (P10582206134121414491.a n : ℤ) = A024893 (n + 1)

end A024893

/-!
# A024894: Numbers k such that 5*k + 1 is prime.

The programs for A024894, the canonical program `A024894.P2872051670384874786` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024894 has offset 1).

The definition of A024894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024894.P2872051670384874786

`(p?[5*n+1]-1)/5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024894

/-- `(p?[5*n+1]-1)/5` -/
def P2872051670384874786.Spec : Prop :=
  ∀ n, P2872051670384874786.a n = (A024894 (n + 1) : ℚ)

end A024894

/-! ## A024894.P13347407371043812314

`A081759(n+1)+1`
-/

namespace A024894.P13347407371043812314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 1

end

end A024894.P13347407371043812314

namespace A024894

/-- `A081759(n+1)+1` -/
def P13347407371043812314.Spec : Prop :=
  ∀ n, P13347407371043812314.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P13498807659693379850

`2*A024912(n+1)`
-/

namespace A024894.P13498807659693379850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024912 (n + 1)

end

end A024894.P13498807659693379850

namespace A024894

/-- `2*A024912(n+1)` -/
def P13498807659693379850.Spec : Prop :=
  ∀ n, P13498807659693379850.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P11848020140030219979

`floor(A030430(n+1)/5)`
-/

namespace A024894.P11848020140030219979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030430 (n + 1) : ℚ) / 5⌋

end

end A024894.P11848020140030219979

namespace A024894

/-- `floor(A030430(n+1)/5)` -/
def P11848020140030219979.Spec : Prop :=
  ∀ n, P11848020140030219979.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P4386953626649780015

`2*(A126785(n+1)+1)`
-/

namespace A024894.P4386953626649780015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A126785 (n + 1) + 1)

end

end A024894.P4386953626649780015

namespace A024894

/-- `2*(A126785(n+1)+1)` -/
def P4386953626649780015.Spec : Prop :=
  ∀ n, P4386953626649780015.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P9427679781652574508

`A024912(n+1)+A126785(n+1)+1`
-/

namespace A024894.P9427679781652574508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) + (A126785 (n + 1) + 1)

end

end A024894.P9427679781652574508

namespace A024894

/-- `A024912(n+1)+A126785(n+1)+1` -/
def P9427679781652574508.Spec : Prop :=
  ∀ n, P9427679781652574508.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P17024489552681601942

`2*(A139368(n+1)+A102342(n+1))`
-/

namespace A024894.P17024489552681601942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139368 (n + 1) + A102342 (n + 1))

end

end A024894.P17024489552681601942

namespace A024894

/-- `2*(A139368(n+1)+A102342(n+1))` -/
def P17024489552681601942.Spec : Prop :=
  ∀ n, P17024489552681601942.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P18074812205805392286

`A024912(n+1)+A139368(n+1)+A102342(n+1)`
-/

namespace A024894.P18074812205805392286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) + (A139368 (n + 1) + A102342 (n + 1))

end

end A024894.P18074812205805392286

namespace A024894

/-- `A024912(n+1)+A139368(n+1)+A102342(n+1)` -/
def P18074812205805392286.Spec : Prop :=
  ∀ n, P18074812205805392286.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P5941303032226895821

`2*A103876(A049511(n+1))`
-/

namespace A024894.P5941303032226895821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103876 (A049511 (n + 1)).toNat

end

end A024894.P5941303032226895821

namespace A024894

/-- `2*A103876(A049511(n+1))` -/
def P5941303032226895821.Spec : Prop :=
  ∀ n, P5941303032226895821.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P3354164123705616603

`A116572(A049511(n+1))`
-/

namespace A024894.P3354164123705616603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116572 (A049511 (n + 1)).toNat

end

end A024894.P3354164123705616603

namespace A024894

/-- `A116572(A049511(n+1))` -/
def P3354164123705616603.Spec : Prop :=
  ∀ n, P3354164123705616603.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P645963698877312604

`2*eq[1, A091088(n)]`
-/

namespace A024894.P645963698877312604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024894.P645963698877312604

namespace A024894

/-- `2*eq[1, A091088(n)]` -/
def P645963698877312604.Spec : Prop :=
  ∀ n, (P645963698877312604.a n : ℤ) = A024894 (n + 1)

end A024894

/-! ## A024894.P12448969233172862926

`eq[1, A001222(5*n+1)]`
-/

namespace A024894.P12448969233172862926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024894.P12448969233172862926

namespace A024894

/-- `eq[1, A001222(5*n+1)]` -/
def P12448969233172862926.Spec : Prop :=
  ∀ n, (P12448969233172862926.a n : ℤ) = A024894 (n + 1)

end A024894

/-! ## A024894.P11785248088870951706

`eq[2, A000005(5*n+1)]`
-/

namespace A024894.P11785248088870951706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024894.P11785248088870951706

namespace A024894

/-- `eq[2, A000005(5*n+1)]` -/
def P11785248088870951706.Spec : Prop :=
  ∀ n, (P11785248088870951706.a n : ℤ) = A024894 (n + 1)

end A024894

/-! ## A024894.P15965644062389625383

`lt[n+1, A020639(5*n+1)]`
-/

namespace A024894.P15965644062389625383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024894.P15965644062389625383

namespace A024894

/-- `lt[n+1, A020639(5*n+1)]` -/
def P15965644062389625383.Spec : Prop :=
  ∀ n, (P15965644062389625383.a n : ℤ) = A024894 (n + 1)

end A024894

/-! ## A024894.P16283418693332044797

`A004277(A024912(n+1))`
-/

namespace A024894.P16283418693332044797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A024912 (n + 1)).toNat

end

end A024894.P16283418693332044797

namespace A024894

/-- `A004277(A024912(n+1))` -/
def P16283418693332044797.Spec : Prop :=
  ∀ n, P16283418693332044797.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P1809963227831764868

`2*A061800(A126785(n+1))`
-/

namespace A024894.P1809963227831764868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061800 (A126785 (n + 1)).toNat

end

end A024894.P1809963227831764868

namespace A024894

/-- `2*A061800(A126785(n+1))` -/
def P1809963227831764868.Spec : Prop :=
  ∀ n, P1809963227831764868.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P15441271405731287391

`A000010(A045453(n+2))/5`
-/

namespace A024894.P15441271405731287391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A045453 (n + 2)).toNat : ℚ) / 5

end

end A024894.P15441271405731287391

namespace A024894

/-- `A000010(A045453(n+2))/5` -/
def P15441271405731287391.Spec : Prop :=
  ∀ n, P15441271405731287391.a n = (A024894 (n + 1) : ℚ)

end A024894

/-! ## A024894.P3060853660845900804

`A004273(A024912(n+1)+1)-1`
-/

namespace A024894.P3060853660845900804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024912 (n + 1) + 1).toNat - 1

end

end A024894.P3060853660845900804

namespace A024894

/-- `A004273(A024912(n+1)+1)-1` -/
def P3060853660845900804.Spec : Prop :=
  ∀ n, P3060853660845900804.a n = A024894 (n + 1)

end A024894

/-! ## A024894.P17230478509069298883

`comp[A153329(n+1)]`
-/

namespace A024894.P17230478509069298883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A024894.P17230478509069298883

namespace A024894

/-- `comp[A153329(n+1)]` -/
def P17230478509069298883.Spec : Prop :=
  ∀ n, (P17230478509069298883.a n : ℤ) = A024894 (n + 1)

end A024894

/-! ## A024894.P17502873569725398155

`eq[1, A367970(n+1)]+1`
-/

namespace A024894.P17502873569725398155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024894.P17502873569725398155

namespace A024894

/-- `eq[1, A367970(n+1)]+1` -/
def P17502873569725398155.Spec : Prop :=
  ∀ n, (P17502873569725398155.a n : ℤ) = A024894 (n + 1)

end A024894

/-!
# A024895: Numbers k such that 5*k - 3 is prime.

The programs for A024895, the canonical program `A024895.P17027813078874753076` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024895 has offset 1).

The definition of A024895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024895.P11188312629444855134

`(p?[5*n+2]+3)/5`
-/

namespace A024895.P11188312629444855134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 5

end

end A024895.P11188312629444855134

namespace A024895

/-- `(p?[5*n+2]+3)/5` -/
def P11188312629444855134.Spec : Prop :=
  ∀ n, P11188312629444855134.a n = (A024895 (n + 1) : ℚ)

end A024895

/-! ## A024895.P17027813078874753076

`A111223(n+1)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024895

/-- `A111223(n+1)+1` -/
def P17027813078874753076.Spec : Prop :=
  ∀ n, P17027813078874753076.a n = A024895 (n + 1)

theorem P17027813078874753076.correct : P17027813078874753076.Spec := by
  intro n
  simp only [A024895, Nat.add_sub_cancel]

end A024895

/-! ## A024895.P2945840362278254910

`ceil(A045380(n+1)/5)`
-/

namespace A024895.P2945840362278254910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045380 (n + 1) : ℚ) / 5⌉

end

end A024895.P2945840362278254910

namespace A024895

/-- `ceil(A045380(n+1)/5)` -/
def P2945840362278254910.Spec : Prop :=
  ∀ n, P2945840362278254910.a n = A024895 (n + 1)

end A024895

/-! ## A024895.P7688144827541150855

`eq[1, A001222(5*n+2)]+1`
-/

namespace A024895.P7688144827541150855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024895.P7688144827541150855

namespace A024895

/-- `eq[1, A001222(5*n+2)]+1` -/
def P7688144827541150855.Spec : Prop :=
  ∀ n, (P7688144827541150855.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P13726971482920968689

`eq[2, A000005(5*n+2)]+1`
-/

namespace A024895.P13726971482920968689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024895.P13726971482920968689

namespace A024895

/-- `eq[2, A000005(5*n+2)]+1` -/
def P13726971482920968689.Spec : Prop :=
  ∀ n, (P13726971482920968689.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P7825126872174864942

`lt[A001222(4*n+2+n), 2]+1`
-/

namespace A024895.P7825126872174864942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 2 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024895.P7825126872174864942

namespace A024895

/-- `lt[A001222(4*n+2+n), 2]+1` -/
def P7825126872174864942.Spec : Prop :=
  ∀ n, (P7825126872174864942.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P15404958710220697649

`lt[A000005(4*n+n+2), 4]+1`
-/

namespace A024895.P15404958710220697649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024895.P15404958710220697649

namespace A024895

/-- `lt[A000005(4*n+n+2), 4]+1` -/
def P15404958710220697649.Spec : Prop :=
  ∀ n, (P15404958710220697649.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P15167792180811534715

`record[A020639(5*n+2)-4*n]-1`
-/

namespace A024895.P15167792180811534715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 2) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A024895.P15167792180811534715

namespace A024895

/-- `record[A020639(5*n+2)-4*n]-1` -/
def P15167792180811534715.Spec : Prop :=
  ∀ n, P15167792180811534715.a n = A024895 (n + 1)

end A024895

/-! ## A024895.P17925040442773869334

`A004482(A111223(n+1))`
-/

namespace A024895.P17925040442773869334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A111223 (n + 1)).toNat

end

end A024895.P17925040442773869334

namespace A024895

/-- `A004482(A111223(n+1))` -/
def P17925040442773869334.Spec : Prop :=
  ∀ n, P17925040442773869334.a n = A024895 (n + 1)

end A024895

/-! ## A024895.P4510531147620747939

`lt[n, A020639(A016873(n))]+1`
-/

namespace A024895.P4510531147620747939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016873 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024895.P4510531147620747939

namespace A024895

/-- `lt[n, A020639(A016873(n))]+1` -/
def P4510531147620747939.Spec : Prop :=
  ∀ n, (P4510531147620747939.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P11348030762690071374

`lt[A180964(n), A006530(A016873(n))]+1`
-/

namespace A024895.P11348030762690071374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016873 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024895.P11348030762690071374

namespace A024895

/-- `lt[A180964(n), A006530(A016873(n))]+1` -/
def P11348030762690071374.Spec : Prop :=
  ∀ n, (P11348030762690071374.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P16830358477752870901

`eq[A239614(n+1), A276680(n+1)]+1`
-/

namespace A024895.P16830358477752870901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024895.P16830358477752870901

namespace A024895

/-- `eq[A239614(n+1), A276680(n+1)]+1` -/
def P16830358477752870901.Spec : Prop :=
  ∀ n, (P16830358477752870901.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P13084520833071464154

`lt[n, A014963(5*n+2)]+1`
-/

namespace A024895.P13084520833071464154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024895.P13084520833071464154

namespace A024895

/-- `lt[n, A014963(5*n+2)]+1` -/
def P13084520833071464154.Spec : Prop :=
  ∀ n, (P13084520833071464154.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P2188296632931223621

`A138997(A045380(n+1))`
-/

namespace A024895.P2188296632931223621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A045380 (n + 1)).toNat

end

end A024895.P2188296632931223621

namespace A024895

/-- `A138997(A045380(n+1))` -/
def P2188296632931223621.Spec : Prop :=
  ∀ n, P2188296632931223621.a n = A024895 (n + 1)

end A024895

/-! ## A024895.P15134598185821542393

`A194508(A045357(n+2))`
-/

namespace A024895.P15134598185821542393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (A045357 (n + 2)).toNat

end

end A024895.P15134598185821542393

namespace A024895

/-- `A194508(A045357(n+2))` -/
def P15134598185821542393.Spec : Prop :=
  ∀ n, P15134598185821542393.a n = A024895 (n + 1)

end A024895

/-! ## A024895.P8567681488835627194

`eq[1, A319700(A017317(n))]+1`
-/

namespace A024895.P8567681488835627194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024895.P8567681488835627194

namespace A024895

/-- `eq[1, A319700(A017317(n))]+1` -/
def P8567681488835627194.Spec : Prop :=
  ∀ n, (P8567681488835627194.a n : ℤ) = A024895 (n + 1)

end A024895

/-! ## A024895.P5585792119496721522

`A008616(2*A045380(n+1))`
-/

namespace A024895.P5585792119496721522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * A045380 (n + 1)).toNat

end

end A024895.P5585792119496721522

namespace A024895

/-- `A008616(2*A045380(n+1))` -/
def P5585792119496721522.Spec : Prop :=
  ∀ n, P5585792119496721522.a n = A024895 (n + 1)

end A024895

/-! ## A024895.P1760487322586779386

`A059995(2*A045380(n+1))+1`
-/

namespace A024895.P1760487322586779386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A045380 (n + 1)).toNat + 1

end

end A024895.P1760487322586779386

namespace A024895

/-- `A059995(2*A045380(n+1))+1` -/
def P1760487322586779386.Spec : Prop :=
  ∀ n, P1760487322586779386.a n = A024895 (n + 1)

end A024895

/-! ## A024895.P9014185648252975733

`A008616(A045380(n+1)+A045380(n+1)+1)`
-/

namespace A024895.P9014185648252975733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A045380 (n + 1) + (A045380 (n + 1) + 1)).toNat

end

end A024895.P9014185648252975733

namespace A024895

/-- `A008616(A045380(n+1)+A045380(n+1)+1)` -/
def P9014185648252975733.Spec : Prop :=
  ∀ n, P9014185648252975733.a n = A024895 (n + 1)

end A024895

/-!
# A024896: Numbers k such that 5*k - 2 is prime.

The programs for A024896, the canonical program `A024896.P16795519031503293182` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024896 has offset 1).

The definition of A024896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024896.P16795519031503293182

`(p?[5*n-2]+2)/5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024896

/-- `(p?[5*n-2]+2)/5` -/
def P16795519031503293182.Spec : Prop :=
  ∀ n, P16795519031503293182.a n = (A024896 (n + 1) : ℚ)

end A024896

/-! ## A024896.P12856494602786784559

`A087505(n+1)+1`
-/

namespace A024896.P12856494602786784559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 1) + 1

end

end A024896.P12856494602786784559

namespace A024896

/-- `A087505(n+1)+1` -/
def P12856494602786784559.Spec : Prop :=
  ∀ n, P12856494602786784559.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P6880537494422962638

`A107304(n+1)-1`
-/

namespace A024896.P6880537494422962638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107304 (n + 1) - 1

end

end A024896.P6880537494422962638

namespace A024896

/-- `A107304(n+1)-1` -/
def P6880537494422962638.Spec : Prop :=
  ∀ n, P6880537494422962638.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P4628832922271041920

`ceil(A030431(n+1)/5)`
-/

namespace A024896.P4628832922271041920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030431 (n + 1) : ℚ) / 5⌉

end

end A024896.P4628832922271041920

namespace A024896

/-- `ceil(A030431(n+1)/5)` -/
def P4628832922271041920.Spec : Prop :=
  ∀ n, P4628832922271041920.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P8561536561721166216

`2*A102338(n+1)+1`
-/

namespace A024896.P8561536561721166216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102338 (n + 1) + 1

end

end A024896.P8561536561721166216

namespace A024896

/-- `2*A102338(n+1)+1` -/
def P8561536561721166216.Spec : Prop :=
  ∀ n, P8561536561721166216.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P14625715916005911442

`2*A024913(n+1)-1`
-/

namespace A024896.P14625715916005911442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024913 (n + 1) - 1

end

end A024896.P14625715916005911442

namespace A024896

/-- `2*A024913(n+1)-1` -/
def P14625715916005911442.Spec : Prop :=
  ∀ n, P14625715916005911442.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P5242586405299909660

`A102338(n+1)+A024913(n+1)`
-/

namespace A024896.P5242586405299909660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1) + A024913 (n + 1)

end

end A024896.P5242586405299909660

namespace A024896

/-- `A102338(n+1)+A024913(n+1)` -/
def P5242586405299909660.Spec : Prop :=
  ∀ n, P5242586405299909660.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P1534609890479401269

`2*A185322(A049508(n+1))-1`
-/

namespace A024896.P1534609890479401269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185322 (A049508 (n + 1)).toNat - 1

end

end A024896.P1534609890479401269

namespace A024896

/-- `2*A185322(A049508(n+1))-1` -/
def P1534609890479401269.Spec : Prop :=
  ∀ n, P1534609890479401269.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P7227189044079550696

`A005843(A102338(n+1))+1`
-/

namespace A024896.P7227189044079550696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A102338 (n + 1)).toNat + 1

end

end A024896.P7227189044079550696

namespace A024896

/-- `A005843(A102338(n+1))+1` -/
def P7227189044079550696.Spec : Prop :=
  ∀ n, P7227189044079550696.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P1873724535076593242

`eq[2, A000005(5*n+3)]+1`
-/

namespace A024896.P1873724535076593242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024896.P1873724535076593242

namespace A024896

/-- `eq[2, A000005(5*n+3)]+1` -/
def P1873724535076593242.Spec : Prop :=
  ∀ n, (P1873724535076593242.a n : ℤ) = A024896 (n + 1)

end A024896

/-! ## A024896.P10482720664701610447

`lt[A001222(5*n+3), 2]+1`
-/

namespace A024896.P10482720664701610447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A024896.P10482720664701610447

namespace A024896

/-- `lt[A001222(5*n+3), 2]+1` -/
def P10482720664701610447.Spec : Prop :=
  ∀ n, (P10482720664701610447.a n : ℤ) = A024896 (n + 1)

end A024896

/-! ## A024896.P16564036229899650802

`lt[n+1, A020639(5*n+3)]+1`
-/

namespace A024896.P16564036229899650802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024896.P16564036229899650802

namespace A024896

/-- `lt[n+1, A020639(5*n+3)]+1` -/
def P16564036229899650802.Spec : Prop :=
  ∀ n, (P16564036229899650802.a n : ℤ) = A024896 (n + 1)

end A024896

/-! ## A024896.P4896704411427996199

`A004273(A024913(n+1))`
-/

namespace A024896.P4896704411427996199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024913 (n + 1)).toNat

end

end A024896.P4896704411427996199

namespace A024896

/-- `A004273(A024913(n+1))` -/
def P4896704411427996199.Spec : Prop :=
  ∀ n, P4896704411427996199.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P4853753978338198234

`A004273(A102338(n+1)+1)`
-/

namespace A024896.P4853753978338198234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A102338 (n + 1) + 1).toNat

end

end A024896.P4853753978338198234

namespace A024896

/-- `A004273(A102338(n+1)+1)` -/
def P4853753978338198234.Spec : Prop :=
  ∀ n, P4853753978338198234.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P4302395895156028637

`2*A023452(A108584(n+1))+1`
-/

namespace A024896.P4302395895156028637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023452 (A108584 (n + 1)).toNat + 1

end

end A024896.P4302395895156028637

namespace A024896

/-- `2*A023452(A108584(n+1))+1` -/
def P4302395895156028637.Spec : Prop :=
  ∀ n, P4302395895156028637.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P45630966242583579

`2*A023455(A108854(n+1))+1`
-/

namespace A024896.P45630966242583579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023455 (A108854 (n + 1)).toNat + 1

end

end A024896.P45630966242583579

namespace A024896

/-- `2*A023455(A108854(n+1))+1` -/
def P45630966242583579.Spec : Prop :=
  ∀ n, P45630966242583579.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P11346274912645478733

`eq[1, A292438(A019428(n))+1]`
-/

namespace A024896.P11346274912645478733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A019428 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024896.P11346274912645478733

namespace A024896

/-- `eq[1, A292438(A019428(n))+1]` -/
def P11346274912645478733.Spec : Prop :=
  ∀ n, (P11346274912645478733.a n : ℤ) = A024896 (n + 1)

end A024896

/-! ## A024896.P11872329065863596558

`lt[∑{e}[5*n+3, #], 2]+1`
-/

namespace A024896.P11872329065863596558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A024896.P11872329065863596558

namespace A024896

/-- `lt[∑{e}[5*n+3, #], 2]+1` -/
def P11872329065863596558.Spec : Prop :=
  ∀ n, (P11872329065863596558.a n : ℤ) = A024896 (n + 1)

end A024896

/-! ## A024896.P6670516418768835909

`A004442(A087505(n+1))`
-/

namespace A024896.P6670516418768835909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A087505 (n + 1)).toNat

end

end A024896.P6670516418768835909

namespace A024896

/-- `A004442(A087505(n+1))` -/
def P6670516418768835909.Spec : Prop :=
  ∀ n, P6670516418768835909.a n = A024896 (n + 1)

end A024896

/-! ## A024896.P12331662018827081787

`A014681(A107304(n+1))`
-/

namespace A024896.P12331662018827081787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A107304 (n + 1)).toNat

end

end A024896.P12331662018827081787

namespace A024896

/-- `A014681(A107304(n+1))` -/
def P12331662018827081787.Spec : Prop :=
  ∀ n, P12331662018827081787.a n = A024896 (n + 1)

end A024896

/-!
# A024897: Numbers k such that 5*k + 4 is prime.

The programs for A024897, the canonical program `A024897.P4072693481099583505` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024897 has offset 1).

The definition of A024897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024897.P5953872466098191028

`(p?[5*n-1]-4)/5`
-/

namespace A024897.P5953872466098191028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4 : ℚ) / 5

end

end A024897.P5953872466098191028

namespace A024897

/-- `(p?[5*n-1]-4)/5` -/
def P5953872466098191028.Spec : Prop :=
  ∀ n, P5953872466098191028.a n = (A024897 (n + 1) : ℚ)

end A024897

/-! ## A024897.P4072693481099583505

`A111230(n+1)+2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024897

/-- `A111230(n+1)+2` -/
def P4072693481099583505.Spec : Prop :=
  ∀ n, P4072693481099583505.a n = A024897 (n + 1)

theorem P4072693481099583505.correct : P4072693481099583505.Spec := by
  intro n
  simp only [A024897, Nat.add_sub_cancel]

end A024897

/-! ## A024897.P14418716910451835217

`A153355(n+1)-1`
-/

namespace A024897.P14418716910451835217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153355 (n + 1) - 1

end

end A024897.P14418716910451835217

namespace A024897

/-- `A153355(n+1)-1` -/
def P14418716910451835217.Spec : Prop :=
  ∀ n, P14418716910451835217.a n = A024897 (n + 1)

theorem P14418716910451835217.correct : P14418716910451835217.Spec := by
  intro n
  simp only [A024897, Nat.add_sub_cancel, A024897.P14418716910451835217.a, A024897.P4072693481099583505.a, A111230, A111230.P12790612550037976015.a, A153355, A153355.P8034231718134944401.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024897

/-! ## A024897.P10850579515873719420

`floor(A030433(n+1)/5)`
-/

namespace A024897.P10850579515873719420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030433 (n + 1) : ℚ) / 5⌋

end

end A024897.P10850579515873719420

namespace A024897

/-- `floor(A030433(n+1)/5)` -/
def P10850579515873719420.Spec : Prop :=
  ∀ n, P10850579515873719420.a n = A024897 (n + 1)

end A024897

/-! ## A024897.P14241740253419410976

`2*A102700(n+1)+1`
-/

namespace A024897.P14241740253419410976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102700 (n + 1) + 1

end

end A024897.P14241740253419410976

namespace A024897

/-- `2*A102700(n+1)+1` -/
def P14241740253419410976.Spec : Prop :=
  ∀ n, P14241740253419410976.a n = A024897 (n + 1)

theorem P14241740253419410976.correct : P14241740253419410976.Spec := by
  intro n
  simp only [A024897, Nat.add_sub_cancel, A024897.P14241740253419410976.a, A024897.P4072693481099583505.a, A102700, A102700.P10486691176846618732.a, A111230, A111230.P12790612550037976015.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024897

/-! ## A024897.P7309695346466920133

`2*A105042(n+1)-1`
-/

namespace A024897.P7309695346466920133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105042 (n + 1) - 1

end

end A024897.P7309695346466920133

namespace A024897

/-- `2*A105042(n+1)-1` -/
def P7309695346466920133.Spec : Prop :=
  ∀ n, P7309695346466920133.a n = A024897 (n + 1)

theorem P7309695346466920133.correct : P7309695346466920133.Spec := by
  intro n
  simp only [A024897, Nat.add_sub_cancel, A024897.P7309695346466920133.a, A024897.P4072693481099583505.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A111230, A111230.P12790612550037976015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024897

/-! ## A024897.P7120637257667035969

`A105042(n+1)+A102700(n+1)`
-/

namespace A024897.P7120637257667035969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) + A102700 (n + 1)

end

end A024897.P7120637257667035969

namespace A024897

/-- `A105042(n+1)+A102700(n+1)` -/
def P7120637257667035969.Spec : Prop :=
  ∀ n, P7120637257667035969.a n = A024897 (n + 1)

theorem P7120637257667035969.correct : P7120637257667035969.Spec := by
  intro n
  simp only [A024897, Nat.add_sub_cancel, A024897.P7120637257667035969.a, A024897.P4072693481099583505.a, A102700, A102700.P10486691176846618732.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A111230, A111230.P12790612550037976015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024897

/-! ## A024897.P645428965837716343

`A030433(n+1)%A153355(n+1)`
-/

namespace A024897.P645428965837716343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030433 (n + 1)) (A153355 (n + 1))

end

end A024897.P645428965837716343

namespace A024897

/-- `A030433(n+1)%A153355(n+1)` -/
def P645428965837716343.Spec : Prop :=
  ∀ n, P645428965837716343.a n = A024897 (n + 1)

end A024897

/-! ## A024897.P3313371758904499178

`A116572(A049510(n+1))`
-/

namespace A024897.P3313371758904499178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116572 (A049510 (n + 1)).toNat

end

end A024897.P3313371758904499178

namespace A024897

/-- `A116572(A049510(n+1))` -/
def P3313371758904499178.Spec : Prop :=
  ∀ n, P3313371758904499178.a n = A024897 (n + 1)

end A024897

/-! ## A024897.P4670219471329339403

`A005408(A105042(n+1)-2)+2`
-/

namespace A024897.P4670219471329339403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A105042 (n + 1) - 2).toNat + 2

end

end A024897.P4670219471329339403

namespace A024897

/-- `A005408(A105042(n+1)-2)+2` -/
def P4670219471329339403.Spec : Prop :=
  ∀ n, P4670219471329339403.a n = A024897 (n + 1)

end A024897

/-! ## A024897.P4931153151514232812

`eq[1, A001222(5*n+4)]`
-/

namespace A024897.P4931153151514232812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024897.P4931153151514232812

namespace A024897

/-- `eq[1, A001222(5*n+4)]` -/
def P4931153151514232812.Spec : Prop :=
  ∀ n, (P4931153151514232812.a n : ℤ) = A024897 (n + 1)

end A024897

/-! ## A024897.P6469610790921636200

`eq[2, A000005(5*n+4)]`
-/

namespace A024897.P6469610790921636200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024897.P6469610790921636200

namespace A024897

/-- `eq[2, A000005(5*n+4)]` -/
def P6469610790921636200.Spec : Prop :=
  ∀ n, (P6469610790921636200.a n : ℤ) = A024897 (n + 1)

end A024897

/-! ## A024897.P8584871044834460475

`lt[A001222(5*(n+1)-1), 2]`
-/

namespace A024897.P8584871044834460475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024897.P8584871044834460475

namespace A024897

/-- `lt[A001222(5*(n+1)-1), 2]` -/
def P8584871044834460475.Spec : Prop :=
  ∀ n, (P8584871044834460475.a n : ℤ) = A024897 (n + 1)

end A024897

/-! ## A024897.P13506475902152474289

`lt[A000005(5*(n+1)-1), 3]`
-/

namespace A024897.P13506475902152474289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A024897.P13506475902152474289

namespace A024897

/-- `lt[A000005(5*(n+1)-1), 3]` -/
def P13506475902152474289.Spec : Prop :=
  ∀ n, (P13506475902152474289.a n : ℤ) = A024897 (n + 1)

end A024897

/-! ## A024897.P11330268833617916753

`lt[n+2, A020639(5*n+4)]`
-/

namespace A024897.P11330268833617916753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024897.P11330268833617916753

namespace A024897

/-- `lt[n+2, A020639(5*n+4)]` -/
def P11330268833617916753.Spec : Prop :=
  ∀ n, (P11330268833617916753.a n : ℤ) = A024897 (n + 1)

end A024897

/-! ## A024897.P986918032300601036

`A005408(A102700(n+1))`
-/

namespace A024897.P986918032300601036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A102700 (n + 1)).toNat

end

end A024897.P986918032300601036

namespace A024897

/-- `A005408(A102700(n+1))` -/
def P986918032300601036.Spec : Prop :=
  ∀ n, P986918032300601036.a n = A024897 (n + 1)

end A024897

/-! ## A024897.P17480235164940888668

`A004273(A105042(n+1))`
-/

namespace A024897.P17480235164940888668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A105042 (n + 1)).toNat

end

end A024897.P17480235164940888668

namespace A024897

/-- `A004273(A105042(n+1))` -/
def P17480235164940888668.Spec : Prop :=
  ∀ n, P17480235164940888668.a n = A024897 (n + 1)

end A024897

/-! ## A024897.P15751689532172870837

`A007479(A111230(n+1))`
-/

namespace A024897.P15751689532172870837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007479 (A111230 (n + 1)).toNat

end

end A024897.P15751689532172870837

namespace A024897

/-- `A007479(A111230(n+1))` -/
def P15751689532172870837.Spec : Prop :=
  ∀ n, P15751689532172870837.a n = A024897 (n + 1)

end A024897

/-! ## A024897.P17859826312604102515

`A004273(A102700(n+1)+1)`
-/

namespace A024897.P17859826312604102515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A102700 (n + 1) + 1).toNat

end

end A024897.P17859826312604102515

namespace A024897

/-- `A004273(A102700(n+1)+1)` -/
def P17859826312604102515.Spec : Prop :=
  ∀ n, P17859826312604102515.a n = A024897 (n + 1)

end A024897

/-! ## A024897.P1177208610278874462

`A005408(A105042(n+1)-1)`
-/

namespace A024897.P1177208610278874462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A105042 (n + 1) - 1).toNat

end

end A024897.P1177208610278874462

namespace A024897

/-- `A005408(A105042(n+1)-1)` -/
def P1177208610278874462.Spec : Prop :=
  ∀ n, P1177208610278874462.a n = A024897 (n + 1)

end A024897

/-!
# A024898: Positive integers k such that 6*k - 1 is prime.

The programs for A024898, the canonical program `A024898.P2838277204682131429` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024898 has offset 1).

The definition of A024898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024898.P2192359395465489943

`A059325(n+1)+1`
-/

namespace A024898.P2192359395465489943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + 1

end

end A024898.P2192359395465489943

namespace A024898

/-- `A059325(n+1)+1` -/
def P2192359395465489943.Spec : Prop :=
  ∀ n, P2192359395465489943.a n = A024898 (n + 1)

theorem P2192359395465489943.correct : P2192359395465489943.Spec := by
  intro n
  simp only [A024898, Nat.add_sub_cancel, A024898.P2192359395465489943.a, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A059325, A059325.P16762475601172180159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024898

/-! ## A024898.P7793225533126978027

`A153134(n+1)-1`
-/

namespace A024898.P7793225533126978027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1) - 1

end

end A024898.P7793225533126978027

namespace A024898

/-- `A153134(n+1)-1` -/
def P7793225533126978027.Spec : Prop :=
  ∀ n, P7793225533126978027.a n = A024898 (n + 1)

theorem P7793225533126978027.correct : P7793225533126978027.Spec := by
  intro n
  simp only [A024898, Nat.add_sub_cancel, A024898.P7793225533126978027.a, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A153134, A153134.P3803390437604555717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024898

/-! ## A024898.P2838277204682131429

`ceil(A007528(n+1)/6)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024898

/-- `ceil(A007528(n+1)/6)` -/
def P2838277204682131429.Spec : Prop :=
  ∀ n, P2838277204682131429.a n = A024898 (n + 1)

theorem P2838277204682131429.correct : P2838277204682131429.Spec := by
  intro n
  simp only [A024898, Nat.add_sub_cancel]

end A024898

/-! ## A024898.P12885872894783893641

`(A173178(n+1)+2)/3`
-/

namespace A024898.P12885872894783893641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173178 (n + 1) + 2 : ℚ) / 3

end

end A024898.P12885872894783893641

namespace A024898

/-- `(A173178(n+1)+2)/3` -/
def P12885872894783893641.Spec : Prop :=
  ∀ n, P12885872894783893641.a n = (A024898 (n + 1) : ℚ)

theorem P12885872894783893641.correct : P12885872894783893641.Spec := by
  intro n
  simp only [A024898, Nat.add_sub_cancel, A024898.P12885872894783893641.a, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A173178, A173178.P13841244607503590073.a, A059325, A059325.P16762475601172180159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024898

/-! ## A024898.P3829702283945614725

`eq[1, A245839(2*n+1)]+1`
-/

namespace A024898.P3829702283945614725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024898.P3829702283945614725

namespace A024898

/-- `eq[1, A245839(2*n+1)]+1` -/
def P3829702283945614725.Spec : Prop :=
  ∀ n, (P3829702283945614725.a n : ℤ) = A024898 (n + 1)

end A024898

/-! ## A024898.P17138810624445933179

`A358565(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A024898.P17138810624445933179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A358565 (n + 1) + a (n - 1)

end

end A024898.P17138810624445933179

namespace A024898

/-- `A358565(n+1)+a(n-1)` -/
def P17138810624445933179.Spec : Prop :=
  ∀ n, P17138810624445933179.a n = A024898 (n + 1)

end A024898

/-! ## A024898.P16970871566012343840

`A022760(n+1)-A024899(n+1)`
-/

namespace A024898.P16970871566012343840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022760 (n + 1) - A024899 (n + 1)

end

end A024898.P16970871566012343840

namespace A024898

/-- `A022760(n+1)-A024899(n+1)` -/
def P16970871566012343840.Spec : Prop :=
  ∀ n, P16970871566012343840.a n = A024898 (n + 1)

end A024898

/-! ## A024898.P13403589559105844152

`A024899(n+1)-A139394(n+1)`
-/

namespace A024898.P13403589559105844152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - A139394 (n + 1)

end

end A024898.P13403589559105844152

namespace A024898

/-- `A024899(n+1)-A139394(n+1)` -/
def P13403589559105844152.Spec : Prop :=
  ∀ n, P13403589559105844152.a n = A024898 (n + 1)

theorem P13403589559105844152.correct : P13403589559105844152.Spec := by
  intro n
  simp only [A024898, Nat.add_sub_cancel, A024898.P13403589559105844152.a, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A024899, A024899.P11184081980913290394.a, A139394, A139394.P5885882405696362686.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024898

/-! ## A024898.P13493256975233606623

`∪[A002822(n+1), A121763(n+1)]`
-/

namespace A024898.P13493256975233606623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024898.P13493256975233606623

namespace A024898

/-- `∪[A002822(n+1), A121763(n+1)]` -/
def P13493256975233606623.Spec : Prop :=
  ∀ n, (P13493256975233606623.a n : ℤ) = A024898 (n + 1)

end A024898

/-! ## A024898.P997314320633374171

`A022760(n+1)-(A153218(n+1)+1)`
-/

namespace A024898.P997314320633374171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022760 (n + 1) - (A153218 (n + 1) + 1)

end

end A024898.P997314320633374171

namespace A024898

/-- `A022760(n+1)-(A153218(n+1)+1)` -/
def P997314320633374171.Spec : Prop :=
  ∀ n, P997314320633374171.a n = A024898 (n + 1)

theorem P997314320633374171.correct : P997314320633374171.Spec := by
  intro n
  simp only [A024898, Nat.add_sub_cancel, A024898.P997314320633374171.a, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A022760, A022760.P12074805106371372305.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A153134, A153134.P3803390437604555717.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024898

/-! ## A024898.P17815802235577782905

`A153218(n+1)+1-A139394(n+1)`
-/

namespace A024898.P17815802235577782905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + (1 - A139394 (n + 1))

end

end A024898.P17815802235577782905

namespace A024898

/-- `A153218(n+1)+1-A139394(n+1)` -/
def P17815802235577782905.Spec : Prop :=
  ∀ n, P17815802235577782905.a n = A024898 (n + 1)

end A024898

/-! ## A024898.P1592201882626915204

`A022760(n+1)-A024892(n+1)/2`
-/

namespace A024898.P1592201882626915204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022760 (n + 1) : ℚ) - (A024892 (n + 1) : ℚ) / 2

end

end A024898.P1592201882626915204

namespace A024898

/-- `A022760(n+1)-A024892(n+1)/2` -/
def P1592201882626915204.Spec : Prop :=
  ∀ n, P1592201882626915204.a n = (A024898 (n + 1) : ℚ)

theorem P1592201882626915204.correct : P1592201882626915204.Spec := by
  intro n
  simp only [A024898, Nat.add_sub_cancel, A024898.P1592201882626915204.a, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A022760, A022760.P12074805106371372305.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153134, A153134.P3803390437604555717.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024898

/-! ## A024898.P12744443270461532050

`(A022760(n+1)-A139394(n+1))/2`
-/

namespace A024898.P12744443270461532050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022760 (n + 1) - A139394 (n + 1) : ℚ) / 2

end

end A024898.P12744443270461532050

namespace A024898

/-- `(A022760(n+1)-A139394(n+1))/2` -/
def P12744443270461532050.Spec : Prop :=
  ∀ n, P12744443270461532050.a n = (A024898 (n + 1) : ℚ)

end A024898

/-! ## A024898.P11229657934372383629

`A024892(n+1)/2-A139394(n+1)`
-/

namespace A024898.P11229657934372383629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024892 (n + 1) : ℚ) / 2 - (A139394 (n + 1) : ℚ)

end

end A024898.P11229657934372383629

namespace A024898

/-- `A024892(n+1)/2-A139394(n+1)` -/
def P11229657934372383629.Spec : Prop :=
  ∀ n, P11229657934372383629.a n = (A024898 (n + 1) : ℚ)

end A024898

/-! ## A024898.P9686151015107320819

`A087370(n+2)/2`
-/

namespace A024898.P9686151015107320819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087370 (n + 2) : ℚ) / 2

end

end A024898.P9686151015107320819

namespace A024898

/-- `A087370(n+2)/2` -/
def P9686151015107320819.Spec : Prop :=
  ∀ n, P9686151015107320819.a n = (A024898 (n + 1) : ℚ)

end A024898

/-! ## A024898.P14749280953322715897

`floor(A228121(n+2)/2)`
-/

namespace A024898.P14749280953322715897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228121 (n + 2) : ℚ) / 2⌋

end

end A024898.P14749280953322715897

namespace A024898

/-- `floor(A228121(n+2)/2)` -/
def P14749280953322715897.Spec : Prop :=
  ∀ n, P14749280953322715897.a n = A024898 (n + 1)

end A024898

/-! ## A024898.P5393586755213230828

`(A024893(n+2)+1)/2`
-/

namespace A024898.P5393586755213230828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024893 (n + 2) + 1 : ℚ) / 2

end

end A024898.P5393586755213230828

namespace A024898

/-- `(A024893(n+2)+1)/2` -/
def P5393586755213230828.Spec : Prop :=
  ∀ n, P5393586755213230828.a n = (A024898 (n + 1) : ℚ)

end A024898

/-! ## A024898.P14844083718963051596

`A088879(n+2)/2+1`
-/

namespace A024898.P14844083718963051596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088879 (n + 2) : ℚ) / 2 + 1

end

end A024898.P14844083718963051596

namespace A024898

/-- `A088879(n+2)/2+1` -/
def P14844083718963051596.Spec : Prop :=
  ∀ n, P14844083718963051596.a n = (A024898 (n + 1) : ℚ)

end A024898

/-! ## A024898.P13186554916506535620

`A024893(n+2)+A024893(n+2)-A173178(n+1)`
-/

namespace A024898.P13186554916506535620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 2) + (A024893 (n + 2) - A173178 (n + 1))

end

end A024898.P13186554916506535620

namespace A024898

/-- `A024893(n+2)+A024893(n+2)-A173178(n+1)` -/
def P13186554916506535620.Spec : Prop :=
  ∀ n, P13186554916506535620.a n = A024898 (n + 1)

end A024898

/-! ## A024898.P18375468326016544708

`A116579(A091177(n+2))+1`
-/

namespace A024898.P18375468326016544708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116579 (A091177 (n + 2)).toNat + 1

end

end A024898.P18375468326016544708

namespace A024898

/-- `A116579(A091177(n+2))+1` -/
def P18375468326016544708.Spec : Prop :=
  ∀ n, P18375468326016544708.a n = A024898 (n + 1)

end A024898

/-!
# A024899: Numbers k such that 6*k + 1 is prime.

The programs for A024899, the canonical program `A024899.P11184081980913290394` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024899 has offset 1).

The definition of A024899 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024899.P11184081980913290394

`A024892(n+1)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024899

/-- `A024892(n+1)/2` -/
def P11184081980913290394.Spec : Prop :=
  ∀ n, P11184081980913290394.a n = (A024899 (n + 1) : ℚ)

end A024899

/-! ## A024899.P6387394154887463989

`(A034936(n+1)+1)/2`
-/

namespace A024899.P6387394154887463989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034936 (n + 1) + 1 : ℚ) / 2

end

end A024899.P6387394154887463989

namespace A024899

/-- `(A034936(n+1)+1)/2` -/
def P6387394154887463989.Spec : Prop :=
  ∀ n, P6387394154887463989.a n = (A024899 (n + 1) : ℚ)

end A024899

/-! ## A024899.P12281820664750606428

`(A002476(n+1)-1)/6`
-/

namespace A024899.P12281820664750606428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) - 1 : ℚ) / 6

end

end A024899.P12281820664750606428

namespace A024899

/-- `(A002476(n+1)-1)/6` -/
def P12281820664750606428.Spec : Prop :=
  ∀ n, P12281820664750606428.a n = (A024899 (n + 1) : ℚ)

end A024899

/-! ## A024899.P17584740905745623258

`((p?[3*n+1]-3)/2+1)/3`
-/

namespace A024899.P17584740905745623258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℚ) / 2 + 1) / 3

end

end A024899.P17584740905745623258

namespace A024899

/-- `((p?[3*n+1]-3)/2+1)/3` -/
def P17584740905745623258.Spec : Prop :=
  ∀ n, P17584740905745623258.a n = (A024899 (n + 1) : ℚ)

end A024899

/-! ## A024899.P17331944957303579145

`A153218(n+1)+1`
-/

namespace A024899.P17331944957303579145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + 1

end

end A024899.P17331944957303579145

namespace A024899

/-- `A153218(n+1)+1` -/
def P17331944957303579145.Spec : Prop :=
  ∀ n, P17331944957303579145.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P16655281531052799477

`floor(A153183(n+1)/2)`
-/

namespace A024899.P16655281531052799477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153183 (n + 1) : ℚ) / 2⌋

end

end A024899.P16655281531052799477

namespace A024899

/-- `floor(A153183(n+1)/2)` -/
def P16655281531052799477.Spec : Prop :=
  ∀ n, P16655281531052799477.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P2817808828237502292

`ceil(A034936(n+1)/2)`
-/

namespace A024899.P2817808828237502292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034936 (n + 1) : ℚ) / 2⌉

end

end A024899.P2817808828237502292

namespace A024899

/-- `ceil(A034936(n+1)/2)` -/
def P2817808828237502292.Spec : Prop :=
  ∀ n, P2817808828237502292.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P16347963340269398360

`floor(A002476(n+1)/6)`
-/

namespace A024899.P16347963340269398360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002476 (n + 1) : ℚ) / 6⌋

end

end A024899.P16347963340269398360

namespace A024899

/-- `floor(A002476(n+1)/6)` -/
def P16347963340269398360.Spec : Prop :=
  ∀ n, P16347963340269398360.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P5726258161543959081

`A089953(n+1)/2+1`
-/

namespace A024899.P5726258161543959081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089953 (n + 1) : ℚ) / 2 + 1

end

end A024899.P5726258161543959081

namespace A024899

/-- `A089953(n+1)/2+1` -/
def P5726258161543959081.Spec : Prop :=
  ∀ n, P5726258161543959081.a n = (A024899 (n + 1) : ℚ)

end A024899

/-! ## A024899.P1825547922320499877

`A107303(n+1)/2-1`
-/

namespace A024899.P1825547922320499877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107303 (n + 1) : ℚ) / 2 - 1

end

end A024899.P1825547922320499877

namespace A024899

/-- `A107303(n+1)/2-1` -/
def P1825547922320499877.Spec : Prop :=
  ∀ n, P1825547922320499877.a n = (A024899 (n + 1) : ℚ)

end A024899

/-! ## A024899.P4692747921163647997

`(A173177(n+1)+1)/3`
-/

namespace A024899.P4692747921163647997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173177 (n + 1) + 1 : ℚ) / 3

end

end A024899.P4692747921163647997

namespace A024899

/-- `(A173177(n+1)+1)/3` -/
def P4692747921163647997.Spec : Prop :=
  ∀ n, P4692747921163647997.a n = (A024899 (n + 1) : ℚ)

end A024899

/-! ## A024899.P8940323123182838083

`eq[1, A245838(2*(n+1))]+1`
-/

namespace A024899.P8940323123182838083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024899.P8940323123182838083

namespace A024899

/-- `eq[1, A245838(2*(n+1))]+1` -/
def P8940323123182838083.Spec : Prop :=
  ∀ n, (P8940323123182838083.a n : ℤ) = A024899 (n + 1)

end A024899

/-! ## A024899.P14290459883717430346

`A014682(A024892(n+1))`
-/

namespace A024899.P14290459883717430346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024892 (n + 1)).toNat

end

end A024899.P14290459883717430346

namespace A024899

/-- `A014682(A024892(n+1))` -/
def P14290459883717430346.Spec : Prop :=
  ∀ n, P14290459883717430346.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P3092811131911348933

`A014682(A034936(n+1)+1)`
-/

namespace A024899.P3092811131911348933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034936 (n + 1) + 1).toNat

end

end A024899.P3092811131911348933

namespace A024899

/-- `A014682(A034936(n+1)+1)` -/
def P3092811131911348933.Spec : Prop :=
  ∀ n, P3092811131911348933.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P1669666791980410222

`A014682(A089953(n+1))+1`
-/

namespace A024899.P1669666791980410222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A089953 (n + 1)).toNat + 1

end

end A024899.P1669666791980410222

namespace A024899

/-- `A014682(A089953(n+1))+1` -/
def P1669666791980410222.Spec : Prop :=
  ∀ n, P1669666791980410222.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P4120067929398676808

`A139394(n+1)+A024898(n+1)`
-/

namespace A024899.P4120067929398676808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139394 (n + 1) + A024898 (n + 1)

end

end A024899.P4120067929398676808

namespace A024899

/-- `A139394(n+1)+A024898(n+1)` -/
def P4120067929398676808.Spec : Prop :=
  ∀ n, P4120067929398676808.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P17930754328426049256

`A022760(n+1)-A024898(n+1)`
-/

namespace A024899.P17930754328426049256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022760 (n + 1) - A024898 (n + 1)

end

end A024899.P17930754328426049256

namespace A024899

/-- `A022760(n+1)-A024898(n+1)` -/
def P17930754328426049256.Spec : Prop :=
  ∀ n, P17930754328426049256.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P13340054104891698204

`A173177(n+1)-A034936(n+1)`
-/

namespace A024899.P13340054104891698204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1) - A034936 (n + 1)

end

end A024899.P13340054104891698204

namespace A024899

/-- `A173177(n+1)-A034936(n+1)` -/
def P13340054104891698204.Spec : Prop :=
  ∀ n, P13340054104891698204.a n = A024899 (n + 1)

end A024899

/-! ## A024899.P10795020642468986059

`∪[A002822(n+1), A121765(n+1)]`
-/

namespace A024899.P10795020642468986059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024899.P10795020642468986059

namespace A024899

/-- `∪[A002822(n+1), A121765(n+1)]` -/
def P10795020642468986059.Spec : Prop :=
  ∀ n, (P10795020642468986059.a n : ℤ) = A024899 (n + 1)

end A024899

/-! ## A024899.P6005319028100250278

`(A177965(n+2)-1)/3`
-/

namespace A024899.P6005319028100250278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177965 (n + 2) - 1 : ℚ) / 3

end

end A024899.P6005319028100250278

namespace A024899

/-- `(A177965(n+2)-1)/3` -/
def P6005319028100250278.Spec : Prop :=
  ∀ n, P6005319028100250278.a n = (A024899 (n + 1) : ℚ)

end A024899

