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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A187200: Parse the Fibonacci word A003849 into distinct phrases 0, 1, 00, 10, 100, 1001, 01, 001, 010, ...; a(n) = length of n-th phrase.

The programs for A187200, there is no canonical definition to state claims against.
-/

/-! ## A187200.P17563120026021867979

`A336005(A330994(2*(n+1))+A038792(n+1))`
-/

namespace A187200.P17563120026021867979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336005 (A330994 (2 * (n + 1)) + A038792 (n + 1)).toNat

end

end A187200.P17563120026021867979

/-! ## A187200.P9520348487829306357

`A077982(Δ[record[A060693(n)]])`
-/

namespace A187200.P9520348487829306357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (f1 (n + 1) - f1 n).toNat

end

end A187200.P9520348487829306357

/-! ## A187200.P12339630819143828133

`A000120(∑[A002322(A036296(n))])`
-/

namespace A187200.P12339630819143828133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A036296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187200.P12339630819143828133

/-! ## A187200.P8307509185219611946

`A000120(A056469(n)+A055647(n))`
-/

namespace A187200.P8307509185219611946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A056469 n + A055647 n).toNat

end

end A187200.P8307509185219611946

/-! ## A187200.P15535114851115864270

`A000120(A057846(n)+A056469(n))`
-/

namespace A187200.P15535114851115864270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A057846 n + A056469 n).toNat

end

end A187200.P15535114851115864270

/-!
# A187201: Parse Gijswijt's sequence A090822 into distinct phrases 1, 12, 11, 2, 22, 3, 112, 1122, 23, ...; a(n) = length of n-th phrase.

The programs for A187201, there is no canonical definition to state claims against.
-/

/-! ## A187201.P15056341185634858071

`A001222(A073919(A027748(n+6))+A000120(n))`
-/

namespace A187201.P15056341185634858071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073919 (A027748 (n + 6)).toNat + A000120 n).toNat

end

end A187201.P15056341185634858071

/-! ## A187201.P6378458015095896957

`A302242(A072479(n)+A022842(2*n+1))`
-/

namespace A187201.P6378458015095896957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A072479 n + A022842 (2 * n + 1)).toNat

end

end A187201.P6378458015095896957

/-! ## A187201.P12535987000768961570

`A324190(or(A001223(n+1), A302808(2*(n+1))))`
-/

namespace A187201.P12535987000768961570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (Int.lor (A001223 (n + 1)) (A302808 (2 * (n + 1)))).toNat

end

end A187201.P12535987000768961570

/-! ## A187201.P13941276811636289533

`A028356(A226137(2*n+3)+A006530(2*n+3))`
-/

namespace A187201.P13941276811636289533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 (A226137 (2 * n + 3) + A006530 (2 * n + 3)).toNat

end

end A187201.P13941276811636289533

/-! ## A187201.P17176993337738770055

`A001222(xor(lcm(2, 2*n+1), A018010(n)))`
-/

namespace A187201.P17176993337738770055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (Nat.lcm 2 (2 * n + 1) : ℤ) (A018010 n)).toNat

end

end A187201.P17176993337738770055

/-!
# A187202: The bottom entry in the difference table of the divisors of n.

The programs for A187202, there is no canonical definition to state claims against.
-/

/-! ## A187202.P13513899370261435392

`1-A273133(n+1)+n`
-/

namespace A187202.P13513899370261435392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A273133 (n + 1) + (n : ℤ)

end

end A187202.P13513899370261435392

/-! ## A187202.P6106985812854252257

`A161856(A006218(n+1))`
-/

namespace A187202.P6106985812854252257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (A006218 (n + 1)).toNat

end

end A187202.P6106985812854252257

/-! ## A187202.P17944071937314792012

`A161856(∑[A000005(n+1)])`
-/

namespace A187202.P17944071937314792012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187202.P17944071937314792012

/-! ## A187202.P18391418293630483156

`A161856(A002541(n+1)+1+n)`
-/

namespace A187202.P18391418293630483156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (A002541 (n + 1) + 1 + (n : ℤ)).toNat

end

end A187202.P18391418293630483156

/-! ## A187202.P18395177794140054326

`A161856(A006590(n+2)-(n+2))`
-/

namespace A187202.P18395177794140054326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (A006590 (n + 2) - (n + 2 : ℤ)).toNat

end

end A187202.P18395177794140054326

/-! ## A187202.P7673319010729664146

`A161856(A325459(n+1)+2*n+1)`
-/

namespace A187202.P7673319010729664146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (A325459 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A187202.P7673319010729664146

/-! ## A187202.P5851180894976784943

`A161856(record[1-A027750(n+2)+n]+1)`
-/

namespace A187202.P5851180894976784943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A027750 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A187202.P5851180894976784943

/-! ## A187202.P11888370563188037638

`A161856(A052488(n+1)-A102722(n+1))`
-/

namespace A187202.P11888370563188037638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (A052488 (n + 1) - A102722 (n + 1)).toNat

end

end A187202.P11888370563188037638

/-! ## A187202.P12261673481001611573

`A161856(A113215((n+1)²))`
-/

namespace A187202.P12261673481001611573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (A113215 ((n + 1) ^ 2)).toNat

end

end A187202.P12261673481001611573

/-! ## A187202.P11668922665663337018

`A161856(A110661(∑[n]+1))`
-/

namespace A187202.P11668922665663337018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (A110661 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A187202.P11668922665663337018

/-!
# A187203: The bottom entry in the absolute difference triangle of the divisors of n.

The programs for A187203, there is no canonical definition to state claims against.
-/

/-! ## A187203.P9352495071239311609

`A187207(∑[A184389(n+1)])`
-/

namespace A187203.P9352495071239311609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187203.P9352495071239311609

/-! ## A187203.P17505529415663762366

`A187207(∑[A000217(∏{e}[n+1, #+1])])`
-/

namespace A187203.P17505529415663762366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187203.P17505529415663762366

/-! ## A187203.P9798427339964703490

`A187207(∑[A176659(∏{e}[n+1, #+1])])`
-/

namespace A187203.P9798427339964703490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176659 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187203.P9798427339964703490

/-! ## A187203.P10186088811435049685

`A187207(∑[A000217(∑{d}[n+1, n²%#]+1)])`
-/

namespace A187203.P10186088811435049685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187203.P10186088811435049685

/-! ## A187203.P17803067020117208549

`A274531(∑[∏{e}[n+1, #+1]])`
-/

namespace A187203.P17803067020117208549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274531 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187203.P17803067020117208549

/-!
# A187205: Numbers such that the last of the absolute differences of divisors is 0.

The programs for A187205, there is no canonical definition to state claims against.
-/

/-! ## A187205.P1419043944628969739

`eq[0, A187203(n+1)]+1`
-/

namespace A187205.P1419043944628969739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187205.P1419043944628969739

/-! ## A187205.P14232124065478865918

`eq[0, A187203(A028310(n))]`
-/

namespace A187205.P14232124065478865918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187205.P14232124065478865918

/-! ## A187205.P5542411769540497841

`A181569(eq[0, A187203(n+1)])`
-/

namespace A187205.P5542411769540497841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187205.P5542411769540497841

/-! ## A187205.P16171638453590535415

`A181569(lt[A187203(n+1), 1])`
-/

namespace A187205.P16171638453590535415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A187205.P16171638453590535415

/-! ## A187205.P16354962302932104700

`lt[A187203(A028310(n)), A162519(n+1)]`
-/

namespace A187205.P16354962302932104700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187205.P16354962302932104700

/-!
# A187206: a(n) = 6*(24*n - 1).

The programs for A187206, the canonical program `A187206.P8365591124594489565` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187206 has offset 1).

The definition of A187206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(24*(n+1)-1)` (program `A187206.P8365591124594489565`, by `A187206.P8365591124594489565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187206.P12939252656102444493

`144*(n+1)-6`
-/

namespace A187206.P12939252656102444493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (144 * (n + 1) : ℤ) - 6

end

end A187206.P12939252656102444493

namespace A187206

/-- `144*(n+1)-6` -/
def P12939252656102444493.Spec : Prop :=
  ∀ n, P12939252656102444493.a n = A187206 (n + 1)

end A187206

/-! ## A187206.P8365591124594489565

`6*(24*(n+1)-1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187206

/-- `6*(24*(n+1)-1)` -/
def P8365591124594489565.Spec : Prop :=
  ∀ n, P8365591124594489565.a n = A187206 (n + 1)

theorem P8365591124594489565.correct : P8365591124594489565.Spec := by
  intro n
  simp only [A187206, Nat.add_sub_cancel]

end A187206

/-!
# A187207: Irregular triangle read by rows in which row n lists the k=A000005(n) divisors of n in decreasing order, followed by the lists of their absolute differences up to order k-1.

The programs for A187207, there is no canonical definition to state claims against.
-/

/-! ## A187207.P6519753297180639637

`A273102(A156755(n)+A043320(n+1))`
-/

namespace A187207.P6519753297180639637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273102 (A156755 n + A043320 (n + 1)).toNat

end

end A187207.P6519753297180639637

/-! ## A187207.P18312481575478996363

`A273104(A156755(n)+A043320(n+1))`
-/

namespace A187207.P18312481575478996363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 (A156755 n + A043320 (n + 1)).toNat

end

end A187207.P18312481575478996363

/-! ## A187207.P10672565677300099876

`A273102(A187829(n+1)+A156755(n))`
-/

namespace A187207.P10672565677300099876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273102 (A187829 (n + 1) + A156755 n).toNat

end

end A187207.P10672565677300099876

/-! ## A187207.P17741796930345080113

`A273104(A187829(n+1)+A156755(n))`
-/

namespace A187207.P17741796930345080113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 (A187829 (n + 1) + A156755 n).toNat

end

end A187207.P17741796930345080113

/-!
# A187208: Numbers such that the last of the absolute differences of divisors is 1.

The programs for A187208, there is no canonical definition to state claims against.
-/

/-! ## A187208.P2533257712291271038

`eq[1, A187203(n+1)]+1`
-/

namespace A187208.P2533257712291271038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A187208.P2533257712291271038

/-! ## A187208.P13273723033937767290

`eq[A054977(n), A187203(A028310(n))]`
-/

namespace A187208.P13273723033937767290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187208.P13273723033937767290

/-! ## A187208.P12877933310512562672

`eq[A057427(n), A187203(A028310(n))]`
-/

namespace A187208.P12877933310512562672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187208.P12877933310512562672

/-! ## A187208.P12744698070002329538

`eq[A158388(n), A187203(A028310(n))]`
-/

namespace A187208.P12744698070002329538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A187208.P12744698070002329538

/-! ## A187208.P9490564671558417276

`eq[A000038(n)!, A187203(A028310(n))]`
-/

namespace A187208.P9490564671558417276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187208.P9490564671558417276

/-!
# A187209: Sum of all terms of triangle of absolute differences of the divisors of n.

The programs for A187209, there is no canonical definition to state claims against.
-/

/-! ## A187209.P17848042832117178715

`A187215(n+1)-A000203(n+1)`
-/

namespace A187209.P17848042832117178715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) - A000203 (n + 1)

end

end A187209.P17848042832117178715

/-! ## A187209.P18132172840320347759

`A187215(n+1)-Δ[A160664(n)]`
-/

namespace A187209.P18132172840320347759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) - (f1 (n + 1) - f1 n)

end

end A187209.P18132172840320347759

/-! ## A187209.P2957898900507934176

`A187215(n+1)-A097012(n+1)`
-/

namespace A187209.P2957898900507934176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) - A097012 (n + 1)

end

end A187209.P2957898900507934176

/-! ## A187209.P8521507832163724111

`A187215(n+1)-abs(Δ[A330725(n)])`
-/

namespace A187209.P8521507832163724111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) - |f1 (n + 1) - f1 n|

end

end A187209.P8521507832163724111

/-! ## A187209.P18040960841166865281

`A187215(n+1)-abs(A143348(n+1))`
-/

namespace A187209.P18040960841166865281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) - |A143348 (n + 1)|

end

end A187209.P18040960841166865281

/-! ## A187209.P1502694412999163180

`A187215(n+1)-sqrt(A072861(n+1))`
-/

namespace A187209.P1502694412999163180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187215 (n + 1) : ℝ) - Real.sqrt (A072861 (n + 1) : ℝ)

end

end A187209.P1502694412999163180

/-! ## A187209.P2410874097139608396

`A187215(n+1)-(A001065(n+1)+n+1)`
-/

namespace A187209.P2410874097139608396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) - (A001065 (n + 1) + (n + 1 : ℤ))

end

end A187209.P2410874097139608396

/-! ## A187209.P5236701209192211000

`A187215(n+1)-A127057(A000124(n))`
-/

namespace A187209.P5236701209192211000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) - A127057 (A000124 n).toNat

end

end A187209.P5236701209192211000

/-! ## A187209.P513879751327844920

`A187215(n+1)-A245092(A005408(n))`
-/

namespace A187209.P513879751327844920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) - A245092 (A005408 n).toNat

end

end A187209.P513879751327844920

/-!
# A187210: Q-toothpick sequence (see Comments for precise definition).

The programs for A187210, there is no canonical definition to state claims against.
-/

/-! ## A187210.P11811027118614267206

`∑[A187211(n)]`
-/

namespace A187210.P11811027118614267206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187210.P11811027118614267206

/-! ## A187210.P14363699172368208526

`A187211(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A187210.P14363699172368208526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187211 n + a (A023443 n).toNat

end

end A187210.P14363699172368208526

/-! ## A187210.P17899304034677170843

`a(n-1)+A187211(A000007(n)+n)` with `a(0)=0`
-/

namespace A187210.P17899304034677170843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A187211 (A000007 n + (n : ℤ)).toNat

end

end A187210.P17899304034677170843

/-! ## A187210.P4303310666375393399

`A187211(n)+a(A000038(n)-1+n)` with `a(0)=0`
-/

namespace A187210.P4303310666375393399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187211 n + a (A000038 n - 1 + (n : ℤ)).toNat

end

end A187210.P4303310666375393399

/-! ## A187210.P10015598929065592433

`a(n-1)+A187211(n)%A017042(n)` with `a(0)=0`
-/

namespace A187210.P10015598929065592433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A187211 n) (A017042 n)

end

end A187210.P10015598929065592433

/-! ## A187210.P14826617994109535145

`A187211(n)+a(n-and(1, A000040(n+1)))` with `a(0)=0`
-/

namespace A187210.P14826617994109535145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187211 n + a ((n : ℤ) - Int.land 1 (A000040 (n + 1))).toNat

end

end A187210.P14826617994109535145

/-! ## A187210.P13009940154552794382

`A187211(n)+a(A028242(A004273(n)))` with `a(0)=0`
-/

namespace A187210.P13009940154552794382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187211 n + a (A028242 (A004273 n).toNat).toNat

end

end A187210.P13009940154552794382

/-! ## A187210.P1249156502874691118

`A187211(n)+a(A259361(n²))` with `a(0)=0`
-/

namespace A187210.P1249156502874691118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187211 n + a (A259361 (n ^ 2)).toNat

end

end A187210.P1249156502874691118

/-! ## A187210.P7520390465877958555

`∑[A282471(n)/gcd(2, n)]`
-/

namespace A187210.P7520390465877958555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282471 n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187210.P7520390465877958555

/-! ## A187210.P10013338053787147345

`∑[A282471(n)/A040001(n)]`
-/

namespace A187210.P10013338053787147345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282471 n : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187210.P10013338053787147345

/-!
# A187211: First differences of A187210.

The programs for A187211, there is no canonical definition to state claims against.
-/

/-! ## A187211.P10556237209255507473

`Δ[A187210(n-floor(atan(n+1)))]`
-/

namespace A187211.P10556237209255507473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187211.P10556237209255507473

/-! ## A187211.P12449773839343371486

`Δ[A187210(round(sqrt(n²+1))-1)]`
-/

namespace A187211.P12449773839343371486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187211.P12449773839343371486

/-! ## A187211.P12205411640253818428

`A187210(n)-A187210(log2(A011782(n)))`
-/

namespace A187211.P12205411640253818428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 n - A187210 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A187211.P12205411640253818428

/-! ## A187211.P7175214965866031115

`A187210(n)-A187210(A004273(n)-n)`
-/

namespace A187211.P7175214965866031115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 n - A187210 (A004273 n - (n : ℤ)).toNat

end

end A187211.P7175214965866031115

/-! ## A187211.P12778892734987497199

`A187210(n)-A187210(n-A057427(n))`
-/

namespace A187211.P12778892734987497199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 n - A187210 ((n : ℤ) - A057427 n).toNat

end

end A187211.P12778892734987497199

/-! ## A187211.P7953632501421346598

`A187210(n)-A187210(A008574(n)-A016777(n))`
-/

namespace A187211.P7953632501421346598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 n - A187210 (A008574 n - A016777 n).toNat

end

end A187211.P7953632501421346598

/-! ## A187211.P2068272254090504621

`A282471(n)/gcd(2, n)`
-/

namespace A187211.P2068272254090504621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282471 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A187211.P2068272254090504621

/-! ## A187211.P6547762906681838031

`A282471(n)/A040001(n)`
-/

namespace A187211.P6547762906681838031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282471 n : ℚ) / (A040001 n : ℚ)

end

end A187211.P6547762906681838031

/-!
# A187212: Q-toothpick sequence in the first quadrant.

The programs for A187212, there is no canonical definition to state claims against.
-/

/-! ## A187212.P5879390765471546781

`∑[A139251(n)-2%Δ[A035327(n)]]`
-/

namespace A187212.P5879390765471546781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - Int.tmod 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187212.P5879390765471546781

/-! ## A187212.P4014523210780425088

`A139250(n)-A001414(A072376(n+1))`
-/

namespace A187212.P4014523210780425088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A001414 (A072376 (n + 1)).toNat

end

end A187212.P4014523210780425088

/-! ## A187212.P4554327666775870224

`∑[A187213(n)]`
-/

namespace A187212.P4554327666775870224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187212.P4554327666775870224

/-! ## A187212.P1083809517131977332

`a(n-1)+A187213(n)%A226922(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A187212.P1083809517131977332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Int.tmod (A187213 n) (A226922 (n + 1))

end

end A187212.P1083809517131977332

/-! ## A187212.P5973288200805761764

`a(n-1)-A008683(A002148(n))*A187213(n)` with `a(0)=0`
-/

namespace A187212.P5973288200805761764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A008683 (A002148 n).toNat * A187213 n

end

end A187212.P5973288200805761764

/-! ## A187212.P14537814251965723061

`A139250(n)-∑[and(2, A160124(n))]`
-/

namespace A187212.P14537814251965723061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A160124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187212.P14537814251965723061

/-!
# A187213: Number of Q-toothpicks added at n-th stage to the structure of A187212.

The programs for A187213, there is no canonical definition to state claims against.
-/

/-! ## A187213.P9842883776690299146

`Δ[A187212(n-floor(atan(n+1)))]`
-/

namespace A187213.P9842883776690299146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P9842883776690299146

/-! ## A187213.P17128891435344110771

`Δ[A187212(n-(1-floor(acot(n))))]`
-/

namespace A187213.P17128891435344110771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 ((n : ℤ) - (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P17128891435344110771

/-! ## A187213.P7147211594273972245

`Δ[A187212(A259361(n²))]`
-/

namespace A187213.P7147211594273972245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P7147211594273972245

/-! ## A187213.P10014840624088914156

`Δ[A187212(log2(A011782(n)))]`
-/

namespace A187213.P10014840624088914156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P10014840624088914156

/-! ## A187213.P18283931584128454661

`Δ[A187212(A289207(n+1))]`
-/

namespace A187213.P18283931584128454661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P18283931584128454661

/-! ## A187213.P18194470395123716335

`Δ[A187212(A028310(n)-1)]`
-/

namespace A187213.P18194470395123716335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P18194470395123716335

/-! ## A187213.P1129606402917472192

`Δ[A187212(A004273(n)-n)]`
-/

namespace A187213.P1129606402917472192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P1129606402917472192

/-! ## A187213.P3722973283339503760

`Δ[A187212(n-A178334(n))]`
-/

namespace A187213.P3722973283339503760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 ((n : ℤ) - A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P3722973283339503760

/-! ## A187213.P13702638268534092164

`Δ[A187212(A123108(2*n)-1)]`
-/

namespace A187213.P13702638268534092164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 (A123108 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P13702638268534092164

/-! ## A187213.P6707925646995855910

`Δ[A187212(A289207(2*n)/2)]`
-/

namespace A187213.P6707925646995855910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187213.P6707925646995855910

/-!
# A187214: Number of gulls (or G-toothpicks) added at n-th stage in the first quadrant of the gullwing structure of A187212.

The programs for A187214, there is no canonical definition to state claims against.
-/

/-! ## A187214.P16585610413523796757

`Δ[floor(A187212(n)/2)]`
-/

namespace A187214.P16585610413523796757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187212 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187214.P16585610413523796757

/-! ## A187214.P13825054381533877407

`A004526(Δ[A187212(n)])`
-/

namespace A187214.P13825054381533877407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A187214.P13825054381533877407

/-! ## A187214.P13592757099653863956

`A025480(Δ[A187212(n)])`
-/

namespace A187214.P13592757099653863956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A187214.P13592757099653863956

/-! ## A187214.P10984049572789031024

`A029578(Δ[A187212(n)])`
-/

namespace A187214.P10984049572789031024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (n + 1) - f1 n).toNat

end

end A187214.P10984049572789031024

/-! ## A187214.P9069340741590715194

`A060681(Δ[A187212(n)])`
-/

namespace A187214.P9069340741590715194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (f1 (n + 1) - f1 n).toNat

end

end A187214.P9069340741590715194

/-! ## A187214.P3195667391568755651

`A123108(Δ[A187212(n)])`
-/

namespace A187214.P3195667391568755651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (n + 1) - f1 n).toNat

end

end A187214.P3195667391568755651

/-! ## A187214.P14971434462869153728

`A001057(Δ[A187212(n)]-1)`
-/

namespace A187214.P14971434462869153728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n - 1).toNat

end

end A187214.P14971434462869153728

/-! ## A187214.P4072141887310682986

`Δ[A008619(A187212(n)+2)]`
-/

namespace A187214.P4072141887310682986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A187212 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187214.P4072141887310682986

/-! ## A187214.P3426771880476855189

`A008619(Δ[A187212(n)])-1`
-/

namespace A187214.P3426771880476855189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat - 1

end

end A187214.P3426771880476855189

/-! ## A187214.P2941079763241971700

`Δ[A187212(A028310(n))/2]`
-/

namespace A187214.P2941079763241971700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187212 (A028310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187214.P2941079763241971700

/-!
# A187215: Sum of the elements of the absolute difference table of the divisors of n.

The programs for A187215, there is no canonical definition to state claims against.
-/

/-! ## A187215.P15831178973198410920

`A187209(n+1)+∑{d}[n+1, #]`
-/

namespace A187215.P15831178973198410920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187209 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A187215.P15831178973198410920

/-! ## A187215.P16047444172470094948

`A187209(n+1)+Δ[A160664(n)]`
-/

namespace A187215.P16047444172470094948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187209 (n + 1) + (f1 (n + 1) - f1 n)

end

end A187215.P16047444172470094948

/-! ## A187215.P1249686904813484536

`A187209(n+1)+A000203(n+1)`
-/

namespace A187215.P1249686904813484536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187209 (n + 1) + A000203 (n + 1)

end

end A187215.P1249686904813484536

/-! ## A187215.P4384015341741347932

`A187209(n+1)+A097012(n+1)`
-/

namespace A187215.P4384015341741347932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187209 (n + 1) + A097012 (n + 1)

end

end A187215.P4384015341741347932

/-! ## A187215.P7562116329678966007

`A245092(Δ[n²])+A187209(n+1)`
-/

namespace A187215.P7562116329678966007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A187209 (n + 1)

end

end A187215.P7562116329678966007

/-! ## A187215.P11111091111893173047

`A187209(n+1)+abs(A143348(n+1))`
-/

namespace A187215.P11111091111893173047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187209 (n + 1) + |A143348 (n + 1)|

end

end A187215.P11111091111893173047

/-! ## A187215.P7632497980220668486

`A187209(n+1)+sqrt(A072861(n+1))`
-/

namespace A187215.P7632497980220668486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187209 (n + 1) : ℝ) + Real.sqrt (A072861 (n + 1) : ℝ)

end

end A187215.P7632497980220668486

/-! ## A187215.P8854787194973469557

`A187209(n+1)+A127057(A000124(n))`
-/

namespace A187215.P8854787194973469557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187209 (n + 1) + A127057 (A000124 n).toNat

end

end A187215.P8854787194973469557

/-!
# A187216: Q-toothpick sequence starting with two opposite Q-toothpicks centered at the same grid point.

The programs for A187216, there is no canonical definition to state claims against.
-/

/-! ## A187216.P14451980244570164038

`∑[A187217(n)]`
-/

namespace A187216.P14451980244570164038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187216.P14451980244570164038

/-! ## A187216.P13029048436325535557

`∑{d}[A131577(n), A187217(A265332(#))]`
-/

namespace A187216.P13029048436325535557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A187217 (A265332 d).toNat

end

end A187216.P13029048436325535557

/-! ## A187216.P11860379633717563690

`∑[2*A066272(A210111(2*n))]`
-/

namespace A187216.P11860379633717563690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066272 (A210111 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187216.P11860379633717563690

/-!
# A187217: Number of Q-toothpicks added at n-th stage to the structure of A187216.

The programs for A187217, there is no canonical definition to state claims against.
-/

/-! ## A187217.P8607402169298299367

`Δ[A187216(log2(A011782(n)))]`
-/

namespace A187217.P8607402169298299367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P8607402169298299367

/-! ## A187217.P13413053439532021966

`Δ[A187216(A004273(n)-n)]`
-/

namespace A187217.P13413053439532021966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P13413053439532021966

/-! ## A187217.P18363664818694339818

`Δ[A187216(n-A057427(n))]`
-/

namespace A187217.P18363664818694339818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P18363664818694339818

/-! ## A187217.P16313239710880744346

`Δ[A187216(A140106(Δ[n²]))]`
-/

namespace A187217.P16313239710880744346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 (A140106 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P16313239710880744346

/-! ## A187217.P17809926436860453558

`A187216(n)-A187216((n-1)%(n+1))`
-/

namespace A187217.P17809926436860453558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 n - A187216 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A187217.P17809926436860453558

/-! ## A187217.P11951037702257573638

`Δ[A187216(A004526(A004273(n)))]`
-/

namespace A187217.P11951037702257573638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P11951037702257573638

/-! ## A187217.P15618853683585448538

`A187216(n)-A187216(log2(A011782(n)))`
-/

namespace A187217.P15618853683585448538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 n - A187216 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A187217.P15618853683585448538

/-! ## A187217.P12051212490446038653

`A187216(n)-A187216(A004273(n)-n)`
-/

namespace A187217.P12051212490446038653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 n - A187216 (A004273 n - (n : ℤ)).toNat

end

end A187217.P12051212490446038653

/-! ## A187217.P3300681689699428888

`A187216(n)-A187216(A140106(2*n+1))`
-/

namespace A187217.P3300681689699428888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 n - A187216 (A140106 (2 * n + 1)).toNat

end

end A187217.P3300681689699428888

/-! ## A187217.P15691083757596923144

`Δ[A187216(A003056(A161680(n)))]`
-/

namespace A187217.P15691083757596923144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 (A003056 (A161680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P15691083757596923144

/-! ## A187217.P14459023643720072247

`Δ[A187216(A002262(A027379(n)))]`
-/

namespace A187217.P14459023643720072247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 (A002262 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P14459023643720072247

/-! ## A187217.P2483246784367777345

`Δ[A187216(A002262(A055998(n)))]`
-/

namespace A187217.P2483246784367777345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P2483246784367777345

/-! ## A187217.P3395673420668938238

`A187216(n)-A187216(A259361(n²))`
-/

namespace A187217.P3395673420668938238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 n - A187216 (A259361 (n ^ 2)).toNat

end

end A187217.P3395673420668938238

/-! ## A187217.P7844545104475353553

`Δ[A187216(A259361(n²))]`
-/

namespace A187217.P7844545104475353553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187216 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187217.P7844545104475353553

/-!
# A187219: Number of partitions of n that do not contain parts less than the smallest part of the partitions of n-1.

The programs for A187219, there is no canonical definition to state claims against.
-/

/-! ## A187219.P10378492039344757890

`A083751(n+1)+1`
-/

namespace A187219.P10378492039344757890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 1) + 1

end

end A187219.P10378492039344757890

/-! ## A187219.P16508323852380018978

`A002865((n+1)%(2*n+1))`
-/

namespace A187219.P16508323852380018978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ((n + 1) % (2 * n + 1))

end

end A187219.P16508323852380018978

/-! ## A187219.P15145210058531088655

`A002865(A028310(n)+1)`
-/

namespace A187219.P15145210058531088655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A028310 n + 1).toNat

end

end A187219.P15145210058531088655

/-! ## A187219.P15468319674032368158

`A002865(A087156(n+1))`
-/

namespace A187219.P15468319674032368158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A087156 (n + 1)).toNat

end

end A187219.P15468319674032368158

/-! ## A187219.P5573840448484117789

`A085811(A009005(n+1))`
-/

namespace A187219.P5573840448484117789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (A009005 (n + 1)).toNat

end

end A187219.P5573840448484117789

/-! ## A187219.P18058976172686930777

`A002865(A254667(n+1))`
-/

namespace A187219.P18058976172686930777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A254667 (n + 1)).toNat

end

end A187219.P18058976172686930777

/-! ## A187219.P15062821044511199653

`A002865(A057427(n)+n)`
-/

namespace A187219.P15062821044511199653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A057427 n + (n : ℤ)).toNat

end

end A187219.P15062821044511199653

/-! ## A187219.P6210767536398532621

`A002865(n-A057428(n))`
-/

namespace A187219.P6210767536398532621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ((n : ℤ) - A057428 n).toNat

end

end A187219.P6210767536398532621

/-! ## A187219.P1432586941966855677

`A002865(A057428(n)²+n)`
-/

namespace A187219.P1432586941966855677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A057428 n ^ 2 + (n : ℤ)).toNat

end

end A187219.P1432586941966855677

/-! ## A187219.P1601007447293066743

`A002865(comp[A004277(n)]-n)`
-/

namespace A187219.P1601007447293066743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A187219.P1601007447293066743

/-! ## A187219.P4422169417985535363

`A002865(n+1)+A000007(n)`
-/

namespace A187219.P4422169417985535363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + A000007 n

end

end A187219.P4422169417985535363

/-! ## A187219.P1385272788117814277

`A002865(A157928(n+1)+n)`
-/

namespace A187219.P1385272788117814277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A157928 (n + 1) + (n : ℤ)).toNat

end

end A187219.P1385272788117814277

/-! ## A187219.P17637973716431919816

`A232697(n+1)+A057428(n)`
-/

namespace A187219.P17637973716431919816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 1) + A057428 n

end

end A187219.P17637973716431919816

/-! ## A187219.P12860026161607383879

`A002865(A179184(n+2)+n)`
-/

namespace A187219.P12860026161607383879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A179184 (n + 2) + (n : ℤ)).toNat

end

end A187219.P12860026161607383879

/-! ## A187219.P681921564515369286

`A232697(n+1)-A057427(n)`
-/

namespace A187219.P681921564515369286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 1) - A057427 n

end

end A187219.P681921564515369286

/-! ## A187219.P9718991446981910677

`A002865(A033322(n+1)+n+1)`
-/

namespace A187219.P9718991446981910677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A033322 (n + 1) + (n + 1 : ℤ)).toNat

end

end A187219.P9718991446981910677

/-! ## A187219.P7432642616549173378

`A135528(n+1)+A117995(n+1)`
-/

namespace A187219.P7432642616549173378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1) + A117995 (n + 1)

end

end A187219.P7432642616549173378

/-! ## A187219.P8808710050571061318

`A338470(n+1)+A083711(n+1)`
-/

namespace A187219.P8808710050571061318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338470 (n + 1) + A083711 (n + 1)

end

end A187219.P8808710050571061318

/-! ## A187219.P3743640597070254140

`A117298(n+1)+1-A040001(n)`
-/

namespace A187219.P3743640597070254140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (n + 1) + (1 - A040001 n)

end

end A187219.P3743640597070254140

/-! ## A187219.P510007201231591611

`A002865(A278105(n+2)+n+1)`
-/

namespace A187219.P510007201231591611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A278105 (n + 2) + (n + 1 : ℤ)).toNat

end

end A187219.P510007201231591611

/-!
# A187220: Gullwing sequence (see Comments lines for precise definition).

The programs for A187220, there is no canonical definition to state claims against.
-/

/-! ## A187220.P6574038901963060923

`A160164(n-A057427(n))+A057427(n)`
-/

namespace A187220.P6574038901963060923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A187220.P6574038901963060923

/-! ## A187220.P2158978630189947163

`A057427(n)+2*A139250(A004273(n)-n)`
-/

namespace A187220.P2158978630189947163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 2 * A139250 (A004273 n - (n : ℤ)).toNat

end

end A187220.P2158978630189947163

/-! ## A187220.P11414389053705254158

`gcd(n, A014681(n))+2*A139250(A004273(n)-n)`
-/

namespace A187220.P11414389053705254158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A014681 n) : ℤ) + 2 * A139250 (A004273 n - (n : ℤ)).toNat

end

end A187220.P11414389053705254158

/-! ## A187220.P6516336023291631630

`and(1, A301916(n+1))+2*A139250(A004273(n)-n)`
-/

namespace A187220.P6516336023291631630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A301916 (n + 1)) + 2 * A139250 (A004273 n - (n : ℤ)).toNat

end

end A187220.P6516336023291631630

/-! ## A187220.P186600680613367745

`record[A160164(A025480(n))+A057427(n)]`
-/

namespace A187220.P186600680613367745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (A025480 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187220.P186600680613367745

/-! ## A187220.P9924798279604398606

`record[A160164(A175126(n))+A057427(n)]`
-/

namespace A187220.P9924798279604398606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (A175126 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187220.P9924798279604398606

/-! ## A187220.P244141197683804178

`A147562(n)-A187223(n)`
-/

namespace A187220.P244141197683804178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n - A187223 n

end

end A187220.P244141197683804178

/-! ## A187220.P5071610583819673819

`∑[A187221(n)]`
-/

namespace A187220.P5071610583819673819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187220.P5071610583819673819

/-! ## A187220.P14073070855417639411

`record[A160164(A070804(n+1))+A001221(n+1)]`
-/

namespace A187220.P14073070855417639411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (A070804 (n + 1)).toNat + A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187220.P14073070855417639411

/-! ## A187220.P2814202808767451114

`record[A306446(n+1)+A160164(A070804(n+1))]`
-/

namespace A187220.P2814202808767451114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (n + 1) + A160164 (A070804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187220.P2814202808767451114

/-! ## A187220.P17485755255192135014

`record[A318464(n+1)+A160164(A070804(n+1))]`
-/

namespace A187220.P17485755255192135014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318464 (n + 1) + A160164 (A070804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187220.P17485755255192135014

/-! ## A187220.P14612102110786124593

`A160164(n)-A004273(A139251(n))`
-/

namespace A187220.P14612102110786124593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n - A004273 (A139251 n).toNat

end

end A187220.P14612102110786124593

/-! ## A187220.P737557618668773044

`2*A139250(n)-A004273(A139251(n))`
-/

namespace A187220.P737557618668773044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139250 n - A004273 (A139251 n).toNat

end

end A187220.P737557618668773044

/-! ## A187220.P2843676796475921311

`A005843(A139250(n))-A004273(A139251(n))`
-/

namespace A187220.P2843676796475921311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A139250 n).toNat - A004273 (A139251 n).toNat

end

end A187220.P2843676796475921311

/-!
# A187221: First differences of A187220.

The programs for A187221, there is no canonical definition to state claims against.
-/

/-! ## A187221.P16811839067377459930

`Δ[A187220((n-1)%(n+1))]`
-/

namespace A187221.P16811839067377459930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187221.P16811839067377459930

/-! ## A187221.P12125323792143923078

`Δ[A187220(floor(n²/(n+1)))]`
-/

namespace A187221.P12125323792143923078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187221.P12125323792143923078

/-! ## A187221.P13308707130651237105

`abs(Δ[A187220(A289207(n+1))])`
-/

namespace A187221.P13308707130651237105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187221.P13308707130651237105

/-! ## A187221.P7706374928949118143

`abs(Δ[A187220(A140106(2*n+1))])`
-/

namespace A187221.P7706374928949118143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (A140106 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187221.P7706374928949118143

/-! ## A187221.P8053402107419084962

`Δ[A187220(A004273(n)-n)+gcd(2, 2*n)]`
-/

namespace A187221.P8053402107419084962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (A004273 n - (n : ℤ)).toNat + (Nat.gcd 2 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187221.P8053402107419084962

/-! ## A187221.P341184715299883983

`Δ[ceil(2/(n+1))*A187220(A000007(n)-1+n)]`
-/

namespace A187221.P341184715299883983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ)⌉ * A187220 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187221.P341184715299883983

/-! ## A187221.P5688436799872109780

`A187220(n)-A187220(A289207(n+1))`
-/

namespace A187221.P5688436799872109780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n - A187220 (A289207 (n + 1)).toNat

end

end A187221.P5688436799872109780

/-! ## A187221.P15946027627223640253

`Δ[A187220(A289207(n+1))+A008683(4*(n+1))]`
-/

namespace A187221.P15946027627223640253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (A289207 (n + 1)).toNat + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A187221.P15946027627223640253

/-! ## A187221.P6859137766827394420

`Δ[A187220(A289207(n+1))]%A000032(n+1)`
-/

namespace A187221.P6859137766827394420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 (n + 1))

end

end A187221.P6859137766827394420

/-! ## A187221.P651440072819887920

`A187220(n)-A187220(log2(A011782(n)))`
-/

namespace A187221.P651440072819887920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n - A187220 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A187221.P651440072819887920

/-!
# A187222: Gullwing primes: primes in the gullwing sequence A187220.

The programs for A187222, there is no canonical definition to state claims against.
-/

/-! ## A187222.P13723324642986607446

`p?[A187220(n)]`
-/

namespace A187222.P13723324642986607446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P13723324642986607446

/-! ## A187222.P2748349916657842294

`p?[∑[A187221(n)]]`
-/

namespace A187222.P2748349916657842294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P2748349916657842294

/-! ## A187222.P13937578236624249036

`p?[A160164(n)+1]`
-/

namespace A187222.P13937578236624249036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P13937578236624249036

/-! ## A187222.P18074079929000614191

`p?[2*A139250(n)+1]`
-/

namespace A187222.P18074079929000614191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139250 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P18074079929000614191

/-! ## A187222.P6415851647027311468

`p?[4*A152998(n)+3]`
-/

namespace A187222.P6415851647027311468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A152998 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P6415851647027311468

/-! ## A187222.P11813070690383059469

`p?[∑[2*A139251(n)]+1]`
-/

namespace A187222.P11813070690383059469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P11813070690383059469

/-! ## A187222.P13151573349289947300

`p?[lcm(2, A139250(n+1))+1]`
-/

namespace A187222.P13151573349289947300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A139250 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A187222.P13151573349289947300

/-! ## A187222.P16829774546971635593

`p?[∑[A004277(A139251(n))]]`
-/

namespace A187222.P16829774546971635593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A139251 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P16829774546971635593

/-! ## A187222.P8511498563653526248

`p?[or(A084101(n), A160164(n))]`
-/

namespace A187222.P8511498563653526248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084101 n) (A160164 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P8511498563653526248

/-! ## A187222.P9250665618689991303

`p?[or(A160164(n), A262681(n))]`
-/

namespace A187222.P9250665618689991303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160164 n) (A262681 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P9250665618689991303

/-! ## A187222.P8514901218222776345

`p?[or(A160164(n), A267871(n))]`
-/

namespace A187222.P8514901218222776345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160164 n) (A267871 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P8514901218222776345

/-! ## A187222.P41070831696486185

`p?[or(A160164(n), A268676(n))]`
-/

namespace A187222.P41070831696486185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160164 n) (A268676 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A187222.P41070831696486185

/-! ## A187222.P5379338037907779560

`∩[A040141(n+1), A187220(n)]`
-/

namespace A187222.P5379338037907779560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187222.P5379338037907779560

/-! ## A187222.P14233895864794831862

`∩[A002145(n+1), A187220(n)]`
-/

namespace A187222.P14233895864794831862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187222.P14233895864794831862

/-! ## A187222.P3549660382289223953

`∩[A045326(n+1), A187220(n)]`
-/

namespace A187222.P3549660382289223953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187222.P3549660382289223953

/-! ## A187222.P9333077671492672919

`∩[A097958(n+1), A187220(n)]`
-/

namespace A187222.P9333077671492672919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187222.P9333077671492672919

/-! ## A187222.P4422133530239336940

`∩[A285015(n+1), A187220(n)]`
-/

namespace A187222.P4422133530239336940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187222.P4422133530239336940

/-!
# A187223: Differences between A147562 (Ulam-Warburton cellular automaton) and A187220 (Gullwing sequence).

The programs for A187223, there is no canonical definition to state claims against.
-/

/-! ## A187223.P5763838460124976001

`A147562(n)-A187220(n)`
-/

namespace A187223.P5763838460124976001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n - A187220 n

end

end A187223.P5763838460124976001

/-! ## A187223.P8845265236259962877

`floor(A160410(n)/3)-A187220(n)`
-/

namespace A187223.P8845265236259962877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160410 n : ℚ) / 3⌋ - A187220 n

end

end A187223.P8845265236259962877

/-! ## A187223.P4722192334099651536

`A323650(2*n)/3-A187220(n)`
-/

namespace A187223.P4722192334099651536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323650 (2 * n) : ℚ) / 3 - (A187220 n : ℚ)

end

end A187223.P4722192334099651536

/-! ## A187223.P16351906625721481365

`floor(A151917(2*n)/2)-A187220(n)`
-/

namespace A187223.P16351906625721481365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151917 (2 * n) : ℚ) / 2⌋ - A187220 n

end

end A187223.P16351906625721481365

/-! ## A187223.P2092249938283528366

`A187220(n+1)-(A187564(n+1)+A187220(n))`
-/

namespace A187223.P2092249938283528366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (n + 1) - (A187564 (n + 1) + A187220 n)

end

end A187223.P2092249938283528366

/-! ## A187223.P1103106832760938666

`record[floor(A079317(n)/3)]-A187220(n)`
-/

namespace A187223.P1103106832760938666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079317 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A187220 n

end

end A187223.P1103106832760938666

/-! ## A187223.P3780286267609164287

`A147562(n)-∑[A187221(n)]`
-/

namespace A187223.P3780286267609164287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187223.P3780286267609164287

/-! ## A187223.P17897995984819847708

`floor(A151917(2*n)/2)-∑[A187221(n)]`
-/

namespace A187223.P17897995984819847708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151917 (2 * n) : ℚ) / 2⌋ - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187223.P17897995984819847708

/-! ## A187223.P1803622762811003841

`floor(A173456(3*n)/17)-A187220(n)`
-/

namespace A187223.P1803622762811003841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173456 (3 * n) : ℚ) / 17⌋ - A187220 n

end

end A187223.P1803622762811003841

/-! ## A187223.P12565375437666175764

`A183060(2*n)/2-n-A187220(n)`
-/

namespace A187223.P12565375437666175764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183060 (2 * n) : ℚ) / 2 - (n : ℚ) - (A187220 n : ℚ)

end

end A187223.P12565375437666175764

/-!
# A187224: Rank transform of the sequence floor(3*n/2).

The programs for A187224, there is no canonical definition to state claims against.
-/

/-! ## A187224.P6848961022771109231

`comp[A187225(n+1)-1]+1`
-/

namespace A187224.P6848961022771109231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187224.P6848961022771109231

/-! ## A187224.P4889530565748891920

`comp[∪[A187225(n+1), A187852(n+1)]]`
-/

namespace A187224.P4889530565748891920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A187224.P4889530565748891920

/-! ## A187224.P11624387038204427726

`eq[char[A187225(n+1)], A000007(n)]`
-/

namespace A187224.P11624387038204427726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187224.P11624387038204427726

/-! ## A187224.P3739374601668166178

`eq[char[A187225(n+1)], A000038(n)]`
-/

namespace A187224.P3739374601668166178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187224.P3739374601668166178

/-! ## A187224.P4403008930706805703

`floor(A187582(3*(n+1))/3)`
-/

namespace A187224.P4403008930706805703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187582 (3 * (n + 1)) : ℚ) / 3⌋

end

end A187224.P4403008930706805703

/-!
# A187225: Complement of A187224.

The programs for A187225, there is no canonical definition to state claims against.
-/

/-! ## A187225.P1421200520180306109

`A004396(A187224(n+1))+n+1`
-/

namespace A187225.P1421200520180306109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A187224 (n + 1)).toNat + (n + 1 : ℤ)

end

end A187225.P1421200520180306109

/-! ## A187225.P17338114948873693626

`A004523(A187224(n+1)+2)+n`
-/

namespace A187225.P17338114948873693626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A187224 (n + 1) + 2).toNat + (n : ℤ)

end

end A187225.P17338114948873693626

/-! ## A187225.P1713591714267054163

`A020725(comp[A187224(n+1)-1])`
-/

namespace A187225.P1713591714267054163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A187225.P1713591714267054163

/-! ## A187225.P10232170361275650837

`eq[char[A187224(n+1)], A000007(n)]`
-/

namespace A187225.P10232170361275650837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187225.P10232170361275650837

/-! ## A187225.P220186936204941148

`eq[char[A187224(n+1)], A000038(n)]`
-/

namespace A187225.P220186936204941148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187225.P220186936204941148

/-!
# A187226: Rank transform of the sequence floor(n/4); complement of A187227.

The programs for A187226, there is no canonical definition to state claims against.
-/

/-! ## A187226.P17685914994564573938

`A002265(A187227(n+1)-(n+1))`
-/

namespace A187226.P17685914994564573938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A187227 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187226.P17685914994564573938

/-! ## A187226.P10024457476111863270

`A057353(A002264(A187227(n+1)-(n+1)))`
-/

namespace A187226.P10024457476111863270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A002264 (A187227 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A187226.P10024457476111863270

/-! ## A187226.P8969361635772789086

`A002265(A187227(n+1))-A008621(n)`
-/

namespace A187226.P8969361635772789086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A187227 (n + 1)).toNat - A008621 n

end

end A187226.P8969361635772789086

/-! ## A187226.P2134134040153499187

`∑[gcd(and(2, n^3)!, A320922(n+2))]`
-/

namespace A187226.P2134134040153499187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (Nat.land 2 (n ^ 3)) : ℤ) (A320922 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187226.P2134134040153499187

/-! ## A187226.P16871709153094534335

`∑[A321649(A331188(n+1))]`
-/

namespace A187226.P16871709153094534335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321649 (A331188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187226.P16871709153094534335

/-!
# A187227: Complement of A187226.

The programs for A187227, there is no canonical definition to state claims against.
-/

/-! ## A187227.P12548653941753832357

`4*(A187226(n+1)+1)+n`
-/

namespace A187227.P12548653941753832357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A187226 (n + 1) + 1) + (n : ℤ)

end

end A187227.P12548653941753832357

/-! ## A187227.P5678134422599410462

`n+2+A016825(A187226(n+1))`
-/

namespace A187227.P5678134422599410462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A016825 (A187226 (n + 1)).toNat

end

end A187227.P5678134422599410462

/-! ## A187227.P5647133556919332449

`A020705(n)+4*A187226(n+1)`
-/

namespace A187227.P5647133556919332449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n + 4 * A187226 (n + 1)

end

end A187227.P5647133556919332449

/-! ## A187227.P10694749959371441415

`A020705(n)+A008574(A187226(n+1))`
-/

namespace A187227.P10694749959371441415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n + A008574 (A187226 (n + 1)).toNat

end

end A187227.P10694749959371441415

/-! ## A187227.P1151104908161724614

`A008574(A187226(n+1)+1)+n`
-/

namespace A187227.P1151104908161724614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A187226 (n + 1) + 1).toNat + (n : ℤ)

end

end A187227.P1151104908161724614

/-! ## A187227.P13892609963019663850

`A008586(A187226(n+1)+1)+n`
-/

namespace A187227.P13892609963019663850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A187226 (n + 1) + 1).toNat + (n : ℤ)

end

end A187227.P13892609963019663850

/-!
# A187228: Rank transform of the sequence floor(3n/4); complement of A187229.

The programs for A187228, there is no canonical definition to state claims against.
-/

/-! ## A187228.P13661326226571562473

`floor(sinh(log(A187229(n+1))))`
-/

namespace A187228.P13661326226571562473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A187229 (n + 1) : ℝ))⌋

end

end A187228.P13661326226571562473

/-! ## A187228.P4716216830553586124

`A057353(A187229(n+1)-(n+1))`
-/

namespace A187228.P4716216830553586124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A187229 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187228.P4716216830553586124

/-! ## A187228.P2985857739041410215

`A004524(A187229(n+1))`
-/

namespace A187228.P2985857739041410215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A187229 (n + 1)).toNat

end

end A187228.P2985857739041410215

/-! ## A187228.P7904508273682349594

`A140106(A187229(n+1)+1)`
-/

namespace A187228.P7904508273682349594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A187229 (n + 1) + 1).toNat

end

end A187228.P7904508273682349594

/-! ## A187228.P5592105290585796322

`A004526(A187229(n+1)-A014577(n))`
-/

namespace A187228.P5592105290585796322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187229 (n + 1) - A014577 n).toNat

end

end A187228.P5592105290585796322

/-!
# A187229: Complement of A187228.

The programs for A187229, there is no canonical definition to state claims against.
-/

/-! ## A187229.P7384073127638347802

`A004773(A187228(n+1))+2+n`
-/

namespace A187229.P7384073127638347802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A187228 (n + 1)).toNat + 2 + (n : ℤ)

end

end A187229.P7384073127638347802

/-! ## A187229.P1610985766945867826

`A187228(4*n+5)-A187228(2*n+3)`
-/

namespace A187229.P1610985766945867826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187228 (4 * n + 5) - A187228 (2 * n + 3)

end

end A187229.P1610985766945867826

/-! ## A187229.P2693429273892178314

`or(A187906(n+1), A292438(A075427(n)))`
-/

namespace A187229.P2693429273892178314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187906 (n + 1)) (A292438 (A075427 n).toNat)

end

end A187229.P2693429273892178314

/-! ## A187229.P333836011402171317

`or(A144611(A016116(n)), A187906(n+1))`
-/

namespace A187229.P333836011402171317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144611 (A016116 n).toNat) (A187906 (n + 1))

end

end A187229.P333836011402171317

/-! ## A187229.P5140231498342802551

`or(A187906(n+1), A292438(A236559(n)))`
-/

namespace A187229.P5140231498342802551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187906 (n + 1)) (A292438 (A236559 n).toNat)

end

end A187229.P5140231498342802551

/-!
# A187230: Rank transform of the sequence floor(5n/4); complement of A187231.

The programs for A187230, there is no canonical definition to state claims against.
-/

/-! ## A187230.P11152138088686423154

`comp[A187231(n+1)-1]+1`
-/

namespace A187230.P11152138088686423154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187231 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187230.P11152138088686423154

/-! ## A187230.P6041188983740477225

`eq[char[A187231(n+1)], A151933(n)]`
-/

namespace A187230.P6041188983740477225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187230.P6041188983740477225

/-! ## A187230.P10264999547418653041

`eq[char[A187231(n+1)], A151622(n)]`
-/

namespace A187230.P10264999547418653041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187230.P10264999547418653041

/-! ## A187230.P17580286498071517520

`A187901(n+1)-A316869(A017993(n))`
-/

namespace A187230.P17580286498071517520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187901 (n + 1) - A316869 (A017993 n).toNat

end

end A187230.P17580286498071517520

/-! ## A187230.P18341131226489702599

`A187901(A077168(n))`
-/

namespace A187230.P18341131226489702599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187901 (A077168 n).toNat

end

end A187230.P18341131226489702599

/-!
# A187231: Complement of A187230.

The programs for A187231, there is no canonical definition to state claims against.
-/

/-! ## A187231.P4214830080578990634

`eq[char[A187230(n+1)], A151933(n)]`
-/

namespace A187231.P4214830080578990634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187230 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187231.P4214830080578990634

/-! ## A187231.P13483658406914648377

`eq[char[A187230(n+1)], A151622(n)]`
-/

namespace A187231.P13483658406914648377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187230 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187231.P13483658406914648377

/-! ## A187231.P5651615163065518553

`record[A077773(A230424(A239931(n+1)))]`
-/

namespace A187231.P5651615163065518553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A230424 (A239931 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187231.P5651615163065518553

/-! ## A187231.P7140943332085592604

`A190081(n+1)+A010054(A053576(n))`
-/

namespace A187231.P7140943332085592604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190081 (n + 1) + A010054 (A053576 n).toNat

end

end A187231.P7140943332085592604

/-!
# A187232: Rank transform of the sequence floor(7n/4); complement of A187233.

The programs for A187232, there is no canonical definition to state claims against.
-/

/-! ## A187232.P15731258233126421154

`comp[A187233(n+1)-1]+1`
-/

namespace A187232.P15731258233126421154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187233 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187232.P15731258233126421154

/-! ## A187232.P10108831560834438419

`eq[char[A187233(n+1)], A151933(n)]`
-/

namespace A187232.P10108831560834438419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187233 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187232.P10108831560834438419

/-! ## A187232.P11996228455177520383

`eq[char[A187233(n+1)], A151622(n)]`
-/

namespace A187232.P11996228455177520383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187233 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187232.P11996228455177520383

/-! ## A187232.P17871314015462957852

`A005408(n)-A297042(A001578(n+1))`
-/

namespace A187232.P17871314015462957852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A297042 (A001578 (n + 1)).toNat

end

end A187232.P17871314015462957852

/-! ## A187232.P5429088772413847747

`A187907(n+1)%A053678(n+1)`
-/

namespace A187232.P5429088772413847747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187907 (n + 1)) (A053678 (n + 1))

end

end A187232.P5429088772413847747

/-!
# A187233: Complement of A187232.

The programs for A187233, there is no canonical definition to state claims against.
-/

/-! ## A187233.P2534179647777643589

`A269166(A273012(n+3))+A302041(A146892(n+2))+2*n`
-/

namespace A187233.P2534179647777643589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A273012 (n + 3)).toNat + (A302041 (A146892 (n + 2)).toNat + (2 * n : ℤ))

end

end A187233.P2534179647777643589

/-! ## A187233.P15940444846725499813

`A187908(n+1)%A173927(n+4)`
-/

namespace A187233.P15940444846725499813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187908 (n + 1)) (A173927 (n + 4))

end

end A187233.P15940444846725499813

/-! ## A187233.P3157478198153441525

`A020914(n)+∑[(A065241(n)+n)%2]`
-/

namespace A187233.P3157478198153441525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065241 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187233.P3157478198153441525

/-! ## A187233.P6336653939157595648

`A187908(n+1)+A083914(A054555(n))`
-/

namespace A187233.P6336653939157595648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187908 (n + 1) + A083914 (A054555 n).toNat

end

end A187233.P6336653939157595648

/-! ## A187233.P8061374705124767901

`A187908(n+1)+A083914(A108411(n))`
-/

namespace A187233.P8061374705124767901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187908 (n + 1) + A083914 (A108411 n).toNat

end

end A187233.P8061374705124767901

/-!
# A187234: Numbers such that Sum_{i<j, i,j =1..r} d(i)*d(j) is a prime number, where the d(i) are digits of n (n = concatenation of d(1), ..., d(r)).

The programs for A187234, there is no canonical definition to state claims against.
-/

/-! ## A187234.P13550699681964687257

`eq[2, A000001(A069816(n))]`
-/

namespace A187234.P13550699681964687257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A069816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187234.P13550699681964687257

/-! ## A187234.P4256400939471141923

`eq[1, A105700(A069816(n)/2)]`
-/

namespace A187234.P4256400939471141923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (SequenceMachineLib.roundAway ((A069816 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187234.P4256400939471141923

/-! ## A187234.P17799589693193726862

`lt[1, A105700(A069816(10*n))]`
-/

namespace A187234.P17799589693193726862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A069816 (10 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A187234.P17799589693193726862

/-! ## A187234.P3677323818337272082

`lt[1, A105700(A069816(n+1))]+1`
-/

namespace A187234.P3677323818337272082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A069816 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A187234.P3677323818337272082

/-! ## A187234.P16999460652330297331

`eq[2, A105700(A069816(n+4))]+4`
-/

namespace A187234.P16999460652330297331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A069816 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A187234.P16999460652330297331

/-! ## A187234.P1585927391035608000

`eq[2, A226378(A118881(n)-A003132(n))]`
-/

namespace A187234.P1585927391035608000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A118881 n - A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187234.P1585927391035608000

/-! ## A187234.P4773321727041560956

`eq[2, A226378(A007953(n)²-A003132(n))]`
-/

namespace A187234.P4773321727041560956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007953 n ^ 2 - A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187234.P4773321727041560956

/-!
# A187235: Number of ways to place n nonattacking semi-bishops on an n X n board.

The programs for A187235, there is no canonical definition to state claims against.
-/

/-! ## A187235.P10725787277232828574

`A346595(∑[2*n]+1)`
-/

namespace A187235.P10725787277232828574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346595 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187235.P10725787277232828574

/-! ## A187235.P8308793231163526349

`record[A346595(∑[A028242(n)])]`
-/

namespace A187235.P8308793231163526349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346595 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187235.P8308793231163526349

/-! ## A187235.P9755190140599769249

`record[A346595(record[A215630(n+1)])]`
-/

namespace A187235.P9755190140599769249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346595 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187235.P9755190140599769249

/-!
# A187236: Number of simple imperfect graphs on n vertices.

The programs for A187236, there is no canonical definition to state claims against.
-/

/-! ## A187236.P17128950752920061851

`A000088(n+1)-A052431(n+1)`
-/

namespace A187236.P17128950752920061851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A052431 (n + 1)

end

end A187236.P17128950752920061851

/-! ## A187236.P13513033009322093536

`Δ[A006897(n)]-A052431(n+1)`
-/

namespace A187236.P13513033009322093536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052431 (n + 1)

end

end A187236.P13513033009322093536

/-! ## A187236.P3496456189382393903

`A236525(n+1)-A287512(n+1)`
-/

namespace A187236.P3496456189382393903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236525 (n + 1) - A287512 (n + 1)

end

end A187236.P3496456189382393903

/-! ## A187236.P3247855267491344312

`Δ[A006897(n)]-(A287512(n+1)+A033995(n+1))`
-/

namespace A187236.P3247855267491344312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A287512 (n + 1) + A033995 (n + 1))

end

end A187236.P3247855267491344312

/-! ## A187236.P13503671000666663344

`A000088(n+1)-A033995(n+1)-A287512(n+1)`
-/

namespace A187236.P13503671000666663344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A033995 (n + 1) - A287512 (n + 1)

end

end A187236.P13503671000666663344

/-!
# A187237: Number of simple connected imperfect graphs on n vertices.

The programs for A187237, there is no canonical definition to state claims against.
-/

/-! ## A187237.P18215992418561889484

`A001349(n+1)-A052433(n+1)`
-/

namespace A187237.P18215992418561889484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A052433 (n + 1)

end

end A187237.P18215992418561889484

/-! ## A187237.P16950916681145023426

`A157051(n+1)-A287511(n+1)`
-/

namespace A187237.P16950916681145023426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157051 (n + 1) - A287511 (n + 1)

end

end A187237.P16950916681145023426

/-! ## A187237.P14474762702326897462

`A201922(A000124(n))-A052433(n+1)`
-/

namespace A187237.P14474762702326897462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A052433 (n + 1)

end

end A187237.P14474762702326897462

/-! ## A187237.P2124040367258522046

`A001349(A096076(n))-(A287511(n+1)+A005142(n+1))`
-/

namespace A187237.P2124040367258522046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A096076 n).toNat - (A287511 (n + 1) + A005142 (n + 1))

end

end A187237.P2124040367258522046

/-! ## A187237.P2405624535680297635

`A201922(A000124(n))-(A287511(n+1)+A005142(n+1))`
-/

namespace A187237.P2405624535680297635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - (A287511 (n + 1) + A005142 (n + 1))

end

end A187237.P2405624535680297635

/-!
# A187238: Numbers divisible by at least four of their digits, different and >1.

The programs for A187238, there is no canonical definition to state claims against.
-/

/-! ## A187238.P2324105950718367637

`A116960(n+27)`
-/

namespace A187238.P2324105950718367637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (n + 27)

end

end A187238.P2324105950718367637

/-!
# A187240: Number of ways to place 8 nonattacking bishops on an n X n board.

The programs for A187240, there is no canonical definition to state claims against.
-/

/-! ## A187240.P17220842606367250072

`A300725(A145271(n!))`
-/

namespace A187240.P17220842606367250072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300725 (A145271 (Nat.factorial n)).toNat

end

end A187240.P17220842606367250072

/-!
# A187242: Number of ways to place 10 nonattacking bishops on an n X n board.

The programs for A187242, there is no canonical definition to state claims against.
-/

/-! ## A187242.P12715348953646917952

`A011782(n)*A324971(A003242(n))`
-/

namespace A187242.P12715348953646917952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A324971 (A003242 n).toNat

end

end A187242.P12715348953646917952

/-!
# A187243: Number of ways of making change for n cents using coins of 1, 5, and 10 cents.

The programs for A187243, the canonical program `A187243.P7543391389539788555` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187243 has offset 0).

The definition of A187243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187243.P7543391389539788555

`floor((floor(n/5)+2)²/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187243

/-- `floor((floor(n/5)+2)²/4)` -/
def P7543391389539788555.Spec : Prop :=
  ∀ n, P7543391389539788555.a n = A187243 n

theorem P7543391389539788555.correct : P7543391389539788555.Spec := by
  intro n
  simp only [A187243]

end A187243

/-! ## A187243.P104684621763597740

`ogf(1/(1-x-x^5+x^6-x^10+x^11+x^15-x^16))`
-/

namespace A187243.P104684621763597740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, 0, -1, 1, 0, 0, 0, -1, 1, 0, 0, 0, 1, -1] n

end

end A187243.P104684621763597740

namespace A187243

/-- `ogf(1/(1-x-x^5+x^6-x^10+x^11+x^15-x^16))` -/
def P104684621763597740.Spec : Prop :=
  ∀ n, P104684621763597740.a n = A187243 n

end A187243

/-! ## A187243.P7841829231187292490

`A002620(A002266(n)+2)`
-/

namespace A187243.P7841829231187292490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002266 n + 2).toNat

end

end A187243.P7841829231187292490

namespace A187243

/-- `A002620(A002266(n)+2)` -/
def P7841829231187292490.Spec : Prop :=
  ∀ n, P7841829231187292490.a n = A187243 n

end A187243

/-! ## A187243.P17803151737621164158

`A008642(2*floor(n/5)+1)`
-/

namespace A187243.P17803151737621164158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (2 * ⌊(n : ℚ) / 5⌋ + 1).toNat

end

end A187243.P17803151737621164158

namespace A187243

/-- `A008642(2*floor(n/5)+1)` -/
def P17803151737621164158.Spec : Prop :=
  ∀ n, P17803151737621164158.a n = A187243 n

end A187243

/-! ## A187243.P11754059439767316278

`A078126(∑[char[5*n]]+1)+1`
-/

namespace A187243.P11754059439767316278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A187243.P11754059439767316278

namespace A187243

/-- `A078126(∑[char[5*n]]+1)+1` -/
def P11754059439767316278.Spec : Prop :=
  ∀ n, P11754059439767316278.a n = A187243 n

end A187243

/-! ## A187243.P6691100839341416387

`A086159(A057355(n))`
-/

namespace A187243.P6691100839341416387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 (A057355 n).toNat

end

end A187243.P6691100839341416387

namespace A187243

/-- `A086159(A057355(n))` -/
def P6691100839341416387.Spec : Prop :=
  ∀ n, P6691100839341416387.a n = A187243 n

end A187243

/-! ## A187243.P8928814594309661404

`A092532(A090223(n))`
-/

namespace A187243.P8928814594309661404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092532 (A090223 n).toNat

end

end A187243.P8928814594309661404

namespace A187243

/-- `A092532(A090223(n))` -/
def P8928814594309661404.Spec : Prop :=
  ∀ n, P8928814594309661404.a n = A187243 n

end A187243

/-! ## A187243.P16211941333756446072

`A092532(A289195(n))`
-/

namespace A187243.P16211941333756446072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092532 (A289195 n).toNat

end

end A187243.P16211941333756446072

namespace A187243

/-- `A092532(A289195(n))` -/
def P16211941333756446072.Spec : Prop :=
  ∀ n, P16211941333756446072.a n = A187243 n

end A187243

/-! ## A187243.P487062560005386424

`A092532(A173633(n)+1)`
-/

namespace A187243.P487062560005386424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092532 (A173633 n + 1).toNat

end

end A187243.P487062560005386424

namespace A187243

/-- `A092532(A173633(n)+1)` -/
def P487062560005386424.Spec : Prop :=
  ∀ n, P487062560005386424.a n = A187243 n

end A187243

/-! ## A187243.P8440046967339416811

`A260220(2*A002266(n)+1)`
-/

namespace A187243.P8440046967339416811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (2 * A002266 n + 1).toNat

end

end A187243.P8440046967339416811

namespace A187243

/-- `A260220(2*A002266(n)+1)` -/
def P8440046967339416811.Spec : Prop :=
  ∀ n, P8440046967339416811.a n = A187243 n

end A187243

/-! ## A187243.P2076216717332665471

`A007590(A002266(n)+2)/2`
-/

namespace A187243.P2076216717332665471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (A002266 n + 2).toNat : ℚ) / 2

end

end A187243.P2076216717332665471

namespace A187243

/-- `A007590(A002266(n)+2)/2` -/
def P2076216717332665471.Spec : Prop :=
  ∀ n, P2076216717332665471.a n = (A187243 n : ℚ)

end A187243

/-! ## A187243.P15031753650847682165

`∑[(A059995(n)+1)*A079998(n)]`
-/

namespace A187243.P15031753650847682165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059995 n + 1) * A079998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187243.P15031753650847682165

namespace A187243

/-- `∑[(A059995(n)+1)*A079998(n)]` -/
def P15031753650847682165.Spec : Prop :=
  ∀ n, P15031753650847682165.a n = A187243 n

end A187243

/-! ## A187243.P11729721326915157798

`A002620(n+2-A090223(n+1))`
-/

namespace A187243.P11729721326915157798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((n + 2 : ℤ) - A090223 (n + 1)).toNat

end

end A187243.P11729721326915157798

namespace A187243

/-- `A002620(n+2-A090223(n+1))` -/
def P11729721326915157798.Spec : Prop :=
  ∀ n, P11729721326915157798.a n = A187243 n

end A187243

/-! ## A187243.P14994248705767108158

`A260220(A002266(n)+A002266(n)+1)`
-/

namespace A187243.P14994248705767108158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (A002266 n + (A002266 n + 1)).toNat

end

end A187243.P14994248705767108158

namespace A187243

/-- `A260220(A002266(n)+A002266(n)+1)` -/
def P14994248705767108158.Spec : Prop :=
  ∀ n, P14994248705767108158.a n = A187243 n

end A187243

/-! ## A187243.P10580404298243504579

`A092532(A173633(n+1))`
-/

namespace A187243.P10580404298243504579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092532 (A173633 (n + 1)).toNat

end

end A187243.P10580404298243504579

namespace A187243

/-- `A092532(A173633(n+1))` -/
def P10580404298243504579.Spec : Prop :=
  ∀ n, P10580404298243504579.a n = A187243 n

end A187243

/-! ## A187243.P2768746568272019158

`A025801(A239492(n))`
-/

namespace A187243.P2768746568272019158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025801 (A239492 n).toNat

end

end A187243.P2768746568272019158

namespace A187243

/-- `A025801(A239492(n))` -/
def P2768746568272019158.Spec : Prop :=
  ∀ n, P2768746568272019158.a n = A187243 n

end A187243

/-! ## A187243.P7247616310383711897

`A025801(A047248(n+1))`
-/

namespace A187243.P7247616310383711897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025801 (A047248 (n + 1)).toNat

end

end A187243.P7247616310383711897

namespace A187243

/-- `A025801(A047248(n+1))` -/
def P7247616310383711897.Spec : Prop :=
  ∀ n, P7247616310383711897.a n = A187243 n

end A187243

/-! ## A187243.P2357986860880082195

`A025801(A047253(n+2))`
-/

namespace A187243.P2357986860880082195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025801 (A047253 (n + 2)).toNat

end

end A187243.P2357986860880082195

namespace A187243

/-- `A025801(A047253(n+2))` -/
def P2357986860880082195.Spec : Prop :=
  ∀ n, P2357986860880082195.a n = A187243 n

end A187243

/-! ## A187243.P8003969101607384101

`A076921(A059995(2*n)+2)`
-/

namespace A187243.P8003969101607384101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A059995 (2 * n) + 2).toNat

end

end A187243.P8003969101607384101

namespace A187243

/-- `A076921(A059995(2*n)+2)` -/
def P8003969101607384101.Spec : Prop :=
  ∀ n, P8003969101607384101.a n = A187243 n

end A187243

/-! ## A187243.P15534351542458297027

`A008621(A002266(n)²)+A002266(n)`
-/

namespace A187243.P15534351542458297027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A002266 n ^ 2).toNat + A002266 n

end

end A187243.P15534351542458297027

namespace A187243

/-- `A008621(A002266(n)²)+A002266(n)` -/
def P15534351542458297027.Spec : Prop :=
  ∀ n, P15534351542458297027.a n = A187243 n

end A187243

/-!
# A187245: Number of permutations of [n] having no cycle with 2 alternating runs (it is assumed that the smallest element of the cycle is in the first position).

The programs for A187245, there is no canonical definition to state claims against.
-/

/-! ## A187245.P16924940896196373401

`A187244(A001840(n))`
-/

namespace A187245.P16924940896196373401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187244 (A001840 n).toNat

end

end A187245.P16924940896196373401

/-! ## A187245.P4727891264872387055

`A187244(A002264(∑[n+1]))`
-/

namespace A187245.P4727891264872387055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187244 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A187245.P4727891264872387055

/-! ## A187245.P12656995137021408339

`A187244(∑[A008615(2*n)])`
-/

namespace A187245.P12656995137021408339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187244 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187245.P12656995137021408339

/-! ## A187245.P8116992270591416350

`A187244(∑[n-A002264(2*n)])`
-/

namespace A187245.P8116992270591416350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187244 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187245.P8116992270591416350

/-! ## A187245.P4021728999062116028

`A187244(A000217(n)-A000212(n))`
-/

namespace A187245.P4021728999062116028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187244 (A000217 n - A000212 n).toNat

end

end A187245.P4021728999062116028

/-! ## A187245.P8989393602979156291

`A187244(∑[A008620(n)]-A008620(n))`
-/

namespace A187245.P8989393602979156291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187244 (∑ j ∈ Finset.range (n + 1), f1 j - A008620 n).toNat

end

end A187245.P8989393602979156291

/-!
# A187246: Number of cycles with 2 alternating runs in all permutations of [n] (it is assumed that the smallest element of the cycle is in the first position).

The programs for A187246, there is no canonical definition to state claims against.
-/

/-! ## A187246.P2620168879458070353

`abs(1-(2^(n-2)+n*a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A187246.P2620168879458070353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  |1 - ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ) * a (n - 1))|

end

end A187246.P2620168879458070353

/-! ## A187246.P15553521933211705489

`A187249(n)-A002627(n)`
-/

namespace A187246.P15553521933211705489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187249 n - A002627 n

end

end A187246.P15553521933211705489

/-! ## A187246.P4502383859582190510

`A121633(A028310(n))-A187252(n)`
-/

namespace A187246.P4502383859582190510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121633 (A028310 n).toNat - A187252 n

end

end A187246.P4502383859582190510

/-! ## A187246.P7746094760458243748

`A187249(n)%A002627(A028310(n))`
-/

namespace A187246.P7746094760458243748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187249 n) (A002627 (A028310 n).toNat)

end

end A187246.P7746094760458243748

/-! ## A187246.P6683530217218132729

`A000142(n)+A187249(n)-A000522(n)`
-/

namespace A187246.P6683530217218132729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A187249 n - A000522 n)

end

end A187246.P6683530217218132729

/-! ## A187246.P5773934994301160764

`A000774(n)-(A187252(n)+A000522(n))`
-/

namespace A187246.P5773934994301160764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (A187252 n + A000522 n)

end

end A187246.P5773934994301160764

/-!
# A187247: Triangle read by rows: T(n,k) is the number of permutations of [n] having k cycles with at most 2 alternating runs (it is assumed that the smallest element of the cycle is in the first position), 0<=k<=n.

The programs for A187247, there is no canonical definition to state claims against.
-/

/-! ## A187247.P14428197076098848231

`A344855(n)+A010893(A119502(n))`
-/

namespace A187247.P14428197076098848231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 n + A010893 ((A119502 n).toNat + 13)

end

end A187247.P14428197076098848231

/-! ## A187247.P6022418704292793528

`A344855(n)+A010893(A130534(n))`
-/

namespace A187247.P6022418704292793528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 n + A010893 ((A130534 n).toNat + 13)

end

end A187247.P6022418704292793528

/-! ## A187247.P650944097289697368

`A344855(n)+A010893(A152656(n))`
-/

namespace A187247.P650944097289697368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 n + A010893 ((A152656 n).toNat + 13)

end

end A187247.P650944097289697368

/-! ## A187247.P13281370394979919702

`A346415(n)+A325195(A152656(n))`
-/

namespace A187247.P13281370394979919702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 n + A325195 (A152656 n).toNat

end

end A187247.P13281370394979919702

/-! ## A187247.P13393304587063780923

`A353506(A193603(n+1))`
-/

namespace A187247.P13393304587063780923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353506 (A193603 (n + 1)).toNat

end

end A187247.P13393304587063780923

/-!
# A187248: Number of permutations of [n] having only cycles with at least 3 alternating runs (it is assumed that the smallest element of the cycle is in the first position).

The programs for A187248, there is no canonical definition to state claims against.
-/

/-! ## A187248.P10193516470224084024

`A187247(∑[n])`
-/

namespace A187248.P10193516470224084024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187247 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187248.P10193516470224084024

/-! ## A187248.P14615685831212905296

`gcd(n, n+1)*A187247(A000217(n))`
-/

namespace A187248.P14615685831212905296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A187247 (A000217 n).toNat

end

end A187248.P14615685831212905296

/-! ## A187248.P4229606620767985795

`lcm(A033999(n), A187247(A000217(n)))`
-/

namespace A187248.P4229606620767985795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A187247 (A000217 n).toNat)

end

end A187248.P4229606620767985795

/-! ## A187248.P17825139816103132711

`A187247(A000217(n))+A011737(A003056(n))`
-/

namespace A187248.P17825139816103132711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187247 (A000217 n).toNat + A011737 (A003056 n).toNat

end

end A187248.P17825139816103132711

/-! ## A187248.P14482909385065531487

`A187247(A000217(n))+A011737(A325195(n+1))`
-/

namespace A187248.P14482909385065531487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187247 (A000217 n).toNat + A011737 (A325195 (n + 1)).toNat

end

end A187248.P14482909385065531487

/-! ## A187248.P428215476778661920

`A152656(A034856(n+1))*A187247(A000217(n))`
-/

namespace A187248.P428215476778661920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 (A034856 (n + 1)).toNat * A187247 (A000217 n).toNat

end

end A187248.P428215476778661920

/-!
# A187249: Number of cycles with at most 2 alternating runs in all permutations of [n] (it is assumed that the smallest element of the cycle is in the first position).

The programs for A187249, there is no canonical definition to state claims against.
-/

/-! ## A187249.P16508502431685701133

`2^(n-2)+n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A187249.P16508502431685701133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ) * a (n - 1)

end

end A187249.P16508502431685701133

/-! ## A187249.P15977892978189449383

`(n+2)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A187249.P15977892978189449383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (n + 2 : ℤ) * a (n - 1) - 2 * (((n : ℤ) - 1) * a (n - 2))

end

end A187249.P15977892978189449383

/-! ## A187249.P18346500218123526972

`A187246(n)+A002627(n)`
-/

namespace A187249.P18346500218123526972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187246 n + A002627 n

end

end A187249.P18346500218123526972

/-! ## A187249.P8746496061569876392

`A000254(n)-A187252(n)`
-/

namespace A187249.P8746496061569876392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A187252 n

end

end A187249.P8746496061569876392

/-! ## A187249.P2008275535831910486

`abs(A081048(n))-A187252(n)`
-/

namespace A187249.P2008275535831910486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - A187252 n

end

end A187249.P2008275535831910486

/-! ## A187249.P660656429961191805

`record[A067176(n)]-A187252(n)`
-/

namespace A187249.P660656429961191805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A187252 n

end

end A187249.P660656429961191805

/-! ## A187249.P528758318673771621

`A000522(n)+A187246(n)-A000142(n)`
-/

namespace A187249.P528758318673771621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + (A187246 n - A000142 n)

end

end A187249.P528758318673771621

/-!
# A187250: Triangle read by rows: T(n,k) is the number of permutations of [n] having k cycles with at least 3 alternating runs (it is assumed that the smallest element of a cycle is in the first position), 0<=k<=floor(n/4).

The programs for A187250, there is no canonical definition to state claims against.
-/

/-! ## A187250.P17155072744306666347

`A216964(A250264(n+1))`
-/

namespace A187250.P17155072744306666347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216964 (A250264 (n + 1)).toNat

end

end A187250.P17155072744306666347

/-! ## A187250.P9794706650466777434

`A216964(n^A110656(n))`
-/

namespace A187250.P9794706650466777434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216964 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A187250.P9794706650466777434

/-! ## A187250.P9100349010061971174

`A216964(n^A287170(n+1))`
-/

namespace A187250.P9100349010061971174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216964 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287170 (n + 1) : ℤ))).toNat

end

end A187250.P9100349010061971174

/-! ## A187250.P1214788935773854116

`A216964(A024652(floor(acot(n)+n)))`
-/

namespace A187250.P1214788935773854116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216964 (A024652 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A187250.P1214788935773854116

/-! ## A187250.P12306666417658152104

`A216964(A024652(A151933(n)+n))`
-/

namespace A187250.P12306666417658152104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216964 (A024652 (A151933 n + (n : ℤ)).toNat).toNat

end

end A187250.P12306666417658152104

/-!
# A187251: Number of permutations of [n] having no cycle with 3 or more alternating runs (it is assumed that the smallest element of a cycle is in the first position).

The programs for A187251, there is no canonical definition to state claims against.
-/

/-! ## A187251.P2307230185600883826

`A003576(n)/2^n`
-/

namespace A187251.P2307230185600883826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003576 n : ℚ) / (2 ^ n : ℚ)

end

end A187251.P2307230185600883826

/-! ## A187251.P17222419092110905439

`floor(A003576(n)/A000079(n))`
-/

namespace A187251.P17222419092110905439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003576 n : ℚ) / (A000079 n : ℚ)⌋

end

end A187251.P17222419092110905439

/-! ## A187251.P3545379399805701253

`abs(A003576(n)/Δ[A000225(n)])`
-/

namespace A187251.P3545379399805701253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A003576 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)|

end

end A187251.P3545379399805701253

/-! ## A187251.P18145732485017081705

`floor(A003576(n)/Δ[A000051(n)])`
-/

namespace A187251.P18145732485017081705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003576 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A187251.P18145732485017081705

/-! ## A187251.P1673709693578843846

`ceil(A003576(n)/A011782(n+1))`
-/

namespace A187251.P1673709693578843846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003576 n : ℚ) / (A011782 (n + 1) : ℚ)⌉

end

end A187251.P1673709693578843846

/-! ## A187251.P13685531355067052055

`ceil(A003576(n)/(2*A011782(n)))`
-/

namespace A187251.P13685531355067052055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003576 n : ℚ) / (2 * A011782 n : ℚ)⌉

end

end A187251.P13685531355067052055

/-!
# A187252: Number of cycles with at least 3 alternating runs in all permutations of [n] (it is assumed that the smallest element of a cycle is in the first position).

The programs for A187252, there is no canonical definition to state claims against.
-/

/-! ## A187252.P16425396953714544821

`(n-1)!+n*a(n-1)-2^(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A187252.P16425396953714544821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℚ) + (n : ℚ) * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A187252.P16425396953714544821

/-! ## A187252.P7879089885681995186

`A000254(n)-A187249(n)`
-/

namespace A187252.P7879089885681995186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A187249 n

end

end A187252.P7879089885681995186

/-! ## A187252.P6017172480901760591

`abs(A081048(n))-A187249(n)`
-/

namespace A187252.P6017172480901760591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - A187249 n

end

end A187252.P6017172480901760591

/-! ## A187252.P3017170445030507961

`A067176(∑[n])-A187249(n)`
-/

namespace A187252.P3017170445030507961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (∑ j ∈ Finset.range (n + 1), f1 j) - A187249 n

end

end A187252.P3017170445030507961

/-! ## A187252.P1005920724254562689

`record[A067176(n)]-A187249(n)`
-/

namespace A187252.P1005920724254562689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A187249 n

end

end A187252.P1005920724254562689

/-! ## A187252.P2937796610854060502

`A121633(A028310(n))-A187246(n)`
-/

namespace A187252.P2937796610854060502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121633 (A028310 n).toNat - A187246 n

end

end A187252.P2937796610854060502

/-! ## A187252.P4727858222374689966

`abs(A081048(n))-(A187246(n)+A002627(n))`
-/

namespace A187252.P4727858222374689966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - (A187246 n + A002627 n)

end

end A187252.P4727858222374689966

/-!
# A187253: Triangle read by rows: T(n,k) is the number of 3-noncrossing RNA structures on n vertices having k isolated vertices.

The programs for A187253, there is no canonical definition to state claims against.
-/

/-! ## A187253.P9359830487244239677

`C(A191530(n), A134451(A110321(n)))`
-/

namespace A187253.P9359830487244239677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A191530 n).toNat (A134451 (A110321 n).toNat).toNat

end

end A187253.P9359830487244239677

/-! ## A187253.P10459099982565129699

`A008647(A025581(n)^A185249(n))`
-/

namespace A187253.P10459099982565129699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A185249 n : ℤ))).toNat

end

end A187253.P10459099982565129699

/-! ## A187253.P7762118360675469539

`A279065(n)%A279065(A053121(n))`
-/

namespace A187253.P7762118360675469539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279065 n) (A279065 (A053121 n).toNat)

end

end A187253.P7762118360675469539

/-! ## A187253.P10487972552054754509

`A236580(n)%A335458(A104035(n))`
-/

namespace A187253.P10487972552054754509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236580 n) (A335458 (A104035 n).toNat)

end

end A187253.P10487972552054754509

/-! ## A187253.P6352482113198514009

`A217580(n)%A038605(A130288(n+1))`
-/

namespace A187253.P6352482113198514009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217580 n) (A038605 (A130288 (n + 1)).toNat)

end

end A187253.P6352482113198514009

/-!
# A187254: Number of 3-noncrossing RNA structures over 2n vertices with no isolated vertices.

The programs for A187254, there is no canonical definition to state claims against.
-/

/-! ## A187254.P7547269213303308104

`A358119(n)-A358118(n)`
-/

namespace A187254.P7547269213303308104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358119 n - A358118 n

end

end A187254.P7547269213303308104

/-! ## A187254.P15744117417893882776

`A187253(C(Δ[n²], 2))`
-/

namespace A187254.P15744117417893882776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187253 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A187254.P15744117417893882776

/-! ## A187254.P11813307979715634436

`A187253(n*Δ[n²])`
-/

namespace A187254.P11813307979715634436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187253 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A187254.P11813307979715634436

/-!
# A187255: Number of isolated vertices in all 3-noncrossing RNA structures on n vertices.

The programs for A187255, there is no canonical definition to state claims against.
-/

/-! ## A187255.P13198333150750187568

`A002264(A047042(n)+A000079(n))`
-/

namespace A187255.P13198333150750187568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047042 n + A000079 n).toNat

end

end A187255.P13198333150750187568

/-! ## A187255.P5425120071747576438

`A054404(A047653(n)+A004396(n))`
-/

namespace A187255.P5425120071747576438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A047653 n + A004396 n).toNat

end

end A187255.P5425120071747576438

/-! ## A187255.P4305598125279352954

`A054404(A051162(n)+A047653(n))`
-/

namespace A187255.P4305598125279352954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A051162 n + A047653 n).toNat

end

end A187255.P4305598125279352954

/-!
# A187256: Number of peakless Motzkin paths of length n, assuming that the (1,0)-steps come in 2 colors.

The programs for A187256, there is no canonical definition to state claims against.
-/

/-! ## A187256.P14040697516243797668

`∑[A114464(n+1)]`
-/

namespace A187256.P14040697516243797668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187256.P14040697516243797668

/-! ## A187256.P5204728805282737416

`∑[ratio[A114464(n)]*A114464(n)]`
-/

namespace A187256.P5204728805282737416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114464 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A114464 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187256.P5204728805282737416

/-! ## A187256.P1219769072234920888

`A036453(n+1)*A159771(n+1)`
-/

namespace A187256.P1219769072234920888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A159771 (n + 1)

end

end A187256.P1219769072234920888

/-! ## A187256.P5721944721299403320

`(A057427(n)+1)*A159771(n+1)`
-/

namespace A187256.P5721944721299403320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A159771 (n + 1)

end

end A187256.P5721944721299403320

/-! ## A187256.P6429436075616270408

`A101499(n+1)+A101499(n+1)-A102880(n+1)`
-/

namespace A187256.P6429436075616270408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101499 (n + 1) + (A101499 (n + 1) - A102880 (n + 1))

end

end A187256.P6429436075616270408

/-! ## A187256.P13643875343308271921

`A114848(∑[∑[and(1, n)]]+1)`
-/

namespace A187256.P13643875343308271921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114848 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187256.P13643875343308271921

/-! ## A187256.P16760490337760170849

`A114848(A033638(n+1))`
-/

namespace A187256.P16760490337760170849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114848 (A033638 (n + 1)).toNat

end

end A187256.P16760490337760170849

/-! ## A187256.P18319661504395209645

`∑[A114462(A076921(n+2))]`
-/

namespace A187256.P18319661504395209645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114462 (A076921 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187256.P18319661504395209645

/-! ## A187256.P11266815142176013737

`∑[A114462(∑[A110654(n+1)])]`
-/

namespace A187256.P11266815142176013737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114462 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187256.P11266815142176013737

/-! ## A187256.P15973804902133562464

`record[A114848(n+1)/A091156(n)]`
-/

namespace A187256.P15973804902133562464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114848 (n + 1) : ℚ) / (A091156 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187256.P15973804902133562464

/-!
# A187257: Number of UH^jU's for some j>0, where U=(1,1) and H=(1,1), in all peakless Motzkin paths of length n (can be easily expressed using RNA secondary structure terminology).

The programs for A187257, there is no canonical definition to state claims against.
-/

/-! ## A187257.P284804105823111066

`A190161(n)/2`
-/

namespace A187257.P284804105823111066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190161 n : ℚ) / 2

end

end A187257.P284804105823111066

/-! ## A187257.P11030236379879672291

`(A187259(n)-A190163(n))/2`
-/

namespace A187257.P11030236379879672291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187259 n - A190163 n : ℚ) / 2

end

end A187257.P11030236379879672291

/-! ## A187257.P2368847166437509351

`A014682(A190161(n))`
-/

namespace A187257.P2368847166437509351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A190161 n).toNat

end

end A187257.P2368847166437509351

/-! ## A187257.P16465106829724682787

`A001281(A190161(n))`
-/

namespace A187257.P16465106829724682787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A190161 n).toNat

end

end A187257.P16465106829724682787

/-! ## A187257.P11285889164822270799

`A004526(A190161(n)+1)`
-/

namespace A187257.P11285889164822270799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190161 n + 1).toNat

end

end A187257.P11285889164822270799

/-!
# A187258: Number of UH^jD's for some j>0, in all peakless Motzkin paths of length n (here U=(1,1), D=(1,-1) and H=(1,0); can be easily expressed using RNA secondary structure terminology).

The programs for A187258, the canonical program `A187258.P16451121824970850001` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187258 has offset 0).

The definition of A187258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187258.P7232910941717050739

`A171853(n)-A171853(abs(2-n))`
-/

namespace A187258.P7232910941717050739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171853 n - A171853 |2 - (n : ℤ)|.toNat

end

end A187258.P7232910941717050739

namespace A187258

/-- `A171853(n)-A171853(abs(2-n))` -/
def P7232910941717050739.Spec : Prop :=
  ∀ n, P7232910941717050739.a n = A187258 n

end A187258

/-! ## A187258.P16451121824970850001

`A203611(n)-(A166287(n)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A187258

/-- `A203611(n)-(A166287(n)+1)` -/
def P16451121824970850001.Spec : Prop :=
  ∀ n, P16451121824970850001.a n = A187258 n

theorem P16451121824970850001.correct : P16451121824970850001.Spec := by
  intro n
  simp only [A187258]

end A187258

/-! ## A187258.P7389710444739721257

`A203611(n)+∑[A203611(n)-A051292(n)]`
-/

namespace A187258.P7389710444739721257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203611 n - A051292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203611 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187258.P7389710444739721257

namespace A187258

/-- `A203611(n)+∑[A203611(n)-A051292(n)]` -/
def P7389710444739721257.Spec : Prop :=
  ∀ n, P7389710444739721257.a n = A187258 n

end A187258

/-! ## A187258.P13795321648809411727

`A088518(2*n)-(A166287(n+1)+1)`
-/

namespace A187258.P13795321648809411727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n) - (A166287 (n + 1) + 1)

end

end A187258.P13795321648809411727

namespace A187258

/-- `A088518(2*n)-(A166287(n+1)+1)` -/
def P13795321648809411727.Spec : Prop :=
  ∀ n, P13795321648809411727.a n = A187258 n

end A187258

/-! ## A187258.P6293869788023873059

`A203611(n)%((A166287(n)+1)%A237011(n+1))`
-/

namespace A187258.P6293869788023873059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203611 n) (Int.tmod (A166287 n + 1) (A237011 (n + 1)))

end

end A187258.P6293869788023873059

namespace A187258

/-- `A203611(n)%((A166287(n)+1)%A237011(n+1))` -/
def P6293869788023873059.Spec : Prop :=
  ∀ n, P6293869788023873059.a n = A187258 n

end A187258

/-!
# A187259: Number of UH^jU's, DH^jD's, and DH^jU's for some j>0, in all peakless Motzkin paths of length n (here U=(1,1), D=(1,-1) and H=(1,0); can be easily expressed using RNA secondary structure terminology).

The programs for A187259, there is no canonical definition to state claims against.
-/

/-! ## A187259.P12154018434718508443

`A190163(n)+A190161(n)`
-/

namespace A187259.P12154018434718508443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190163 n + A190161 n

end

end A187259.P12154018434718508443

/-! ## A187259.P6566205051910107564

`A190163(n)+2*A187257(n)`
-/

namespace A187259.P6566205051910107564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190163 n + 2 * A187257 n

end

end A187259.P6566205051910107564

/-! ## A187259.P607146237384263324

`A190163(n)+A187257(char[1]+n)+A187257(n)`
-/

namespace A187259.P607146237384263324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190163 n + (A187257 ((if ∃ j, f1 j = n then 1 else 0) + n) + A187257 n)

end

end A187259.P607146237384263324

/-! ## A187259.P10355421827653910866

`A190163(n)+A187257(n)/2^A008683(A020483(n))`
-/

namespace A187259.P10355421827653910866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190163 n : ℚ) + (A187257 n : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A187259.P10355421827653910866

/-! ## A187259.P9700848484669339672

`A190163(n)+A187257(n)+A187257(n)%A167539(n+1)`
-/

namespace A187259.P9700848484669339672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190163 n + (A187257 n + Int.tmod (A187257 n) (A167539 (n + 1)))

end

end A187259.P9700848484669339672

/-!
# A187260: Number of uh^jd's for some j>0, starting at level 0, where u=(1,1), h=(1,0), and d=(1,-1), in all peakless Motzkin paths of length n (can be easily expressed using RNA secondary structure terminology).

The programs for A187260, the canonical program `A187260.P12630214820941397104` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187260 has offset 0).

The definition of A187260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187260.P12630214820941397104

`∑[A203019(A326178(n))]-A203019(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A187260

/-- `∑[A203019(A326178(n))]-A203019(n)` -/
def P12630214820941397104.Spec : Prop :=
  ∀ n, P12630214820941397104.a n = A187260 n

theorem P12630214820941397104.correct : P12630214820941397104.Spec := by
  intro n
  simp only [A187260]

end A187260

/-! ## A187260.P9505157070207730572

`∑[A203019(A184985(n+1))]-A203019(n)`
-/

namespace A187260.P9505157070207730572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (A184985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A203019 n

end

end A187260.P9505157070207730572

namespace A187260

/-- `∑[A203019(A184985(n+1))]-A203019(n)` -/
def P9505157070207730572.Spec : Prop :=
  ∀ n, P9505157070207730572.a n = A187260 n

end A187260

/-! ## A187260.P2121603582357466507

`∑[A203019(A131209(n))]-A203019(n)`
-/

namespace A187260.P2121603582357466507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (A131209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A203019 n

end

end A187260.P2121603582357466507

namespace A187260

/-- `∑[A203019(A131209(n))]-A203019(n)` -/
def P2121603582357466507.Spec : Prop :=
  ∀ n, P2121603582357466507.a n = A187260 n

end A187260

/-! ## A187260.P16365507140383789724

`A051889(A129519(n))-abs(A292461(n))`
-/

namespace A187260.P16365507140383789724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A129519 n).toNat - |A292461 n|

end

end A187260.P16365507140383789724

namespace A187260

/-- `A051889(A129519(n))-abs(A292461(n))` -/
def P16365507140383789724.Spec : Prop :=
  ∀ n, P16365507140383789724.a n = A187260 n

end A187260

/-! ## A187260.P4932073687883025503

`A191796(n)+A001221(A191814(n+1))`
-/

namespace A187260.P4932073687883025503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191796 n + A001221 (A191814 (n + 1)).toNat

end

end A187260.P4932073687883025503

namespace A187260

/-- `A191796(n)+A001221(A191814(n+1))` -/
def P4932073687883025503.Spec : Prop :=
  ∀ n, P4932073687883025503.a n = A187260 n

end A187260

/-!
# A187261: Least number k such that the continued fraction expansion of its square root contains the first n natural numbers.

The programs for A187261, there is no canonical definition to state claims against.
-/

/-! ## A187261.P11354963704453386697

`record[A113738(2*(n+1))+n]`
-/

namespace A187261.P11354963704453386697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113738 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187261.P11354963704453386697

/-!
# A187263: Number of nonempty subsets of {1, 2, ..., n} with <=2 pairwise coprime elements.

The programs for A187263, the canonical program `A187263.P3388945961355388323` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187263 has offset 1).

The definition of A187263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187263.P10891814372423373597

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+n`
-/

namespace A187263.P10891814372423373597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A187263.P10891814372423373597

namespace A187263

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+n` -/
def P10891814372423373597.Spec : Prop :=
  ∀ n, P10891814372423373597.a n = (A187263 (n + 1) : ℚ)

end A187263

/-! ## A187263.P9207091659265123698

`Δ[A103116(n)]+n`
-/

namespace A187263.P9207091659265123698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A187263.P9207091659265123698

namespace A187263

/-- `Δ[A103116(n)]+n` -/
def P9207091659265123698.Spec : Prop :=
  ∀ n, P9207091659265123698.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P3080871031759465863

`A002088(n+1)+n`
-/

namespace A187263.P3080871031759465863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (n : ℤ)

end

end A187263.P3080871031759465863

namespace A187263

/-- `A002088(n+1)+n` -/
def P3080871031759465863.Spec : Prop :=
  ∀ n, P3080871031759465863.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P3388945961355388323

`A092249(n+1)+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A187263

/-- `A092249(n+1)+n` -/
def P3388945961355388323.Spec : Prop :=
  ∀ n, P3388945961355388323.a n = A187263 (n + 1)

theorem P3388945961355388323.correct : P3388945961355388323.Spec := by
  intro n
  simp only [A187263, Nat.add_sub_cancel]

end A187263

/-! ## A187263.P12914320814313454554

`∑[A039649(n+1)]-1`
-/

namespace A187263.P12914320814313454554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A187263.P12914320814313454554

namespace A187263

/-- `∑[A039649(n+1)]-1` -/
def P12914320814313454554.Spec : Prop :=
  ∀ n, P12914320814313454554.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P17796720821913013560

`∑[A000010(n+1)]+n`
-/

namespace A187263.P17796720821913013560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187263.P17796720821913013560

namespace A187263

/-- `∑[A000010(n+1)]+n` -/
def P17796720821913013560.Spec : Prop :=
  ∀ n, P17796720821913013560.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P16651407546838086818

`Δ[A049688(n)]-1+n`
-/

namespace A187263.P16651407546838086818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1 + (n : ℤ)

end

end A187263.P16651407546838086818

namespace A187263

/-- `Δ[A049688(n)]-1+n` -/
def P16651407546838086818.Spec : Prop :=
  ∀ n, P16651407546838086818.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P268200484008158934

`A015614(n+1)+1+n`
-/

namespace A187263.P268200484008158934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + 1 + (n : ℤ)

end

end A187263.P268200484008158934

namespace A187263

/-- `A015614(n+1)+1+n` -/
def P268200484008158934.Spec : Prop :=
  ∀ n, P268200484008158934.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P2340238075625649013

`A005728(n+1)-1+n`
-/

namespace A187263.P2340238075625649013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) - 1 + (n : ℤ)

end

end A187263.P2340238075625649013

namespace A187263

/-- `A005728(n+1)-1+n` -/
def P2340238075625649013.Spec : Prop :=
  ∀ n, P2340238075625649013.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P4299575324032449989

`A015613(n+1)+Δ[n²]`
-/

namespace A187263.P4299575324032449989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A187263.P4299575324032449989

namespace A187263

/-- `A015613(n+1)+Δ[n²]` -/
def P4299575324032449989.Spec : Prop :=
  ∀ n, P4299575324032449989.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P11009301836995030547

`∑[sqrt(A127473(n+1))]+n`
-/

namespace A187263.P11009301836995030547
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A187263.P11009301836995030547

namespace A187263

/-- `∑[sqrt(A127473(n+1))]+n` -/
def P11009301836995030547.Spec : Prop :=
  ∀ n, P11009301836995030547.a n = (A187263 (n + 1) : ℝ)

end A187263

/-! ## A187263.P16516748692551305260

`∑[A109606(n+1)+2]-1`
-/

namespace A187263.P16516748692551305260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A187263.P16516748692551305260

namespace A187263

/-- `∑[A109606(n+1)+2]-1` -/
def P16516748692551305260.Spec : Prop :=
  ∀ n, P16516748692551305260.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P10234118668821820059

`∑[1-A016035(n+1)+n]`
-/

namespace A187263.P10234118668821820059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A016035 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187263.P10234118668821820059

namespace A187263

/-- `∑[1-A016035(n+1)+n]` -/
def P10234118668821820059.Spec : Prop :=
  ∀ n, P10234118668821820059.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P3587115121012690728

`∑[n+1]-A185670(n+1)`
-/

namespace A187263.P3587115121012690728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A185670 (n + 1)

end

end A187263.P3587115121012690728

namespace A187263

/-- `∑[n+1]-A185670(n+1)` -/
def P3587115121012690728.Spec : Prop :=
  ∀ n, P3587115121012690728.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P4352815090782411137

`∑[A349137(2*n+1)]+n`
-/

namespace A187263.P4352815090782411137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187263.P4352815090782411137

namespace A187263

/-- `∑[A349137(2*n+1)]+n` -/
def P4352815090782411137.Spec : Prop :=
  ∀ n, P4352815090782411137.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P18326897014436866437

`∑[Δ[A100449(n)/4]+1]-1`
-/

namespace A187263.P18326897014436866437
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A187263.P18326897014436866437

namespace A187263

/-- `∑[Δ[A100449(n)/4]+1]-1` -/
def P18326897014436866437.Spec : Prop :=
  ∀ n, P18326897014436866437.a n = (A187263 (n + 1) : ℚ)

end A187263

/-! ## A187263.P13249085759310285302

`A143270(n+1)/(n+1)+n`
-/

namespace A187263.P13249085759310285302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143270 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A187263.P13249085759310285302

namespace A187263

/-- `A143270(n+1)/(n+1)+n` -/
def P13249085759310285302.Spec : Prop :=
  ∀ n, P13249085759310285302.a n = (A187263 (n + 1) : ℚ)

end A187263

/-! ## A187263.P17696003590408582846

`A000010(lcm(2, n+1))+a(n-1)+1` with `a(0)=1`
-/

namespace A187263.P17696003590408582846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (Nat.lcm 2 (n + 1)) + (a (n - 1) + 1)

end

end A187263.P17696003590408582846

namespace A187263

/-- `A000010(lcm(2, n+1))+a(n-1)+1` -/
def P17696003590408582846.Spec : Prop :=
  ∀ n, P17696003590408582846.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P12187494713040234164

`A000010(C(n+1, n))+a(n-1)+1` with `a(0)=1`
-/

namespace A187263.P12187494713040234164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (Nat.choose (n + 1) n) + (a (n - 1) + 1)

end

end A187263.P12187494713040234164

namespace A187263

/-- `A000010(C(n+1, n))+a(n-1)+1` -/
def P12187494713040234164.Spec : Prop :=
  ∀ n, P12187494713040234164.a n = A187263 (n + 1)

end A187263

/-! ## A187263.P6244198382046329866

`2*n-(n-∑[A000010(2*n-(n-1))])`
-/

namespace A187263.P6244198382046329866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187263.P6244198382046329866

namespace A187263

/-- `2*n-(n-∑[A000010(2*n-(n-1))])` -/
def P6244198382046329866.Spec : Prop :=
  ∀ n, P6244198382046329866.a n = A187263 (n + 1)

end A187263

/-!
# A187264: Number of nonempty subsets of {1, 2, ..., n} with <=3 pairwise coprime elements.

The programs for A187264, there is no canonical definition to state claims against.
-/

/-! ## A187264.P6879636382367651414

`∑[A186987(n+1)]`
-/

namespace A187264.P6879636382367651414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187264.P6879636382367651414

/-! ## A187264.P3908160607049311508

`A015614(n+1)+∑[A185953(n+1)+1]`
-/

namespace A187264.P3908160607049311508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187264.P3908160607049311508

/-! ## A187264.P5046945967871847742

`∑[A185953(n+1)+A000010(n+1)]+n`
-/

namespace A187264.P5046945967871847742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187264.P5046945967871847742

/-! ## A187264.P16312083054697888118

`A015632(n+1)+A015614(n+1)`
-/

namespace A187264.P16312083054697888118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015632 (n + 1) + A015614 (n + 1)

end

end A187264.P16312083054697888118

/-! ## A187264.P12578887542955667306

`A015632(n+1)+Δ[A049688(n)]-2`
-/

namespace A187264.P12578887542955667306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015632 (n + 1) + (f1 (n + 1) - f1 n - 2)

end

end A187264.P12578887542955667306

/-! ## A187264.P18101922955251086516

`A187263(n+1)+A015617(n+1)`
-/

namespace A187264.P18101922955251086516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187263 (n + 1) + A015617 (n + 1)

end

end A187264.P18101922955251086516

/-! ## A187264.P10950425177803993353

`∑[A000010(n+1)]+A015617(n+1)+n`
-/

namespace A187264.P10950425177803993353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A015617 (n + 1) + (n : ℤ))

end

end A187264.P10950425177803993353

/-! ## A187264.P3617311509076895192

`A187265(n+1)-A015623(n+1)`
-/

namespace A187264.P3617311509076895192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (n + 1) - A015623 (n + 1)

end

end A187264.P3617311509076895192

/-! ## A187264.P3493456236518236725

`∑[A186988(n+1)-A185348(n+1)]`
-/

namespace A187264.P3493456236518236725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) - A185348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187264.P3493456236518236725

/-!
# A187265: Number of nonempty subsets of {1, 2, ..., n} with <= 4 pairwise coprime elements.

The programs for A187265, there is no canonical definition to state claims against.
-/

/-! ## A187265.P7941070425947157917

`∑[A186988(n+1)]`
-/

namespace A187265.P7941070425947157917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187265.P7941070425947157917

/-! ## A187265.P11814831736440901221

`A187264(n+1)+A015623(n+1)`
-/

namespace A187265.P11814831736440901221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187264 (n + 1) + A015623 (n + 1)

end

end A187265.P11814831736440901221

/-! ## A187265.P5517717074253098903

`A015623(n+1)+∑[A186987(n+1)]`
-/

namespace A187265.P5517717074253098903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187265.P5517717074253098903

/-! ## A187265.P12975969259991813354

`∑[A186987(n+1)+A185348(n+1)]`
-/

namespace A187265.P12975969259991813354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) + A185348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187265.P12975969259991813354

/-! ## A187265.P17387289269789777626

`A187264(n+1)+∑[A185348(n+1)]`
-/

namespace A187265.P17387289269789777626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187264 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187265.P17387289269789777626

/-! ## A187265.P8287633629933412704

`A015632(n+1)+A015636(n+1)-1`
-/

namespace A187265.P8287633629933412704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015632 (n + 1) + (A015636 (n + 1) - 1)

end

end A187265.P8287633629933412704

/-! ## A187265.P8017957957398028498

`A187266(n+1)-A015698(n+1)`
-/

namespace A187265.P8017957957398028498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (n + 1) - A015698 (n + 1)

end

end A187265.P8017957957398028498

/-!
# A187266: Number of nonempty subsets of {1, 2, ..., n} with <=5 pairwise coprime elements.

The programs for A187266, there is no canonical definition to state claims against.
-/

/-! ## A187266.P9134479521815390423

`∑[A186989(n+1)]`
-/

namespace A187266.P9134479521815390423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187266.P9134479521815390423

/-! ## A187266.P2331691861753319508

`A187265(n+1)+A015698(n+1)`
-/

namespace A187266.P2331691861753319508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (n + 1) + A015698 (n + 1)

end

end A187266.P2331691861753319508

/-! ## A187266.P14021894513353335208

`A015698(n+1)+∑[A186988(n+1)]`
-/

namespace A187266.P14021894513353335208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187266.P14021894513353335208

/-! ## A187266.P3711301830456765928

`A015636(n+1)+A015663(n+1)-1`
-/

namespace A187266.P3711301830456765928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015636 (n + 1) + (A015663 (n + 1) - 1)

end

end A187266.P3711301830456765928

/-! ## A187266.P8388247022545476021

`A186989(n+1)+a(A000720(A008578(n)))` with `a(0)=1`
-/

namespace A187266.P8388247022545476021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186989 (n + 1) + a (A000720 (A008578 n).toNat).toNat

end

end A187266.P8388247022545476021

/-! ## A187266.P10338306420578187307

`A015623(n+1)+A187264(n+1)+A015698(n+1)`
-/

namespace A187266.P10338306420578187307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) + (A187264 (n + 1) + A015698 (n + 1))

end

end A187266.P10338306420578187307

/-! ## A187266.P8774037054545623506

`A015663(n+1)-1+A015623(n+1)+∑[A000010(n+1)]`
-/

namespace A187266.P8774037054545623506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015663 (n + 1) - 1 + (A015623 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187266.P8774037054545623506

/-!
# A187267: Number of nonempty subsets of {1, 2, ..., n} with <=6 pairwise coprime elements.

The programs for A187267, there is no canonical definition to state claims against.
-/

/-! ## A187267.P9156024063838039511

`∑[A186990(n+1)]`
-/

namespace A187267.P9156024063838039511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187267.P9156024063838039511

/-! ## A187267.P12480984100971552483

`record[A186990(n-1)+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A187267.P12480984100971552483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A186990 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187267.P12480984100971552483

/-! ## A187267.P11470220670346838472

`A186990(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A187267.P11470220670346838472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186990 (Nat.choose (n + 1) n) + a (n - 1)

end

end A187267.P11470220670346838472

/-! ## A187267.P5169869399865790113

`A186990(abs(1-n)+2)+a(n-1)` with `a(0)=1`
-/

namespace A187267.P5169869399865790113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186990 (|1 - (n : ℤ)| + 2).toNat + a (n - 1)

end

end A187267.P5169869399865790113

/-! ## A187267.P6810068796833244086

`floor(A186990(A000027(n+1))+a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A187267.P6810068796833244086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186990 (A000027 (n + 1)).toNat + a (n - 1)

end

end A187267.P6810068796833244086

/-! ## A187267.P4801051640855920324

`A000027(A186990(n+1)+a(n-1))` with `a(0)=1`
-/

namespace A187267.P4801051640855920324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A186990 (n + 1) + a (n - 1)).toNat

end

end A187267.P4801051640855920324

/-!
# A187268: Number of nonempty subsets of {1, 2, ..., n} with <=7 pairwise coprime elements.

The programs for A187268, there is no canonical definition to state claims against.
-/

/-! ## A187268.P17366895715156744543

`∑[A186991(n+1)]`
-/

namespace A187268.P17366895715156744543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187268.P17366895715156744543

/-! ## A187268.P15072405316676216238

`A186991(n%(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A187268.P15072405316676216238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186991 (n % (n + 1) + 1) + a (n - 1)

end

end A187268.P15072405316676216238

/-!
# A187269: Number of nonempty subsets of {1, 2, ..., n} with <=8 pairwise coprime elements.

The programs for A187269, there is no canonical definition to state claims against.
-/

/-! ## A187269.P15933591214551183595

`∑[A186992(n+1)]`
-/

namespace A187269.P15933591214551183595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187269.P15933591214551183595

/-! ## A187269.P13659299661921756803

`A186992(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A187269.P13659299661921756803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186992 (n + 1) + a (A028310 n - 1).toNat

end

end A187269.P13659299661921756803

/-! ## A187269.P6457269840078115798

`A186992(n+1)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A187269.P6457269840078115798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186992 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A187269.P6457269840078115798

/-! ## A187269.P1558379699493293426

`A186992(n+1)+a(A005843(n)-(n+1))` with `a(0)=1`
-/

namespace A187269.P1558379699493293426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186992 (n + 1) + a (A005843 n - (n + 1 : ℤ)).toNat

end

end A187269.P1558379699493293426

/-! ## A187269.P11246231598897301684

`A186992(n+1)+a(n-A000040(n+2)%2)` with `a(0)=1`
-/

namespace A187269.P11246231598897301684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186992 (n + 1) + a ((n : ℤ) - Int.tmod (A000040 (n + 2)) 2).toNat

end

end A187269.P11246231598897301684

/-!
# A187270: Number of nonempty subsets of {1, 2, ..., n} with <=9 pairwise coprime elements.

The programs for A187270, there is no canonical definition to state claims against.
-/

/-! ## A187270.P2278281252096300477

`∑[A186993(n+1)]`
-/

namespace A187270.P2278281252096300477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187270.P2278281252096300477

/-! ## A187270.P17457574337106143499

`A186993(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A187270.P17457574337106143499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186993 (n + 1) + a (A023443 n).toNat

end

end A187270.P17457574337106143499

/-! ## A187270.P16630374713163215896

`A186993(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A187270.P16630374713163215896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186993 (n + 1) + a (A028310 n - 1).toNat

end

end A187270.P16630374713163215896

/-! ## A187270.P10171416155583843935

`A186993(n+1)+a(n-A158388(n))` with `a(0)=1`
-/

namespace A187270.P10171416155583843935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186993 (n + 1) + a ((n : ℤ) - A158388 n).toNat

end

end A187270.P10171416155583843935

/-! ## A187270.P3099371439483188258

`A186993(n+1)+a(n-A002828(n²))` with `a(0)=1`
-/

namespace A187270.P3099371439483188258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186993 (n + 1) + a ((n : ℤ) - A002828 (n ^ 2)).toNat

end

end A187270.P3099371439483188258

/-!
# A187272: a(n) = (n/4)*2^(n/2)*((1+sqrt(2))^2 + (-1)^n*(1-sqrt(2))^2).

The programs for A187272, the canonical program `A187272.P9890326289592100995` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187272 has offset 0).

The definition of A187272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187272.P9890326289592100995

`n/4*2^(n/2)*((1+sqrt(2))²+(-1)^n*(1-sqrt(2))²)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187272

/-- `n/4*2^(n/2)*((1+sqrt(2))²+(-1)^n*(1-sqrt(2))²)` -/
def P9890326289592100995.Spec : Prop :=
  ∀ n, P9890326289592100995.a n = (A187272 n : ℝ)

end A187272

/-! ## A187272.P11307720636945602416

`ogf((2x+6x^2+4x^3)/(1-4x^2+4x^4))`
-/

namespace A187272.P11307720636945602416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 6, 4] [1, 0, -4, 0, 4] n

end

end A187272.P11307720636945602416

namespace A187272

/-- `ogf((2x+6x^2+4x^3)/(1-4x^2+4x^4))` -/
def P11307720636945602416.Spec : Prop :=
  ∀ n, P11307720636945602416.a n = A187272 n

end A187272

/-! ## A187272.P9956454490757444710

`n*∑[2*a(n-2)]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A187272.P9956454490757444710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187272.P9956454490757444710

namespace A187272

/-- `n*∑[2*a(n-2)]` -/
def P9956454490757444710.Spec : Prop :=
  ∀ n, (P9956454490757444710.a n : ℤ) = A187272 n

end A187272

/-! ## A187272.P17087912157234716527

`∑{d}[n, n*A056493(#)]`
-/

namespace A187272.P17087912157234716527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A056493 d

end

end A187272.P17087912157234716527

namespace A187272

/-- `∑{d}[n, n*A056493(#)]` -/
def P17087912157234716527.Spec : Prop :=
  ∀ n, P17087912157234716527.a n = A187272 n

end A187272

/-! ## A187272.P11405942672903902869

`A132344(n)+A093968(n)`
-/

namespace A187272.P11405942672903902869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132344 n + A093968 n

end

end A187272.P11405942672903902869

namespace A187272

/-- `A132344(n)+A093968(n)` -/
def P11405942672903902869.Spec : Prop :=
  ∀ n, P11405942672903902869.a n = A187272 n

end A187272

/-! ## A187272.P8752363723424389016

`A093968(n+1)+A093968(n)-A016116(n)`
-/

namespace A187272.P8752363723424389016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (n + 1) + (A093968 n - A016116 n)

end

end A187272.P8752363723424389016

namespace A187272

/-- `A093968(n+1)+A093968(n)-A016116(n)` -/
def P8752363723424389016.Spec : Prop :=
  ∀ n, P8752363723424389016.a n = A187272 n

end A187272

/-! ## A187272.P4157461775570778226

`n*A063759(n+1)/2`
-/

namespace A187272.P4157461775570778226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A063759 (n + 1) : ℚ) / 2

end

end A187272.P4157461775570778226

namespace A187272

/-- `n*A063759(n+1)/2` -/
def P4157461775570778226.Spec : Prop :=
  ∀ n, P4157461775570778226.a n = (A187272 n : ℚ)

end A187272

/-! ## A187272.P12651859309209971070

`n*A163978(n+1)/2`
-/

namespace A187272.P12651859309209971070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A163978 (n + 1) : ℚ) / 2

end

end A187272.P12651859309209971070

namespace A187272

/-- `n*A163978(n+1)/2` -/
def P12651859309209971070.Spec : Prop :=
  ∀ n, P12651859309209971070.a n = (A187272 n : ℚ)

end A187272

/-! ## A187272.P12106029195788579509

`n*A354785(n+1)/3`
-/

namespace A187272.P12106029195788579509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A354785 (n + 1) : ℚ) / 3

end

end A187272.P12106029195788579509

namespace A187272

/-- `n*A354785(n+1)/3` -/
def P12106029195788579509.Spec : Prop :=
  ∀ n, P12106029195788579509.a n = (A187272 n : ℚ)

end A187272

/-! ## A187272.P9534078426723546875

`n*A070004(n+1)/5`
-/

namespace A187272.P9534078426723546875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A070004 (n + 1) : ℚ) / 5

end

end A187272.P9534078426723546875

namespace A187272

/-- `n*A070004(n+1)/5` -/
def P9534078426723546875.Spec : Prop :=
  ∀ n, P9534078426723546875.a n = (A187272 n : ℚ)

end A187272

/-!
# A187273: a(n) = (n/4)*3^(n/2)*((1+sqrt(3))^2+(-1)^n*(1-sqrt(3))^2).

The programs for A187273, the canonical program `A187273.P18286874422338762211` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187273 has offset 0).

The definition of A187273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187273.P16623024244558540091

`n/4*3^(n/2)*((1+sqrt(3))²+(-1)^n*(1-sqrt(3))²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187273.P16623024244558540091
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 4 : ℝ) * (3 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * ((1 + Real.sqrt (3 : ℝ)) ^ 2 + ((-1) ^ n : ℝ) * (1 - Real.sqrt (3 : ℝ)) ^ 2)

end

end A187273.P16623024244558540091

namespace A187273

/-- `n/4*3^(n/2)*((1+sqrt(3))²+(-1)^n*(1-sqrt(3))²)` -/
def P16623024244558540091.Spec : Prop :=
  ∀ n, P16623024244558540091.a n = (A187273 n : ℝ)

end A187273

/-! ## A187273.P15766834020386632413

`ogf((3x+12x^2+9x^3)/(1-6x^2+9x^4))`
-/

namespace A187273.P15766834020386632413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 12, 9] [1, 0, -6, 0, 9] n

end

end A187273.P15766834020386632413

namespace A187273

/-- `ogf((3x+12x^2+9x^3)/(1-6x^2+9x^4))` -/
def P15766834020386632413.Spec : Prop :=
  ∀ n, P15766834020386632413.a n = A187273 n

end A187273

/-! ## A187273.P18286874422338762211

`6*a(n-2)-9*a(n-4)` with `a(0)=0, a(1)=3, a(2)=12, a(3)=27`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187273

/-- `6*a(n-2)-9*a(n-4)` -/
def P18286874422338762211.Spec : Prop :=
  ∀ n, P18286874422338762211.a n = A187273 n

theorem P18286874422338762211.correct : P18286874422338762211.Spec := by
  intro n
  simp only [A187273]

end A187273

/-! ## A187273.P12709680441559261576

`n*∏[3/a(n-1)]` with `a(0)=2`
-/

namespace A187273.P12709680441559261576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A187273.P12709680441559261576

namespace A187273

/-- `n*∏[3/a(n-1)]` -/
def P12709680441559261576.Spec : Prop :=
  ∀ n, P12709680441559261576.a n = (A187273 n : ℚ)

end A187273

/-! ## A187273.P3084043188397946826

`n*∑[3*a(n-2)]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A187273.P3084043188397946826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187273.P3084043188397946826

namespace A187273

/-- `n*∑[3*a(n-2)]` -/
def P3084043188397946826.Spec : Prop :=
  ∀ n, (P3084043188397946826.a n : ℤ) = A187273 n

end A187273

/-!
# A187274: a(n) = n*4^(n/2 - 1)*(9 + (-1)^n).

The programs for A187274, the canonical program `A187274.P4221782573967167456` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187274 has offset 0).

The definition of A187274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187274.P14482180944326501513

`n*2^(n-2)*(9+(-1)^n)`
-/

namespace A187274.P14482180944326501513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (9 + (-1) ^ n : ℚ)

end

end A187274.P14482180944326501513

namespace A187274

/-- `n*2^(n-2)*(9+(-1)^n)` -/
def P14482180944326501513.Spec : Prop :=
  ∀ n, P14482180944326501513.a n = (A187274 n : ℚ)

theorem P14482180944326501513.correct : P14482180944326501513.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A187274, Nat.add_sub_cancel, A187274.P14482180944326501513.a, A187274.P4221782573967167456.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A187274, Nat.add_sub_cancel, A187274.P14482180944326501513.a, A187274.P4221782573967167456.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A187274

/-! ## A187274.P11428211279677577880

`n*4^(n/2-1)*(9+(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187274.P11428211279677577880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (4 : ℝ) ^ ((n : ℚ) / 2 - 1 : ℝ) * (9 + (-1) ^ n : ℝ)

end

end A187274.P11428211279677577880

namespace A187274

/-- `n*4^(n/2-1)*(9+(-1)^n)` -/
def P11428211279677577880.Spec : Prop :=
  ∀ n, P11428211279677577880.a n = (A187274 n : ℝ)

end A187274

/-! ## A187274.P4221782573967167456

`8*a(n-2)-16*a(n-4)` with `a(0)=0, a(1)=4, a(2)=20, a(3)=48`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187274

/-- `8*a(n-2)-16*a(n-4)` -/
def P4221782573967167456.Spec : Prop :=
  ∀ n, P4221782573967167456.a n = A187274 n

theorem P4221782573967167456.correct : P4221782573967167456.Spec := by
  intro n
  simp only [A187274]

end A187274

/-! ## A187274.P15100533021948729893

`ogf((4x+20x^2+16x^3)/(1-8x^2+16x^4))`
-/

namespace A187274.P15100533021948729893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 20, 16] [1, 0, -8, 0, 16] n

end

end A187274.P15100533021948729893

namespace A187274

/-- `ogf((4x+20x^2+16x^3)/(1-8x^2+16x^4))` -/
def P15100533021948729893.Spec : Prop :=
  ∀ n, P15100533021948729893.a n = A187274 n

end A187274

/-! ## A187274.P4089816499341307369

`∑{d}[n, n*A056495(#)]`
-/

namespace A187274.P4089816499341307369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A056495 d

end

end A187274.P4089816499341307369

namespace A187274

/-- `∑{d}[n, n*A056495(#)]` -/
def P4089816499341307369.Spec : Prop :=
  ∀ n, P4089816499341307369.a n = A187274 n

end A187274

/-! ## A187274.P4662179723937990742

`n*A082605(n+1)-n`
-/

namespace A187274.P4662179723937990742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082605 (n + 1) - (n : ℤ)

end

end A187274.P4662179723937990742

namespace A187274

/-- `n*A082605(n+1)-n` -/
def P4662179723937990742.Spec : Prop :=
  ∀ n, P4662179723937990742.a n = A187274 n

end A187274

/-! ## A187274.P6929166918986321455

`lcm(2*n*A104721(n), A028310(n))`
-/

namespace A187274.P6929166918986321455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * ((n : ℤ) * A104721 n)) (A028310 n)

end

end A187274.P6929166918986321455

namespace A187274

/-- `lcm(2*n*A104721(n), A028310(n))` -/
def P6929166918986321455.Spec : Prop :=
  ∀ n, (P6929166918986321455.a n : ℤ) = A187274 n

end A187274

/-! ## A187274.P13433060063168173351

`(n+1)*A029747(2*A001651(n+1))-A029747(2*A001651(n+1))`
-/

namespace A187274.P13433060063168173351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A029747 (2 * A001651 (n + 1)).toNat - A029747 (2 * A001651 (n + 1)).toNat

end

end A187274.P13433060063168173351

namespace A187274

/-- `(n+1)*A029747(2*A001651(n+1))-A029747(2*A001651(n+1))` -/
def P13433060063168173351.Spec : Prop :=
  ∀ n, P13433060063168173351.a n = A187274 n

end A187274

/-! ## A187274.P5813201956315409115

`n*A084568(n+1)/2`
-/

namespace A187274.P5813201956315409115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A084568 (n + 1) : ℚ) / 2

end

end A187274.P5813201956315409115

namespace A187274

/-- `n*A084568(n+1)/2` -/
def P5813201956315409115.Spec : Prop :=
  ∀ n, P5813201956315409115.a n = (A187274 n : ℚ)

end A187274

/-! ## A187274.P17199598885032141541

`n*A104721(n+2)/2`
-/

namespace A187274.P17199598885032141541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A104721 (n + 2) : ℚ) / 2

end

end A187274.P17199598885032141541

namespace A187274

/-- `n*A104721(n+2)/2` -/
def P17199598885032141541.Spec : Prop :=
  ∀ n, P17199598885032141541.a n = (A187274 n : ℚ)

end A187274

/-!
# A187275: a(n) = (n/4)*5^(n/2)*((1+sqrt(5))^2+(-1)^n*(1-sqrt(5))^2).

The programs for A187275, the canonical program `A187275.P1599862759824757057` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187275 has offset 0).

The definition of A187275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187275.P1599862759824757057

`10*a(n-2)-25*a(n-4)` with `a(0)=0, a(1)=5, a(2)=30, a(3)=75`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187275

/-- `10*a(n-2)-25*a(n-4)` -/
def P1599862759824757057.Spec : Prop :=
  ∀ n, P1599862759824757057.a n = A187275 n

theorem P1599862759824757057.correct : P1599862759824757057.Spec := by
  intro n
  simp only [A187275]

end A187275

/-! ## A187275.P16212738478150070120

`n/4*5^(n/2)*((1+sqrt(5))²+(-1)^n*(1-sqrt(5))²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A187275.P16212738478150070120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 4 : ℝ) * (5 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * ((1 + Real.sqrt (5 : ℝ)) ^ 2 + ((-1) ^ n : ℝ) * (1 - Real.sqrt (5 : ℝ)) ^ 2)

end

end A187275.P16212738478150070120

namespace A187275

/-- `n/4*5^(n/2)*((1+sqrt(5))²+(-1)^n*(1-sqrt(5))²)` -/
def P16212738478150070120.Spec : Prop :=
  ∀ n, P16212738478150070120.a n = (A187275 n : ℝ)

end A187275

/-! ## A187275.P16653184017956976831

`ogf((5x+30x^2+25x^3)/(1-10x^2+25x^4))`
-/

namespace A187275.P16653184017956976831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 30, 25] [1, 0, -10, 0, 25] n

end

end A187275.P16653184017956976831

namespace A187275

/-- `ogf((5x+30x^2+25x^3)/(1-10x^2+25x^4))` -/
def P16653184017956976831.Spec : Prop :=
  ∀ n, P16653184017956976831.a n = A187275 n

end A187275

/-! ## A187275.P3516370176199887638

`n*∏[5/a(n-1)]` with `a(0)=3`
-/

namespace A187275.P3516370176199887638
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A187275.P3516370176199887638

namespace A187275

/-- `n*∏[5/a(n-1)]` -/
def P3516370176199887638.Spec : Prop :=
  ∀ n, P3516370176199887638.a n = (A187275 n : ℚ)

end A187275

/-! ## A187275.P12990191151724064641

`n*Δ[5*a(n-2)]` with `a(0)=2, a(1)=5`
-/

namespace A187275.P12990191151724064641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A187275.P12990191151724064641

namespace A187275

/-- `n*Δ[5*a(n-2)]` -/
def P12990191151724064641.Spec : Prop :=
  ∀ n, P12990191151724064641.a n = A187275 n

end A187275

/-! ## A187275.P14076104232273895584

`n*(∑[5*a(n-2)]+1)` with `a(0)=2, a(1)=2`
-/

namespace A187275.P14076104232273895584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187275.P14076104232273895584

namespace A187275

/-- `n*(∑[5*a(n-2)]+1)` -/
def P14076104232273895584.Spec : Prop :=
  ∀ n, (P14076104232273895584.a n : ℤ) = A187275 n

end A187275

/-!
# A187276: Number of d+/d- diagonally convex polyominoes with n cells.

The programs for A187276, there is no canonical definition to state claims against.
-/

/-! ## A187276.P14389439552337360155

`A033505(n)-A172476(A033505(n))`
-/

namespace A187276.P14389439552337360155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n - A172476 (A033505 n).toNat

end

end A187276.P14389439552337360155

/-! ## A187276.P8446130296648401026

`A194640(A250128(n+1))`
-/

namespace A187276.P8446130296648401026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A250128 (n + 1)).toNat

end

end A187276.P8446130296648401026

/-! ## A187276.P2507606352212477467

`A090620(A030186(n+2))+1`
-/

namespace A187276.P2507606352212477467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A030186 (n + 2)).toNat + 1

end

end A187276.P2507606352212477467

/-!
# A187277: Let S denote the palindromes in the language {0,1,2,...,n-1}*; a(n) = number of words of length 4 in the language SS.

The programs for A187277, the canonical program `A187277.P941434387435749757` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187277 has offset 1).

The definition of A187277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187277.P7994724934068110315

`ogf((1+12x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A187277.P7994724934068110315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, -1] [1, -4, 6, -4, 1] n

end

end A187277.P7994724934068110315

namespace A187277

/-- `ogf((1+12x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7994724934068110315.Spec : Prop :=
  ∀ n, P7994724934068110315.a n = A187277 (n + 1)

end A187277

/-! ## A187277.P941434387435749757

`(n+1)*(2*(n+1)²+n+1-2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187277

/-- `(n+1)*(2*(n+1)²+n+1-2)` -/
def P941434387435749757.Spec : Prop :=
  ∀ n, P941434387435749757.a n = A187277 (n + 1)

theorem P941434387435749757.correct : P941434387435749757.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel]

end A187277

/-! ## A187277.P17063299865317677684

`∑[∑[a(n-1)+12]]` with `a(0)=1, a(1)=14`
-/

namespace A187277.P17063299865317677684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187277.P17063299865317677684

namespace A187277

/-- `∑[∑[a(n-1)+12]]` -/
def P17063299865317677684.Spec : Prop :=
  ∀ n, (P17063299865317677684.a n : ℤ) = A187277 (n + 1)

end A187277

/-! ## A187277.P7663674612758458285

`n*C(2*(n+2), 2)+1`
-/

namespace A187277.P7663674612758458285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * (n + 2)) 2 + 1

end

end A187277.P7663674612758458285

namespace A187277

/-- `n*C(2*(n+2), 2)+1` -/
def P7663674612758458285.Spec : Prop :=
  ∀ n, (P7663674612758458285.a n : ℤ) = A187277 (n + 1)

theorem P7663674612758458285.correct : P7663674612758458285.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P7663674612758458285.a, A187277.P941434387435749757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187277

/-! ## A187277.P8326021790013135028

`n*lcm(n+2, 2*n+3)+1`
-/

namespace A187277.P8326021790013135028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lcm (n + 2) (2 * n + 3) + 1

end

end A187277.P8326021790013135028

namespace A187277

/-- `n*lcm(n+2, 2*n+3)+1` -/
def P8326021790013135028.Spec : Prop :=
  ∀ n, (P8326021790013135028.a n : ℤ) = A187277 (n + 1)

end A187277

/-! ## A187277.P1503290119608433637

`record[((2*n+1)*(n-2)+1)*(n-1)]`
-/

namespace A187277.P1503290119608433637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * ((n : ℤ) - 2) + 1) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187277.P1503290119608433637

namespace A187277

/-- `record[((2*n+1)*(n-2)+1)*(n-1)]` -/
def P1503290119608433637.Spec : Prop :=
  ∀ n, P1503290119608433637.a n = A187277 (n + 1)

end A187277

/-! ## A187277.P2247596860513983625

`Δ[(2*n+1)*(n+1)*(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A187277.P2247596860513983625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n + 1 : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A187277.P2247596860513983625

namespace A187277

/-- `Δ[(2*n+1)*(n+1)*(n-1)]+a(n-1)` -/
def P2247596860513983625.Spec : Prop :=
  ∀ n, P2247596860513983625.a n = A187277 (n + 1)

theorem P2247596860513983625.correct : P2247596860513983625.Spec := by
  intro n
  induction n with
  | zero => simp [A187277, A187277.P2247596860513983625.f1, A187277.P2247596860513983625.a, A187277.P941434387435749757.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A187277, Nat.add_sub_cancel, A187277.P2247596860513983625.f1, A187277.P2247596860513983625.a, A187277.P941434387435749757.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A187277

/-! ## A187277.P5734735265264444101

`∑[A239325(n)]`
-/

namespace A187277.P5734735265264444101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187277.P5734735265264444101

namespace A187277

/-- `∑[A239325(n)]` -/
def P5734735265264444101.Spec : Prop :=
  ∀ n, P5734735265264444101.a n = A187277 (n + 1)

end A187277

/-! ## A187277.P7597875974817449510

`∑[A391993(n)+1]`
-/

namespace A187277.P7597875974817449510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391993 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187277.P7597875974817449510

namespace A187277

/-- `∑[A391993(n)+1]` -/
def P7597875974817449510.Spec : Prop :=
  ∀ n, P7597875974817449510.a n = A187277 (n + 1)

end A187277

/-! ## A187277.P7656653147223236998

`∑[A126587(n+1)-2]`
-/

namespace A187277.P7656653147223236998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126587 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187277.P7656653147223236998

namespace A187277

/-- `∑[A126587(n+1)-2]` -/
def P7656653147223236998.Spec : Prop :=
  ∀ n, P7656653147223236998.a n = A187277 (n + 1)

end A187277

/-! ## A187277.P1168638847339053435

`A213820(n+1)-(n+1)`
-/

namespace A187277.P1168638847339053435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213820 (n + 1) - (n + 1 : ℤ)

end

end A187277.P1168638847339053435

namespace A187277

/-- `A213820(n+1)-(n+1)` -/
def P1168638847339053435.Spec : Prop :=
  ∀ n, P1168638847339053435.a n = A187277 (n + 1)

theorem P1168638847339053435.correct : P1168638847339053435.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P1168638847339053435.a, A187277.P941434387435749757.a, A213820, A213820.P17130310643522109018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187277

/-! ## A187277.P8319223137362544692

`(n+2)*A014106(n)+1`
-/

namespace A187277.P8319223137362544692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A014106 n + 1

end

end A187277.P8319223137362544692

namespace A187277

/-- `(n+2)*A014106(n)+1` -/
def P8319223137362544692.Spec : Prop :=
  ∀ n, P8319223137362544692.a n = A187277 (n + 1)

theorem P8319223137362544692.correct : P8319223137362544692.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P8319223137362544692.a, A187277.P941434387435749757.a, A014106, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187277

/-! ## A187277.P15940734542544409067

`A317637(n)+(n+1)^3`
-/

namespace A187277.P15940734542544409067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 n + ((n + 1) ^ 3 : ℤ)

end

end A187277.P15940734542544409067

namespace A187277

/-- `A317637(n)+(n+1)^3` -/
def P15940734542544409067.Spec : Prop :=
  ∀ n, P15940734542544409067.a n = A187277 (n + 1)

theorem P15940734542544409067.correct : P15940734542544409067.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P15940734542544409067.a, A187277.P941434387435749757.a, A317637, A317637.P12410921374359631461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187277

/-! ## A187277.P6890631964745687508

`A130885(n+1)-n^3`
-/

namespace A187277.P6890631964745687508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130885 (n + 1) - (n ^ 3 : ℤ)

end

end A187277.P6890631964745687508

namespace A187277

/-- `A130885(n+1)-n^3` -/
def P6890631964745687508.Spec : Prop :=
  ∀ n, P6890631964745687508.a n = A187277 (n + 1)

theorem P6890631964745687508.correct : P6890631964745687508.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P6890631964745687508.a, A187277.P941434387435749757.a, A130885, A130885.P4498217961422468904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187277

/-! ## A187277.P5973721104427404610

`∑[A049598(n)]+(n+1)²`
-/

namespace A187277.P5973721104427404610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A187277.P5973721104427404610

namespace A187277

/-- `∑[A049598(n)]+(n+1)²` -/
def P5973721104427404610.Spec : Prop :=
  ∀ n, P5973721104427404610.a n = A187277 (n + 1)

end A187277

/-! ## A187277.P10008882635783978315

`2*A002414(n+1)-(n+1)`
-/

namespace A187277.P10008882635783978315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002414 (n + 1) - (n + 1 : ℤ)

end

end A187277.P10008882635783978315

namespace A187277

/-- `2*A002414(n+1)-(n+1)` -/
def P10008882635783978315.Spec : Prop :=
  ∀ n, P10008882635783978315.a n = A187277 (n + 1)

end A187277

/-! ## A187277.P11427055321511298851

`A015237(n)+A014634(n)`
-/

namespace A187277.P11427055321511298851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n + A014634 n

end

end A187277.P11427055321511298851

namespace A187277

/-- `A015237(n)+A014634(n)` -/
def P11427055321511298851.Spec : Prop :=
  ∀ n, P11427055321511298851.a n = A187277 (n + 1)

theorem P11427055321511298851.correct : P11427055321511298851.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P11427055321511298851.a, A187277.P941434387435749757.a, A014634, A014634.P13834563675282914036.a, A015237, A015237.P2392393478135424708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187277

/-! ## A187277.P4645076589425885217

`A033954(n)+A005898(n)`
-/

namespace A187277.P4645076589425885217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n + A005898 n

end

end A187277.P4645076589425885217

namespace A187277

/-- `A033954(n)+A005898(n)` -/
def P4645076589425885217.Spec : Prop :=
  ∀ n, P4645076589425885217.a n = A187277 (n + 1)

theorem P4645076589425885217.correct : P4645076589425885217.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P4645076589425885217.a, A187277.P941434387435749757.a, A005898, A005898.P8127451400230703254.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187277

/-! ## A187277.P9293758478523022733

`A081272(n)+A015245(n)`
-/

namespace A187277.P9293758478523022733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 n + A015245 n

end

end A187277.P9293758478523022733

namespace A187277

/-- `A081272(n)+A015245(n)` -/
def P9293758478523022733.Spec : Prop :=
  ∀ n, P9293758478523022733.a n = A187277 (n + 1)

theorem P9293758478523022733.correct : P9293758478523022733.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P9293758478523022733.a, A187277.P941434387435749757.a, A015245, A015245.P18268065709349994577.a, A081272, A081272.P2942107853835122224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187277

/-! ## A187277.P1842818633163219197

`A090197(n)+A011379(n)`
-/

namespace A187277.P1842818633163219197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 n + A011379 n

end

end A187277.P1842818633163219197

namespace A187277

/-- `A090197(n)+A011379(n)` -/
def P1842818633163219197.Spec : Prop :=
  ∀ n, P1842818633163219197.a n = A187277 (n + 1)

theorem P1842818633163219197.correct : P1842818633163219197.Spec := by
  intro n
  simp only [A187277, Nat.add_sub_cancel, A187277.P1842818633163219197.a, A187277.P941434387435749757.a, A011379, A011379.P13170028565952122956.a, A090197, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187277

/-!
# A187279: a(n) is the least number of terms needed to represent n as a sum of powers of the same prime.

The programs for A187279, there is no canonical definition to state claims against.
-/

/-! ## A187279.P4313770022303215416

`A129979(A349056(n+1)^A323903(n+3))`
-/

namespace A187279.P4313770022303215416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129979 (SequenceMachineLib.roundAway ((A349056 (n + 1) : ℚ) ^ (A323903 (n + 3) : ℤ))).toNat

end

end A187279.P4313770022303215416

/-! ## A187279.P1532547203968178530

`A072491(A143201(n+1)^3)`
-/

namespace A187279.P1532547203968178530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A143201 (n + 1) ^ 3).toNat

end

end A187279.P1532547203968178530

/-! ## A187279.P1626134097215523031

`A284694(A143201(n+1)^3)`
-/

namespace A187279.P1626134097215523031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (A143201 (n + 1) ^ 3).toNat

end

end A187279.P1626134097215523031

/-! ## A187279.P15446249004241273065

`A072491(A143201(n+1)²*A143201(n+1))`
-/

namespace A187279.P15446249004241273065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A143201 (n + 1) ^ 2 * A143201 (n + 1)).toNat

end

end A187279.P15446249004241273065

/-! ## A187279.P12918173904191961917

`A020639(A251725(n+1)²²)`
-/

namespace A187279.P12918173904191961917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A251725 (n + 1) ^ 2) ^ 2).toNat

end

end A187279.P12918173904191961917

/-!
# A187280: Number of (n+2) X 3 0..2 arrays with every 2 X 2 subblock sum equal to some diagonal or antidiagonal neighbor 2 X 2 subblock sum.

The programs for A187280, there is no canonical definition to state claims against.
-/

/-! ## A187280.P2855578158043736552

`A187283(∑[n]+1)`
-/

namespace A187280.P2855578158043736552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187283 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187280.P2855578158043736552

/-! ## A187280.P4374481473501660153

`or(1, A187283(A000124(n)))`
-/

namespace A187280.P4374481473501660153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A187283 (A000124 n).toNat)

end

end A187280.P4374481473501660153

/-! ## A187280.P8030845602383855165

`record[A187283(A276954(n+1))]`
-/

namespace A187280.P8030845602383855165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187283 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187280.P8030845602383855165

/-!
# A187281: Number of (n+2)X4 0..2 arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187281, there is no canonical definition to state claims against.
-/

/-! ## A187281.P11685641787792181198

`A187283(∑[n+1]+2)`
-/

namespace A187281.P11685641787792181198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187283 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187281.P11685641787792181198

/-! ## A187281.P3756321596705770622

`record[A187283(n+3)/A164855(n)]`
-/

namespace A187281.P3756321596705770622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187283 (n + 3) : ℚ) / (A164855 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187281.P3756321596705770622

/-!
# A187282: Number of (n+2)X5 0..2 arrays with every 2X2 subblock sum equal to some diagonal or antidiagonal neighbor 2X2 subblock sum.

The programs for A187282, there is no canonical definition to state claims against.
-/

/-! ## A187282.P11928812006438236321

`A187283(∑[round(sqrt(n²+1))+2]+3)`
-/

namespace A187282.P11928812006438236321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187283 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A187282.P11928812006438236321

/-!
# A187284: a(n) = round(log(lcm(1,...,n))) - n.

The programs for A187284, the canonical program `A187284.P2001770761397353711` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187284 has offset 0).

The definition of A187284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187284.P2001770761397353711

`round(log(A003418(n)))-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A187284

/-- `round(log(A003418(n)))-n` -/
def P2001770761397353711.Spec : Prop :=
  ∀ n, P2001770761397353711.a n = A187284 n

theorem P2001770761397353711.correct : P2001770761397353711.Spec := by
  intro n
  simp only [A187284]

end A187284

/-! ## A187284.P9853411188479609563

`A215259(n)-n`
-/

namespace A187284.P9853411188479609563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215259 n - (n : ℤ)

end

end A187284.P9853411188479609563

namespace A187284

/-- `A215259(n)-n` -/
def P9853411188479609563.Spec : Prop :=
  ∀ n, P9853411188479609563.a n = A187284 n

theorem P9853411188479609563.correct : P9853411188479609563.Spec := by
  intro n
  simp only [A187284, Nat.add_sub_cancel, A187284.P9853411188479609563.a, A187284.P2001770761397353711.a, A003418, A003418.P6976248655893080794.a, A215259, A215259.P940527813139096403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187284

/-! ## A187284.P16062879979528191514

`(A215259(n)+A001489(n))%(n+1)`
-/

namespace A187284.P16062879979528191514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215259 n + A001489 n) (n + 1 : ℤ)

end

end A187284.P16062879979528191514

namespace A187284

/-- `(A215259(n)+A001489(n))%(n+1)` -/
def P16062879979528191514.Spec : Prop :=
  ∀ n, P16062879979528191514.a n = A187284 n

end A187284

/-! ## A187284.P9222090465088140143

`A000038(n+1)+A215259(n)+A001489(n)`
-/

namespace A187284.P9222090465088140143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A215259 n + A001489 n)

end

end A187284.P9222090465088140143

namespace A187284

/-- `A000038(n+1)+A215259(n)+A001489(n)` -/
def P9222090465088140143.Spec : Prop :=
  ∀ n, P9222090465088140143.a n = A187284 n

theorem P9222090465088140143.correct : P9222090465088140143.Spec := by
  intro n
  simp only [A187284, Nat.add_sub_cancel, A187284.P9222090465088140143.a, A187284.P2001770761397353711.a, A000038, A000038.P13734959004655594922.a, A001489, A001489.P15233530513763566776.a, A003418, A003418.P6976248655893080794.a, A215259, A215259.P940527813139096403.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187284

/-! ## A187284.P3175640183721065090

`(A215259(n)+A001489(n))*A000120(A006519(n+1))`
-/

namespace A187284.P3175640183721065090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215259 n + A001489 n) * A000120 (A006519 (n + 1)).toNat

end

end A187284.P3175640183721065090

namespace A187284

/-- `(A215259(n)+A001489(n))*A000120(A006519(n+1))` -/
def P3175640183721065090.Spec : Prop :=
  ∀ n, P3175640183721065090.a n = A187284 n

end A187284

/-! ## A187284.P16939689826313949689

`A000007(2*n+3)+A215259(n)+A001489(n)`
-/

namespace A187284.P16939689826313949689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 3) + (A215259 n + A001489 n)

end

end A187284.P16939689826313949689

namespace A187284

/-- `A000007(2*n+3)+A215259(n)+A001489(n)` -/
def P16939689826313949689.Spec : Prop :=
  ∀ n, P16939689826313949689.a n = A187284 n

theorem P16939689826313949689.correct : P16939689826313949689.Spec := by
  intro n
  simp only [A187284, Nat.add_sub_cancel, A187284.P16939689826313949689.a, A187284.P2001770761397353711.a, A000007, A000007.P6599383543502402472.a, A001489, A001489.P15233530513763566776.a, A003418, A003418.P6976248655893080794.a, A215259, A215259.P940527813139096403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187284

/-! ## A187284.P1299370835225447319

`round(log(A075059(n)-1))-n`
-/

namespace A187284.P1299370835225447319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A075059 n - 1 : ℝ)) - (n : ℤ)

end

end A187284.P1299370835225447319

namespace A187284

/-- `round(log(A075059(n)-1))-n` -/
def P1299370835225447319.Spec : Prop :=
  ∀ n, P1299370835225447319.a n = A187284 n

theorem P1299370835225447319.correct : P1299370835225447319.Spec := by
  intro n
  simp only [A187284, Nat.add_sub_cancel, A187284.P1299370835225447319.a, A187284.P2001770761397353711.a, A003418, A003418.P6976248655893080794.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187284

/-! ## A187284.P12199978280112624702

`round(log(∏[A014963(n+1-(n+2)%(n+1))]))-n`
-/

namespace A187284.P12199978280112624702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1 - (n + 2) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)) - (n : ℤ)

end

end A187284.P12199978280112624702

namespace A187284

/-- `round(log(∏[A014963(n+1-(n+2)%(n+1))]))-n` -/
def P12199978280112624702.Spec : Prop :=
  ∀ n, P12199978280112624702.a n = A187284 n

end A187284

/-! ## A187284.P14327258987849769313

`round(A001489(n)+log(A003418(n)))`
-/

namespace A187284.P14327258987849769313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001489 n : ℝ) + Real.log (A003418 n : ℝ))

end

end A187284.P14327258987849769313

namespace A187284

/-- `round(A001489(n)+log(A003418(n)))` -/
def P14327258987849769313.Spec : Prop :=
  ∀ n, P14327258987849769313.a n = A187284 n

end A187284

/-! ## A187284.P17482776481172311684

`round(log(A002944(n+1)*A048671(n+1)))-n`
-/

namespace A187284.P17482776481172311684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A002944 (n + 1) * A048671 (n + 1) : ℝ)) - (n : ℤ)

end

end A187284.P17482776481172311684

namespace A187284

/-- `round(log(A002944(n+1)*A048671(n+1)))-n` -/
def P17482776481172311684.Spec : Prop :=
  ∀ n, P17482776481172311684.a n = A187284 n

end A187284

/-!
# A187285: Smallest multiple of n beginning with 1.

The programs for A187285, the canonical program `A187285.P11288562697878379650` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187285 has offset 1).

The definition of A187285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187285.P15704554832043768679

`(n+1)*A190302(n+1)`
-/

namespace A187285.P15704554832043768679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A190302 (n + 1)

end

end A187285.P15704554832043768679

namespace A187285

/-- `(n+1)*A190302(n+1)` -/
def P15704554832043768679.Spec : Prop :=
  ∀ n, P15704554832043768679.a n = A187285 (n + 1)

end A187285

/-! ## A187285.P11288562697878379650

`(n+1)*A097327(n+1)%(A000030(n+1)*A097326(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A187285

/-- `(n+1)*A097327(n+1)%(A000030(n+1)*A097326(n+1))` -/
def P11288562697878379650.Spec : Prop :=
  ∀ n, P11288562697878379650.a n = A187285 (n + 1)

theorem P11288562697878379650.correct : P11288562697878379650.Spec := by
  intro n
  simp only [A187285, Nat.add_sub_cancel]

end A187285

/-! ## A187285.P18049656528715696298

`A304042(A317167(n+2))*A317180(n+1)`
-/

namespace A187285.P18049656528715696298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A317167 (n + 2)).toNat * A317180 (n + 1)

end

end A187285.P18049656528715696298

namespace A187285

/-- `A304042(A317167(n+2))*A317180(n+1)` -/
def P18049656528715696298.Spec : Prop :=
  ∀ n, P18049656528715696298.a n = A187285 (n + 1)

end A187285

/-! ## A187285.P11814829331505800131

`A258280(n²)*A317180(n+1)`
-/

namespace A187285.P11814829331505800131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (n ^ 2) * A317180 (n + 1)

end

end A187285.P11814829331505800131

namespace A187285

/-- `A258280(n²)*A317180(n+1)` -/
def P11814829331505800131.Spec : Prop :=
  ∀ n, P11814829331505800131.a n = A187285 (n + 1)

end A187285

/-! ## A187285.P2594081146925745675

`A317180(n+1)%A308766(n+5)`
-/

namespace A187285.P2594081146925745675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317180 (n + 1)) (A308766 (n + 5))

end

end A187285.P2594081146925745675

namespace A187285

/-- `A317180(n+1)%A308766(n+5)` -/
def P2594081146925745675.Spec : Prop :=
  ∀ n, P2594081146925745675.a n = A187285 (n + 1)

end A187285

/-!
# A187286: T(n,k) = number of n-step one or two space at a time rook's tours on a k X k board summed over all starting positions.

The programs for A187286, there is no canonical definition to state claims against.
-/

/-! ## A187286.P15847793261302974557

`A118759(A059268(n)*A187296(n+1))`
-/

namespace A187286.P15847793261302974557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A059268 n * A187296 (n + 1)).toNat

end

end A187286.P15847793261302974557

/-! ## A187286.P2529689565177569040

`A187279(A112360(n))*A187296(n+1)`
-/

namespace A187286.P2529689565177569040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187279 (A112360 n).toNat * A187296 (n + 1)

end

end A187286.P2529689565177569040

/-! ## A187286.P15546207761520568201

`A118759(A187296(n+1)*A327844(n+1))`
-/

namespace A187286.P15546207761520568201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A187296 (n + 1) * A327844 (n + 1)).toNat

end

end A187286.P15546207761520568201

/-!
# A187287: Number of 2-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187287, the canonical program `A187287.P3348224729035587621` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187287 has offset 1).

The definition of A187287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187287.P3348224729035587621

`(n+1)*record[lcm(4, n)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187287

/-- `(n+1)*record[lcm(4, n)]` -/
def P3348224729035587621.Spec : Prop :=
  ∀ n, (P3348224729035587621.a n : ℤ) = A187287 (n + 1)

theorem P3348224729035587621.correct : P3348224729035587621.Spec := by
  intro n
  simp only [A187287, Nat.add_sub_cancel]

end A187287

/-! ## A187287.P7001200236904581202

`record[n*(8*n-12)]`
-/

namespace A187287.P7001200236904581202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((8 * n : ℤ) - 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187287.P7001200236904581202

namespace A187287

/-- `record[n*(8*n-12)]` -/
def P7001200236904581202.Spec : Prop :=
  ∀ n, P7001200236904581202.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P7090060919565676842

`∑[a(n-1)+16]` with `a(0)=0, a(1)=8, a(2)=28`
-/

namespace A187287.P7090060919565676842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 28] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187287.P7090060919565676842

namespace A187287

/-- `∑[a(n-1)+16]` -/
def P7090060919565676842.Spec : Prop :=
  ∀ n, (P7090060919565676842.a n : ℤ) = A187287 (n + 1)

end A187287

/-! ## A187287.P13860096138997793875

`4*floor(n*sqrt(∑[8*n]))`
-/

namespace A187287.P13860096138997793875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n : ℝ) * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A187287.P13860096138997793875

namespace A187287

/-- `4*floor(n*sqrt(∑[8*n]))` -/
def P13860096138997793875.Spec : Prop :=
  ∀ n, P13860096138997793875.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P16745108201230108754

`ogf((8x+12x^2-4x^3)/(1-3x+3x^2-x^3))`
-/

namespace A187287.P16745108201230108754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 12, -4] [1, -3, 3, -1] n

end

end A187287.P16745108201230108754

namespace A187287

/-- `ogf((8x+12x^2-4x^3)/(1-3x+3x^2-x^3))` -/
def P16745108201230108754.Spec : Prop :=
  ∀ n, P16745108201230108754.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P12520496244151046107

`∑[record[4*xor(n, 3%(n+1))]]`
-/

namespace A187287.P12520496244151046107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor n (3 % (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187287.P12520496244151046107

namespace A187287

/-- `∑[record[4*xor(n, 3%(n+1))]]` -/
def P12520496244151046107.Spec : Prop :=
  ∀ n, (P12520496244151046107.a n : ℤ) = A187287 (n + 1)

end A187287

/-! ## A187287.P13690701978138417949

`lcm(2, 1-(2*n+1)*2*n)-2`
-/

namespace A187287.P13690701978138417949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - ((2 * n + 1) * (2 * n) : ℤ)) : ℤ) - 2

end

end A187287.P13690701978138417949

namespace A187287

/-- `lcm(2, 1-(2*n+1)*2*n)-2` -/
def P13690701978138417949.Spec : Prop :=
  ∀ n, P13690701978138417949.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P2020336564904129520

`ceil(8*((n-1)*ceil(atan(n+1))+1)*(n+1)/2)`
-/

namespace A187287.P2020336564904129520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈8 * (((((n : ℤ) - 1) * ⌈Real.arctan (n + 1 : ℝ)⌉ + 1) * (n + 1 : ℤ) : ℚ) / 2)⌉

end

end A187287.P2020336564904129520

namespace A187287

/-- `ceil(8*((n-1)*ceil(atan(n+1))+1)*(n+1)/2)` -/
def P2020336564904129520.Spec : Prop :=
  ∀ n, P2020336564904129520.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P5517427420862319577

`abs(2-A033586(n))-2`
-/

namespace A187287.P5517427420862319577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A033586 n| - 2

end

end A187287.P5517427420862319577

namespace A187287

/-- `abs(2-A033586(n))-2` -/
def P5517427420862319577.Spec : Prop :=
  ∀ n, P5517427420862319577.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P9380412216550719894

`A187297(n+1)+A187297(n+1)`
-/

namespace A187287.P9380412216550719894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187297 (n + 1) + A187297 (n + 1)

end

end A187287.P9380412216550719894

namespace A187287

/-- `A187297(n+1)+A187297(n+1)` -/
def P9380412216550719894.Spec : Prop :=
  ∀ n, P9380412216550719894.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P11371814662982725668

`A187190(n+1)/A179865(n+1)`
-/

namespace A187287.P11371814662982725668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187190 (n + 1) : ℚ) / (A179865 (n + 1) : ℚ)

end

end A187287.P11371814662982725668

namespace A187287

/-- `A187190(n+1)/A179865(n+1)` -/
def P11371814662982725668.Spec : Prop :=
  ∀ n, P11371814662982725668.a n = (A187287 (n + 1) : ℚ)

end A187287

/-! ## A187287.P5033684617200161193

`A130824(n)+A004273(n)*A016825(n)`
-/

namespace A187287.P5033684617200161193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A004273 n * A016825 n

end

end A187287.P5033684617200161193

namespace A187287

/-- `A130824(n)+A004273(n)*A016825(n)` -/
def P5033684617200161193.Spec : Prop :=
  ∀ n, P5033684617200161193.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P14402200807142071310

`A130824(n)+A004273(n+1)*A130824(n)`
-/

namespace A187287.P14402200807142071310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A004273 (n + 1) * A130824 n

end

end A187287.P14402200807142071310

namespace A187287

/-- `A130824(n)+A004273(n+1)*A130824(n)` -/
def P14402200807142071310.Spec : Prop :=
  ∀ n, P14402200807142071310.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P16670822799244973586

`A187173(n+3)-A033996(n)`
-/

namespace A187287.P16670822799244973586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187173 (n + 3) - A033996 n

end

end A187287.P16670822799244973586

namespace A187287

/-- `A187173(n+3)-A033996(n)` -/
def P16670822799244973586.Spec : Prop :=
  ∀ n, P16670822799244973586.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P14638804939124392740

`A139570(A004273(n))`
-/

namespace A187287.P14638804939124392740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 (A004273 n).toNat

end

end A187287.P14638804939124392740

namespace A187287

/-- `A139570(A004273(n))` -/
def P14638804939124392740.Spec : Prop :=
  ∀ n, P14638804939124392740.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P3520886500424999749

`A106232(2*n+1)-4`
-/

namespace A187287.P3520886500424999749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 (2 * n + 1) - 4

end

end A187287.P3520886500424999749

namespace A187287

/-- `A106232(2*n+1)-4` -/
def P3520886500424999749.Spec : Prop :=
  ∀ n, P3520886500424999749.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P923428346624158792

`A265056(n)+A000466(n)`
-/

namespace A187287.P923428346624158792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n + A000466 n

end

end A187287.P923428346624158792

namespace A187287

/-- `A265056(n)+A000466(n)` -/
def P923428346624158792.Spec : Prop :=
  ∀ n, P923428346624158792.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P18389623588559624786

`A265056(n)+A060747(n+1)*A060747(n)`
-/

namespace A187287.P18389623588559624786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n + A060747 (n + 1) * A060747 n

end

end A187287.P18389623588559624786

namespace A187287

/-- `A265056(n)+A060747(n+1)*A060747(n)` -/
def P18389623588559624786.Spec : Prop :=
  ∀ n, P18389623588559624786.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P8490607037086227620

`A326658(A131098(n+1))`
-/

namespace A187287.P8490607037086227620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A131098 (n + 1)).toNat

end

end A187287.P8490607037086227620

namespace A187287

/-- `A326658(A131098(n+1))` -/
def P8490607037086227620.Spec : Prop :=
  ∀ n, P8490607037086227620.a n = A187287 (n + 1)

end A187287

/-! ## A187287.P8766047893110935607

`A060577(4*n)-(2*n+1)`
-/

namespace A187287.P8766047893110935607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060577 (4 * n) - (2 * n + 1 : ℤ)

end

end A187287.P8766047893110935607

namespace A187287

/-- `A060577(4*n)-(2*n+1)` -/
def P8766047893110935607.Spec : Prop :=
  ∀ n, P8766047893110935607.a n = A187287 (n + 1)

end A187287

/-!
# A187288: Number of 3-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187288, the canonical program `A187288.P12993442842904796909` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187288 has offset 1).

The definition of A187288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187288.P12993442842904796909

`ogf((8x+84x^2+28x^3+4x^4-12x^5)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187288

/-- `ogf((8x+84x^2+28x^3+4x^4-12x^5)/(1-3x+3x^2-x^3))` -/
def P12993442842904796909.Spec : Prop :=
  ∀ n, P12993442842904796909.a n = A187288 (n + 1)

theorem P12993442842904796909.correct : P12993442842904796909.Spec := by
  intro n
  simp only [A187288, Nat.add_sub_cancel]

end A187288

/-! ## A187288.P14877990726365676164

`A187286(∑[n+2]+4)`
-/

namespace A187288.P14877990726365676164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187288.P14877990726365676164

namespace A187288

/-- `A187286(∑[n+2]+4)` -/
def P14877990726365676164.Spec : Prop :=
  ∀ n, P14877990726365676164.a n = A187288 (n + 1)

end A187288

/-! ## A187288.P2263618015344499313

`lcm(2, A187286(A167614(n+1)))`
-/

namespace A187288.P2263618015344499313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187286 (A167614 (n + 1)).toNat)

end

end A187288.P2263618015344499313

namespace A187288

/-- `lcm(2, A187286(A167614(n+1)))` -/
def P2263618015344499313.Spec : Prop :=
  ∀ n, (P2263618015344499313.a n : ℤ) = A187288 (n + 1)

end A187288

/-! ## A187288.P15358554270873135218

`A187286(A167614(n+1))+A025444(n)`
-/

namespace A187288.P15358554270873135218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167614 (n + 1)).toNat + A025444 n

end

end A187288.P15358554270873135218

namespace A187288

/-- `A187286(A167614(n+1))+A025444(n)` -/
def P15358554270873135218.Spec : Prop :=
  ∀ n, P15358554270873135218.a n = A187288 (n + 1)

end A187288

/-! ## A187288.P12464073553928463620

`A187286(A167614(n+1))+A185246(n)`
-/

namespace A187288.P12464073553928463620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167614 (n + 1)).toNat + A185246 n

end

end A187288.P12464073553928463620

namespace A187288

/-- `A187286(A167614(n+1))+A185246(n)` -/
def P12464073553928463620.Spec : Prop :=
  ∀ n, P12464073553928463620.a n = A187288 (n + 1)

end A187288

/-!
# A187289: Number of 4-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187289, the canonical program `A187289.P2110424577290768878` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187289 has offset 1).

The definition of A187289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187289.P2110424577290768878

`ogf((8x+264x^2+416x^3+172x^4-60x^5-20x^6-20x^7)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187289

/-- `ogf((8x+264x^2+416x^3+172x^4-60x^5-20x^6-20x^7)/(1-3x+3x^2-x^3))` -/
def P2110424577290768878.Spec : Prop :=
  ∀ n, P2110424577290768878.a n = A187289 (n + 1)

theorem P2110424577290768878.correct : P2110424577290768878.Spec := by
  intro n
  simp only [A187289, Nat.add_sub_cancel]

end A187289

/-! ## A187289.P17372832266890903363

`A187286(∑[n+3]+7)`
-/

namespace A187289.P17372832266890903363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187289.P17372832266890903363

namespace A187289

/-- `A187286(∑[n+3]+7)` -/
def P17372832266890903363.Spec : Prop :=
  ∀ n, P17372832266890903363.a n = A187289 (n + 1)

end A187289

/-! ## A187289.P14603371869776349230

`lcm(2, A187286(A167614(n+2)+1))`
-/

namespace A187289.P14603371869776349230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187286 (A167614 (n + 2) + 1).toNat)

end

end A187289.P14603371869776349230

namespace A187289

/-- `lcm(2, A187286(A167614(n+2)+1))` -/
def P14603371869776349230.Spec : Prop :=
  ∀ n, (P14603371869776349230.a n : ℤ) = A187289 (n + 1)

end A187289

/-! ## A187289.P4316647089078006687

`A187286(A055999(n)+10)*A242784(n)`
-/

namespace A187289.P4316647089078006687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A055999 n + 10).toNat * A242784 n

end

end A187289.P4316647089078006687

namespace A187289

/-- `A187286(A055999(n)+10)*A242784(n)` -/
def P4316647089078006687.Spec : Prop :=
  ∀ n, P4316647089078006687.a n = A187289 (n + 1)

end A187289

/-! ## A187289.P3215111372621620732

`A187286(A055999(n)+10)+A000007(n+1)`
-/

namespace A187289.P3215111372621620732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A055999 n + 10).toNat + A000007 (n + 1)

end

end A187289.P3215111372621620732

namespace A187289

/-- `A187286(A055999(n)+10)+A000007(n+1)` -/
def P3215111372621620732.Spec : Prop :=
  ∀ n, P3215111372621620732.a n = A187289 (n + 1)

end A187289

/-!
# A187290: Number of 5-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187290, there is no canonical definition to state claims against.
-/

/-! ## A187290.P2651656524565194534

`A187286(A167499(n+3))`
-/

namespace A187290.P2651656524565194534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167499 (n + 3)).toNat

end

end A187290.P2651656524565194534

/-! ## A187290.P14003815843145429990

`A187286(A155212(n)+13)`
-/

namespace A187290.P14003815843145429990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A155212 n + 13).toNat

end

end A187290.P14003815843145429990

/-! ## A187290.P17170002123721181318

`A187286(A056000(n)+15)`
-/

namespace A187290.P17170002123721181318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A056000 n + 15).toNat

end

end A187290.P17170002123721181318

/-! ## A187290.P4949153674979346011

`A187286(eq[7, A066657(n)])`
-/

namespace A187290.P4949153674979346011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187290.P4949153674979346011

/-! ## A187290.P13458840969639826527

`A187286(A167614(n+3)+2)`
-/

namespace A187290.P13458840969639826527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167614 (n + 3) + 2).toNat

end

end A187290.P13458840969639826527

/-!
# A187291: Number of 6-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187291, there is no canonical definition to state claims against.
-/

/-! ## A187291.P7000825764211865056

`A187286(A166136(n+4))`
-/

namespace A187291.P7000825764211865056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A166136 (n + 4)).toNat

end

end A187291.P7000825764211865056

/-! ## A187291.P17439495932167380870

`A187286(A056115(n)+21)`
-/

namespace A187291.P17439495932167380870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A056115 n + 21).toNat

end

end A187291.P17439495932167380870

/-! ## A187291.P391795149183314798

`A187286(A167499(n+4)+1)`
-/

namespace A187291.P391795149183314798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167499 (n + 4) + 1).toNat

end

end A187291.P391795149183314798

/-! ## A187291.P728790937463145572

`A187286(A077169(n+6)+1)`
-/

namespace A187291.P728790937463145572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A077169 (n + 6) + 1).toNat

end

end A187291.P728790937463145572

/-! ## A187291.P5155878143648265606

`A187286(A167614(n+4)+3)`
-/

namespace A187291.P5155878143648265606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167614 (n + 4) + 3).toNat

end

end A187291.P5155878143648265606

/-!
# A187292: Number of 7-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187292, there is no canonical definition to state claims against.
-/

/-! ## A187292.P11860049928137974442

`A187286(A167487(n+5))`
-/

namespace A187292.P11860049928137974442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167487 (n + 5)).toNat

end

end A187292.P11860049928137974442

/-! ## A187292.P13986657288789141731

`A187286(A056119(n)+28)`
-/

namespace A187292.P13986657288789141731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A056119 n + 28).toNat

end

end A187292.P13986657288789141731

/-! ## A187292.P8444393309838283749

`A187286(eq[11, A066657(n)])`
-/

namespace A187292.P8444393309838283749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187292.P8444393309838283749

/-! ## A187292.P12537057470295158706

`A187286(A167614(n+5)+4)`
-/

namespace A187292.P12537057470295158706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167614 (n + 5) + 4).toNat

end

end A187292.P12537057470295158706

/-! ## A187292.P14917663424663016172

`A187286(A000096(n+5)+8)`
-/

namespace A187292.P14917663424663016172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A000096 (n + 5) + 8).toNat

end

end A187292.P14917663424663016172

/-!
# A187293: Number of 8-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187293, there is no canonical definition to state claims against.
-/

/-! ## A187293.P17564101158019523069

`A187286(eq[13, A066657(n)])`
-/

namespace A187293.P17564101158019523069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187293.P17564101158019523069

/-! ## A187293.P18181314221673946840

`A187286(A167487(n+6)+1)`
-/

namespace A187293.P18181314221673946840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A167487 (n + 6) + 1).toNat

end

end A187293.P18181314221673946840

/-! ## A187293.P16424177251823709197

`A187286(A000124(n+7)+7)`
-/

namespace A187293.P16424177251823709197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A000124 (n + 7) + 7).toNat

end

end A187293.P16424177251823709197

/-! ## A187293.P1860544611268466425

`A187286(A052905(n+4)+13)`
-/

namespace A187293.P1860544611268466425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A052905 (n + 4) + 13).toNat

end

end A187293.P1860544611268466425

/-!
# A187294: Number of 9-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187294, there is no canonical definition to state claims against.
-/

/-! ## A187294.P6489070160372007979

`A187286(eq[17, A066657(n)])`
-/

namespace A187294.P6489070160372007979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187294.P6489070160372007979

/-! ## A187294.P9623097685053700464

`A187286(A168108(n)-n)`
-/

namespace A187294.P9623097685053700464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A168108 n - (n : ℤ)).toNat

end

end A187294.P9623097685053700464

/-! ## A187294.P16043738868223801624

`A187286(A000096(n+7)+10)`
-/

namespace A187294.P16043738868223801624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A000096 (n + 7) + 10).toNat

end

end A187294.P16043738868223801624

/-!
# A187295: Number of 10-step one or two space at a time rook's tours on an n X n board summed over all starting positions.

The programs for A187295, there is no canonical definition to state claims against.
-/

/-! ## A187295.P12037087794115042522

`A187286(A168108(n)+10)`
-/

namespace A187295.P12037087794115042522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (A168108 n + 10).toNat

end

end A187295.P12037087794115042522

/-! ## A187295.P12766553685841791099

`A187286(eq[18, A066657(n)])`
-/

namespace A187295.P12766553685841791099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187286 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187295.P12766553685841791099

/-!
# A187296: T(n,k)=Number of n-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on a kXk board summed over all starting positions.

The programs for A187296, there is no canonical definition to state claims against.
-/

/-! ## A187296.P123404635588732000

`A187155(n+1)+A046080(A022186(n))`
-/

namespace A187296.P123404635588732000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187155 (n + 1) + A046080 (A022186 n).toNat

end

end A187296.P123404635588732000

/-! ## A187296.P2731497887893158779

`A187286(A043317(n+1))/A059268(n)`
-/

namespace A187296.P2731497887893158779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187286 (A043317 (n + 1)).toNat : ℚ) / (A059268 n : ℚ)

end

end A187296.P2731497887893158779

/-! ## A187296.P1694367554450237365

`A118759(A187286(n+1))/A059268(n)`
-/

namespace A187296.P1694367554450237365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118759 (A187286 (n + 1)).toNat : ℚ) / (A059268 n : ℚ)

end

end A187296.P1694367554450237365

/-! ## A187296.P2431790917722954769

`A187286(n+1)/A187279(A112360(n))`
-/

namespace A187296.P2431790917722954769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187286 (n + 1) : ℚ) / (A187279 (A112360 n).toNat : ℚ)

end

end A187296.P2431790917722954769

/-! ## A187296.P13485599649233425001

`A187286(A043317(n+1))/A327844(n+1)`
-/

namespace A187296.P13485599649233425001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187286 (A043317 (n + 1)).toNat : ℚ) / (A327844 (n + 1) : ℚ)

end

end A187296.P13485599649233425001

/-!
# A187297: Number of 2-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187297, the canonical program `A187297.P9089326098238173384` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187297 has offset 1).

The definition of A187297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187297.P9089326098238173384

`ogf((4x+6x^2-2x^3)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187297

/-- `ogf((4x+6x^2-2x^3)/(1-3x+3x^2-x^3))` -/
def P9089326098238173384.Spec : Prop :=
  ∀ n, P9089326098238173384.a n = A187297 (n + 1)

theorem P9089326098238173384.correct : P9089326098238173384.Spec := by
  intro n
  simp only [A187297, Nat.add_sub_cancel]

end A187297

/-! ## A187297.P2659530986601734473

`(n+1)*record[lcm(2, n)]`
-/

namespace A187297.P2659530986601734473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187297.P2659530986601734473

namespace A187297

/-- `(n+1)*record[lcm(2, n)]` -/
def P2659530986601734473.Spec : Prop :=
  ∀ n, (P2659530986601734473.a n : ℤ) = A187297 (n + 1)

end A187297

/-! ## A187297.P2877314162617628028

`record[n*xor(1, n-4)]`
-/

namespace A187297.P2877314162617628028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 ((n : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187297.P2877314162617628028

namespace A187297

/-- `record[n*xor(1, n-4)]` -/
def P2877314162617628028.Spec : Prop :=
  ∀ n, P2877314162617628028.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P3752986019582723149

`record[(2*n)²-6*n]`
-/

namespace A187297.P3752986019582723149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187297.P3752986019582723149

namespace A187297

/-- `record[(2*n)²-6*n]` -/
def P3752986019582723149.Spec : Prop :=
  ∀ n, P3752986019582723149.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P10726080752504606555

`∑[a(n-1)+8]` with `a(0)=0, a(1)=4, a(2)=14`
-/

namespace A187297.P10726080752504606555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 14] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187297.P10726080752504606555

namespace A187297

/-- `∑[a(n-1)+8]` -/
def P10726080752504606555.Spec : Prop :=
  ∀ n, (P10726080752504606555.a n : ℤ) = A187297 (n + 1)

end A187297

/-! ## A187297.P1569316418697881683

`2*record[n*(2*n-3)]`
-/

namespace A187297.P1569316418697881683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187297.P1569316418697881683

namespace A187297

/-- `2*record[n*(2*n-3)]` -/
def P1569316418697881683.Spec : Prop :=
  ∀ n, P1569316418697881683.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P12586212040211214984

`∑[ogf((4x+6x^2-2x^3)/(1-2x+x^2))]`
-/

namespace A187297.P12586212040211214984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 6, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187297.P12586212040211214984

namespace A187297

/-- `∑[ogf((4x+6x^2-2x^3)/(1-2x+x^2))]` -/
def P12586212040211214984.Spec : Prop :=
  ∀ n, P12586212040211214984.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P7268031591643661357

`8*n+a(n-1)-2` with `a(0)=0, a(1)=4`
-/

namespace A187297.P7268031591643661357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 2)

end

end A187297.P7268031591643661357

namespace A187297

/-- `8*n+a(n-1)-2` -/
def P7268031591643661357.Spec : Prop :=
  ∀ n, P7268031591643661357.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P1643593931338832983

`8*n-(2-a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A187297.P1643593931338832983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  (8 * n : ℤ) - (2 - a (n - 1))

end

end A187297.P1643593931338832983

namespace A187297

/-- `8*n-(2-a(n-1))` -/
def P1643593931338832983.Spec : Prop :=
  ∀ n, P1643593931338832983.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P15293627753818609090

`2*(n+1)*comp[2*(n+1)]`
-/

namespace A187297.P15293627753818609090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A187297.P15293627753818609090

namespace A187297

/-- `2*(n+1)*comp[2*(n+1)]` -/
def P15293627753818609090.Spec : Prop :=
  ∀ n, (P15293627753818609090.a n : ℤ) = A187297 (n + 1)

end A187297

/-! ## A187297.P11793942080265894651

`floor((2*n+1-acot(n))*2*n)`
-/

namespace A187297.P11793942080265894651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) * (2 * n : ℝ)⌋

end

end A187297.P11793942080265894651

namespace A187297

/-- `floor((2*n+1-acot(n))*2*n)` -/
def P11793942080265894651.Spec : Prop :=
  ∀ n, P11793942080265894651.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P6331191561693501176

`round((2*n+1-acot(n))*2*n)`
-/

namespace A187297.P6331191561693501176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) * (2 * n : ℝ))

end

end A187297.P6331191561693501176

namespace A187297

/-- `round((2*n+1-acot(n))*2*n)` -/
def P6331191561693501176.Spec : Prop :=
  ∀ n, P6331191561693501176.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P10414494037081716561

`xor(1, abs(1-(2*n+1)*2*n))`
-/

namespace A187297.P10414494037081716561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |1 - ((2 * n + 1) * (2 * n) : ℤ)|

end

end A187297.P10414494037081716561

namespace A187297

/-- `xor(1, abs(1-(2*n+1)*2*n))` -/
def P10414494037081716561.Spec : Prop :=
  ∀ n, P10414494037081716561.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P16846270539232849365

`(2*n)²+2*(2*n)%(n+1)`
-/

namespace A187297.P16846270539232849365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 2 * (2 * n % (n + 1))

end

end A187297.P16846270539232849365

namespace A187297

/-- `(2*n)²+2*(2*n)%(n+1)` -/
def P16846270539232849365.Spec : Prop :=
  ∀ n, (P16846270539232849365.a n : ℤ) = A187297 (n + 1)

end A187297

/-! ## A187297.P14077033519289752141

`floor((2*n+1)*2*n-atan(2*n))`
-/

namespace A187297.P14077033519289752141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) * (2 * n) : ℝ) - Real.arctan (2 * n : ℝ)⌋

end

end A187297.P14077033519289752141

namespace A187297

/-- `floor((2*n+1)*2*n-atan(2*n))` -/
def P14077033519289752141.Spec : Prop :=
  ∀ n, P14077033519289752141.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P13612011045158229145

`lcm(2*n+1, 1-2*n)+2*n-1`
-/

namespace A187297.P13612011045158229145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n + 1 : ℤ) (1 - (2 * n : ℤ)) : ℤ) + ((2 * n : ℤ) - 1)

end

end A187297.P13612011045158229145

namespace A187297

/-- `lcm(2*n+1, 1-2*n)+2*n-1` -/
def P13612011045158229145.Spec : Prop :=
  ∀ n, P13612011045158229145.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P4091042432293019236

`C(2, 2*n+1)+(2*n+1)*2*n-2`
-/

namespace A187297.P4091042432293019236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (2 * n + 1) : ℤ) + (((2 * n + 1) * (2 * n) : ℤ) - 2)

end

end A187297.P4091042432293019236

namespace A187297

/-- `C(2, 2*n+1)+(2*n+1)*2*n-2` -/
def P4091042432293019236.Spec : Prop :=
  ∀ n, P4091042432293019236.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P3726255092163994557

`A187287(n+1)/2`
-/

namespace A187297.P3726255092163994557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187287 (n + 1) : ℚ) / 2

end

end A187297.P3726255092163994557

namespace A187297

/-- `A187287(n+1)/2` -/
def P3726255092163994557.Spec : Prop :=
  ∀ n, P3726255092163994557.a n = (A187297 (n + 1) : ℚ)

end A187297

/-! ## A187297.P10403815328716273685

`abs(A125202(n+1))-1`
-/

namespace A187297.P10403815328716273685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125202 (n + 1)| - 1

end

end A187297.P10403815328716273685

namespace A187297

/-- `abs(A125202(n+1))-1` -/
def P10403815328716273685.Spec : Prop :=
  ∀ n, P10403815328716273685.a n = A187297 (n + 1)

end A187297

/-! ## A187297.P4137532844137873218

`abs(1-A002943(n))-1`
-/

namespace A187297.P4137532844137873218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A002943 n| - 1

end

end A187297.P4137532844137873218

namespace A187297

/-- `abs(1-A002943(n))-1` -/
def P4137532844137873218.Spec : Prop :=
  ∀ n, P4137532844137873218.a n = A187297 (n + 1)

end A187297

/-!
# A187298: Number of 3-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187298, the canonical program `A187298.P5574628051215810590` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187298 has offset 1).

The definition of A187298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187298.P7521756358691191593

`ogf((2x+30x^2-4x^3+10x^4-6x^5)/(1-3x+3x^2-x^3))`
-/

namespace A187298.P7521756358691191593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 30, -4, 10, -6] [1, -3, 3, -1] n

end

end A187298.P7521756358691191593

namespace A187298

/-- `ogf((2x+30x^2-4x^3+10x^4-6x^5)/(1-3x+3x^2-x^3))` -/
def P7521756358691191593.Spec : Prop :=
  ∀ n, P7521756358691191593.a n = A187298 (n + 1)

end A187298

/-! ## A187298.P5574628051215810590

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=36, a(3)=98, a(4)=198, a(5)=330`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187298

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5574628051215810590.Spec : Prop :=
  ∀ n, P5574628051215810590.a n = A187298 (n + 1)

theorem P5574628051215810590.correct : P5574628051215810590.Spec := by
  intro n
  simp only [A187298, Nat.add_sub_cancel]

end A187298

/-! ## A187298.P13884866720429796940

`A187296(∑[n+2]+4)`
-/

namespace A187298.P13884866720429796940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187298.P13884866720429796940

namespace A187298

/-- `A187296(∑[n+2]+4)` -/
def P13884866720429796940.Spec : Prop :=
  ∀ n, P13884866720429796940.a n = A187298 (n + 1)

end A187298

/-! ## A187298.P5985596307554227463

`lcm(2, A187296(A167614(n+1)))`
-/

namespace A187298.P5985596307554227463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187296 (A167614 (n + 1)).toNat)

end

end A187298.P5985596307554227463

namespace A187298

/-- `lcm(2, A187296(A167614(n+1)))` -/
def P5985596307554227463.Spec : Prop :=
  ∀ n, (P5985596307554227463.a n : ℤ) = A187298 (n + 1)

end A187298

/-! ## A187298.P847032519746897458

`A187296(A167614(n+1))+A185284(n)`
-/

namespace A187298.P847032519746897458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (A167614 (n + 1)).toNat + A185284 n

end

end A187298.P847032519746897458

namespace A187298

/-- `A187296(A167614(n+1))+A185284(n)` -/
def P847032519746897458.Spec : Prop :=
  ∀ n, P847032519746897458.a n = A187298 (n + 1)

end A187298

/-!
# A187299: Number of 4-step one space leftwards or up, two space rightwards or down asymmetric rook's tours on an n X n board summed over all starting positions.

The programs for A187299, the canonical program `A187299.P10630089049672212475` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187299 has offset 1).

The definition of A187299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187299.P10630089049672212475

`ogf((54x^2+34x^3+54x^4-30x^5+14x^6-10x^7)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187299

/-- `ogf((54x^2+34x^3+54x^4-30x^5+14x^6-10x^7)/(1-3x+3x^2-x^3))` -/
def P10630089049672212475.Spec : Prop :=
  ∀ n, P10630089049672212475.a n = A187299 (n + 1)

theorem P10630089049672212475.correct : P10630089049672212475.Spec := by
  intro n
  simp only [A187299, Nat.add_sub_cancel]

end A187299

/-! ## A187299.P8584496206387590126

`A187296(∑[n+3]+7)`
-/

namespace A187299.P8584496206387590126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187296 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187299.P8584496206387590126

namespace A187299

/-- `A187296(∑[n+3]+7)` -/
def P8584496206387590126.Spec : Prop :=
  ∀ n, P8584496206387590126.a n = A187299 (n + 1)

end A187299

/-! ## A187299.P695478404432153173

`lcm(2, A187296(A000096(n+2)+5))`
-/

namespace A187299.P695478404432153173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187296 (A000096 (n + 2) + 5).toNat)

end

end A187299.P695478404432153173

namespace A187299

/-- `lcm(2, A187296(A000096(n+2)+5))` -/
def P695478404432153173.Spec : Prop :=
  ∀ n, (P695478404432153173.a n : ℤ) = A187299 (n + 1)

end A187299

/-! ## A187299.P13287620770588080980

`A187296(A052905(n)+9)%A002025(n+1)`
-/

namespace A187299.P13287620770588080980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187296 (A052905 n + 9).toNat) (A002025 (n + 1))

end

end A187299.P13287620770588080980

namespace A187299

/-- `A187296(A052905(n)+9)%A002025(n+1)` -/
def P13287620770588080980.Spec : Prop :=
  ∀ n, P13287620770588080980.a n = A187299 (n + 1)

end A187299

/-! ## A187299.P10242900920811264723

`char[A007318(n)]*A187296(A000096(n+2)+5)`
-/

namespace A187299.P10242900920811264723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A187296 (A000096 (n + 2) + 5).toNat

end

end A187299.P10242900920811264723

namespace A187299

/-- `char[A007318(n)]*A187296(A000096(n+2)+5)` -/
def P10242900920811264723.Spec : Prop :=
  ∀ n, P10242900920811264723.a n = A187299 (n + 1)

end A187299

