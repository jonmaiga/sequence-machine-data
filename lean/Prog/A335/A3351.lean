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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A335100: Perimeters of Heronian triangles with at least one square side length.

The programs for A335100, there is no canonical definition to state claims against.
-/

/-! ## A335100.P11408433574292344637

`A334606(n+1)-A051516(A014137(n))`
-/

namespace A335100.P11408433574292344637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334606 (n + 1) - A051516 (A014137 n).toNat

end

end A335100.P11408433574292344637

/-! ## A335100.P4799094896446225142

`A334606(n+1)-A010894(A023105(n))`
-/

namespace A335100.P4799094896446225142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334606 (n + 1) - A010894 ((A023105 n).toNat + 21)

end

end A335100.P4799094896446225142

/-! ## A335100.P13089972265699810020

`A334606(n+1)-A010894(A314149(n))`
-/

namespace A335100.P13089972265699810020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334606 (n + 1) - A010894 ((A314149 n).toNat + 21)

end

end A335100.P13089972265699810020

/-! ## A335100.P1885851172410682536

`A334606(n+1)-A000122(A004809(n+2))`
-/

namespace A335100.P1885851172410682536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334606 (n + 1) - A000122 (A004809 (n + 2)).toNat

end

end A335100.P1885851172410682536

/-! ## A335100.P12938866072973011844

`A096468(lt[A001008(n+1), A063971(n+1)])`
-/

namespace A335100.P12938866072973011844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335100.P12938866072973011844

/-!
# A335102: Irregular triangle read by rows: consider the regular n-gon defined in A007678. T(n,k) (n >= 1, k >= 4+2*t where t>=0) is the number of non-boundary vertices in the n-gon at which k polygons meet.

The programs for A335102, there is no canonical definition to state claims against.
-/

/-! ## A335102.P4361364969792424490

`A292105(lt[A292105(n+1), A081166(n)])`
-/

namespace A335102.P4361364969792424490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292105 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335102.P4361364969792424490

/-!
# A335105: Irregular triangle read by rows in which row n lists the partial sums of shell numbers and respective number of electrons for all occupied shells of the n-th element of the periodic table of the elements.

The programs for A335105, there is no canonical definition to state claims against.
-/

/-! ## A335105.P17774915123426903482

`A350597(n+1)`
-/

namespace A335105.P17774915123426903482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350597 (n + 1)

end

end A335105.P17774915123426903482

/-! ## A335105.P1624217455286212400

`A053186(A227183(A227369(2*(n+1))))`
-/

namespace A335105.P1624217455286212400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A227183 (A227369 (2 * (n + 1))).toNat).toNat

end

end A335105.P1624217455286212400

/-! ## A335105.P8767010637966248914

`A053186(A227370(record[A227183(2*(n+1))]))`
-/

namespace A335105.P8767010637966248914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A227370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A335105.P8767010637966248914

/-! ## A335105.P9686893935386329164

`A227183(A227369(2*(n+1)))-A048760(2*n+1)`
-/

namespace A335105.P9686893935386329164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A227369 (2 * (n + 1))).toNat - A048760 (2 * n + 1)

end

end A335105.P9686893935386329164

/-!
# A335106: Irregular triangle T(n,k) is the number of times that prime(k) is the greatest part in a partition of n into prime parts; Triangle T(n,k), n>=0, 1 <= k <= max(1,A000720(A335285(n))), read by rows.

The programs for A335106, there is no canonical definition to state claims against.
-/

/-! ## A335106.P8221838290061360760

`A003983(A343503(A121207(n)))%A036038(n+1)`
-/

namespace A335106.P8221838290061360760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003983 (A343503 (A121207 n).toNat).toNat) (A036038 (n + 1))

end

end A335106.P8221838290061360760

/-! ## A335106.P10562364251205128290

`A003106(A049085(n))%A029542(n+1)`
-/

namespace A335106.P10562364251205128290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003106 (A049085 n).toNat) (A029542 (n + 1))

end

end A335106.P10562364251205128290

/-! ## A335106.P7545136290913609121

`A326032(A049085(n)%A319794(2*(n+1)))`
-/

namespace A335106.P7545136290913609121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 (Int.tmod (A049085 n) (A319794 (2 * (n + 1)))).toNat

end

end A335106.P7545136290913609121

/-! ## A335106.P12516128819936746250

`A072776(A160755(2*n+3))%A258152(n+1)`
-/

namespace A335106.P12516128819936746250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072776 (A160755 (2 * n + 3)).toNat) (A258152 (n + 1))

end

end A335106.P12516128819936746250

/-! ## A335106.P6952995780365768189

`A319443(A049085(n)^A303932(n+1))`
-/

namespace A335106.P6952995780365768189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319443 (SequenceMachineLib.roundAway ((A049085 n : ℚ) ^ (A303932 (n + 1) : ℤ))).toNat

end

end A335106.P6952995780365768189

/-!
# A335107: Least period of the length-n prefix of the Thue-Morse sequence A010060.

The programs for A335107, there is no canonical definition to state claims against.
-/

/-! ## A335107.P10274366950664746239

`2*a(floor(n/2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3, a(4)=3, a(5)=5`
-/

namespace A335107.P10274366950664746239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3, 3, 5] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A335107.P10274366950664746239

/-! ## A335107.P9384331507088557375

`lt[n, A054429(A057114(n+1))]+1-n`
-/

namespace A335107.P9384331507088557375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A057114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + (1 - (n : ℤ))

end

end A335107.P9384331507088557375

/-!
# A335108: Number of periods of the length-n prefix of the Thue-Morse sequence (A010060).

The programs for A335108, there is no canonical definition to state claims against.
-/

/-! ## A335108.P17784670423655162966

`A329320(A006068(Δ[n²]))`
-/

namespace A335108.P17784670423655162966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A006068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A335108.P17784670423655162966

/-! ## A335108.P14429534430450493683

`A329320(A268716(Δ[n²]))`
-/

namespace A335108.P14429534430450493683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A268716 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A335108.P14429534430450493683

/-! ## A335108.P10731884114124025499

`A329320(A268716(2*(n+1))-2)`
-/

namespace A335108.P10731884114124025499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A268716 (2 * (n + 1)) - 2).toNat

end

end A335108.P10731884114124025499

/-! ## A335108.P3524081959410619567

`A000035(A101671(n)+n)+a(floor(n/2))` with `a(0)=1`
-/

namespace A335108.P3524081959410619567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000035 (A101671 n + (n : ℤ)).toNat + a ⌊(n : ℚ) / 2⌋.toNat

end

end A335108.P3524081959410619567

/-! ## A335108.P3633610289898961591

`A329320(A006068(n))+A010059(n)`
-/

namespace A335108.P3633610289898961591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A006068 n).toNat + A010059 n

end

end A335108.P3633610289898961591

/-! ## A335108.P15818800499869802759

`A007302(or(A040001(n), A064707(n)))`
-/

namespace A335108.P15818800499869802759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (Int.lor (A040001 n) (A064707 n)).toNat

end

end A335108.P15818800499869802759

/-! ## A335108.P15966775034104147526

`A329320(or(A001285(n), A268716(n)))`
-/

namespace A335108.P15966775034104147526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (Int.lor (A001285 n) (A268716 n)).toNat

end

end A335108.P15966775034104147526

/-! ## A335108.P4104123852281241140

`A329320(or(A040001(n), A268716(n)))`
-/

namespace A335108.P4104123852281241140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (Int.lor (A040001 n) (A268716 n)).toNat

end

end A335108.P4104123852281241140

/-! ## A335108.P12700665685985185187

`A329320(2-(A001285(n)-A268716(n)))`
-/

namespace A335108.P12700665685985185187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (2 - (A001285 n - A268716 n)).toNat

end

end A335108.P12700665685985185187

/-! ## A335108.P16775562195882783918

`A007302(A064707(n)+or(2, A064707(n)))`
-/

namespace A335108.P16775562195882783918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A064707 n + Int.lor 2 (A064707 n)).toNat

end

end A335108.P16775562195882783918

/-!
# A335109: Triangle read by rows: T(n,k) is the number of permutations of length n with each cycle of the permutation containing only elements that are identical (mod k), where 1 <= k <= n.

The programs for A335109, there is no canonical definition to state claims against.
-/

/-! ## A335109.P18008706980458716246

`∑[char[∑[n]]]!/A248686(n+1)`
-/

namespace A335109.P18008706980458716246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A248686 (n + 1) : ℚ)

end

end A335109.P18008706980458716246

/-! ## A335109.P11057295987934508722

`Δ[A200748(n)]/A248686(n+1)`
-/

namespace A335109.P11057295987934508722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A248686 (n + 1) : ℚ)

end

end A335109.P11057295987934508722

/-! ## A335109.P10507664039102878763

`A130493(n+1)/A248686(n+1)`
-/

namespace A335109.P10507664039102878763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A248686 (n + 1) : ℚ)

end

end A335109.P10507664039102878763

/-! ## A335109.P2503372001876617416

`Δ[A051683(n+1)]/A248686(n+1)`
-/

namespace A335109.P2503372001876617416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A248686 (n + 1) : ℚ)

end

end A335109.P2503372001876617416

/-! ## A335109.P6745945862422773448

`round(∑[A010054(n)]!/A248686(n+1))`
-/

namespace A335109.P6745945862422773448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A248686 (n + 1) : ℚ))

end

end A335109.P6745945862422773448

/-! ## A335109.P18333678063952083369

`A028421(A127739(n+1))/A248686(n+1)`
-/

namespace A335109.P18333678063952083369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 (A127739 (n + 1)).toNat : ℚ) / (A248686 (n + 1) : ℚ)

end

end A335109.P18333678063952083369

/-! ## A335109.P2238933320608492421

`∏[A248686(A066182(n+1))/A248686(n+1)]`
-/

namespace A335109.P2238933320608492421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248686 (A066182 (n + 1)).toNat : ℚ) / (A248686 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A335109.P2238933320608492421

/-! ## A335109.P8016660125040527879

`A248686(A025581(n)+1+n)/A248686(n+1)`
-/

namespace A335109.P8016660125040527879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248686 (A025581 n + 1 + (n : ℤ)).toNat : ℚ) / (A248686 (n + 1) : ℚ)

end

end A335109.P8016660125040527879

/-!
# A335110: a(n) = Sum_{k=0..n} (Stirling1(n,k) mod 2) * k.

The programs for A335110, the canonical program `A335110.P6397140420705515931` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335110 has offset 0).

The definition of A335110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335110.P6397140420705515931

`floor((3*n+1)/2)*2^(A000120(floor(n/2))-1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A335110

/-- `floor((3*n+1)/2)*2^(A000120(floor(n/2))-1)` -/
def P6397140420705515931.Spec : Prop :=
  ∀ n, P6397140420705515931.a n = (A335110 n : ℚ)

end A335110

/-! ## A335110.P3925476947137804377

`ceil(3*n/2)*A060632(n)/2`
-/

namespace A335110.P3925476947137804377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈3 * ((n : ℚ) / 2)⌉ * A060632 n : ℚ) / 2

end

end A335110.P3925476947137804377

namespace A335110

/-- `ceil(3*n/2)*A060632(n)/2` -/
def P3925476947137804377.Spec : Prop :=
  ∀ n, P3925476947137804377.a n = (A335110 n : ℚ)

end A335110

/-! ## A335110.P7798597050375308953

`A007494(n)/2*A060632(n)`
-/

namespace A335110.P7798597050375308953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 n : ℚ) / 2 * (A060632 n : ℚ)

end

end A335110.P7798597050375308953

namespace A335110

/-- `A007494(n)/2*A060632(n)` -/
def P7798597050375308953.Spec : Prop :=
  ∀ n, P7798597050375308953.a n = (A335110 n : ℚ)

end A335110

/-! ## A335110.P12314587263360249904

`A014682(ceil(3*n/2)*A060632(n))`
-/

namespace A335110.P12314587263360249904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (⌈3 * ((n : ℚ) / 2)⌉ * A060632 n).toNat

end

end A335110.P12314587263360249904

namespace A335110

/-- `A014682(ceil(3*n/2)*A060632(n))` -/
def P12314587263360249904.Spec : Prop :=
  ∀ n, P12314587263360249904.a n = A335110 n

end A335110

/-! ## A335110.P996581131786381631

`A014682(A001316(or(1, n)-1)*ceil(3*n/2))`
-/

namespace A335110.P996581131786381631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001316 (Nat.lor 1 n - 1) * ⌈3 * ((n : ℚ) / 2)⌉).toNat

end

end A335110.P996581131786381631

namespace A335110

/-- `A014682(A001316(or(1, n)-1)*ceil(3*n/2))` -/
def P996581131786381631.Spec : Prop :=
  ∀ n, P996581131786381631.a n = A335110 n

end A335110

/-! ## A335110.P3521683016241248018

`A014682(A001316(or(1, n))/2*ceil(3*n/2))`
-/

namespace A335110.P3521683016241248018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A001316 (Nat.lor 1 n) : ℚ) / 2 * (⌈3 * ((n : ℚ) / 2)⌉ : ℚ))).toNat

end

end A335110.P3521683016241248018

namespace A335110

/-- `A014682(A001316(or(1, n))/2*ceil(3*n/2))` -/
def P3521683016241248018.Spec : Prop :=
  ∀ n, P3521683016241248018.a n = A335110 n

end A335110

/-! ## A335110.P7348282213052088683

`A004525(ceil(3*n/2)*A060632(n))`
-/

namespace A335110.P7348282213052088683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (⌈3 * ((n : ℚ) / 2)⌉ * A060632 n).toNat

end

end A335110.P7348282213052088683

namespace A335110

/-- `A004525(ceil(3*n/2)*A060632(n))` -/
def P7348282213052088683.Spec : Prop :=
  ∀ n, P7348282213052088683.a n = A335110 n

end A335110

/-! ## A335110.P956252484508177823

`A001281(A007494(n)*A060632(n))`
-/

namespace A335110.P956252484508177823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A007494 n * A060632 n).toNat

end

end A335110.P956252484508177823

namespace A335110

/-- `A001281(A007494(n)*A060632(n))` -/
def P956252484508177823.Spec : Prop :=
  ∀ n, P956252484508177823.a n = A335110 n

end A335110

/-! ## A335110.P4709575826606066397

`A004526(A007494(n)*A060632(n))`
-/

namespace A335110.P4709575826606066397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007494 n * A060632 n).toNat

end

end A335110.P4709575826606066397

namespace A335110

/-- `A004526(A007494(n)*A060632(n))` -/
def P4709575826606066397.Spec : Prop :=
  ∀ n, P4709575826606066397.a n = A335110 n

end A335110

/-! ## A335110.P13268630845195849716

`A025480(A007494(n)*A060632(n))`
-/

namespace A335110.P13268630845195849716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A007494 n * A060632 n).toNat

end

end A335110.P13268630845195849716

namespace A335110

/-- `A025480(A007494(n)*A060632(n))` -/
def P13268630845195849716.Spec : Prop :=
  ∀ n, P13268630845195849716.a n = A335110 n

end A335110

/-!
# A335111: a(n) = n! * Sum_{k=0..n-1} (-2)^k / k!.

The programs for A335111, the canonical program `A335111.P10838613545657729623` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335111 has offset 0).

The definition of A335111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335111.P10838613545657729623

`A000023(n)-A122803(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335111

/-- `A000023(n)-A122803(n)` -/
def P10838613545657729623.Spec : Prop :=
  ∀ n, P10838613545657729623.a n = A335111 n

theorem P10838613545657729623.correct : P10838613545657729623.Spec := by
  intro n
  simp only [A335111]

end A335111

/-! ## A335111.P15721472897150955585

`n*(a(n-1)+(-2)^(n-1))` with `a(0)=0`
-/

namespace A335111.P15721472897150955585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * (a (n - 1) + (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A335111.P15721472897150955585

namespace A335111

/-- `n*(a(n-1)+(-2)^(n-1))` -/
def P15721472897150955585.Spec : Prop :=
  ∀ n, P15721472897150955585.a n = (A335111 n : ℚ)

end A335111

/-! ## A335111.P1554899428492892495

`n*A000023(floor(n²/(n+1)))`
-/

namespace A335111.P1554899428492892495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000023 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A335111.P1554899428492892495

namespace A335111

/-- `n*A000023(floor(n²/(n+1)))` -/
def P1554899428492892495.Spec : Prop :=
  ∀ n, P1554899428492892495.a n = A335111 n

end A335111

/-! ## A335111.P11146543604740448192

`n*a(n-1)-A085750(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A335111.P11146543604740448192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * a (n - 1) - A085750 (n + 1)

end

end A335111.P11146543604740448192

namespace A335111

/-- `n*a(n-1)-A085750(n+1)` -/
def P11146543604740448192.Spec : Prop :=
  ∀ n, P11146543604740448192.a n = A335111 n

end A335111

/-! ## A335111.P6729135942150313564

`A137447(2*n)+A000023(n)`
-/

namespace A335111.P6729135942150313564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137447 (2 * n) + A000023 n

end

end A335111.P6729135942150313564

namespace A335111

/-- `A137447(2*n)+A000023(n)` -/
def P6729135942150313564.Spec : Prop :=
  ∀ n, P6729135942150313564.a n = A335111 n

end A335111

/-! ## A335111.P13907393376754546890

`A122803(n+1)+A122803(n)+A000023(n)`
-/

namespace A335111.P13907393376754546890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (n + 1) + (A122803 n + A000023 n)

end

end A335111.P13907393376754546890

namespace A335111

/-- `A122803(n+1)+A122803(n)+A000023(n)` -/
def P13907393376754546890.Spec : Prop :=
  ∀ n, P13907393376754546890.a n = A335111 n

end A335111

/-! ## A335111.P15795085445749956608

`(n+1)*A063083(n)-A037256(n)`
-/

namespace A335111.P15795085445749956608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063083 n - A037256 n

end

end A335111.P15795085445749956608

namespace A335111

/-- `(n+1)*A063083(n)-A037256(n)` -/
def P15795085445749956608.Spec : Prop :=
  ∀ n, P15795085445749956608.a n = A335111 n

end A335111

/-! ## A335111.P15722608213371571246

`A088127(n)-(n+1)*A062282(n)`
-/

namespace A335111.P15722608213371571246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088127 n - (n + 1 : ℤ) * A062282 n

end

end A335111.P15722608213371571246

namespace A335111

/-- `A088127(n)-(n+1)*A062282(n)` -/
def P15722608213371571246.Spec : Prop :=
  ∀ n, P15722608213371571246.a n = A335111 n

end A335111

/-!
# A335112: a(n) is the greatest k > 0 such that Sum_{j=1..n} j*k^j/(k+n) is an integer, for n > 1.

The programs for A335112, the canonical program `A335112.P2887196616929947511` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335112 has offset 2).

The definition of A335112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335112.P2887196616929947511

`(n+2)*abs(((n+3)*(-(n+2))^(n+2)+(-(n+2))^(n+4)-1)/(n+3)²)-(n+2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335112

/-- `(n+2)*abs(((n+3)*(-(n+2))^(n+2)+(-(n+2))^(n+4)-1)/(n+3)²)-(n+2)` -/
def P2887196616929947511.Spec : Prop :=
  ∀ n, P2887196616929947511.a n = (A335112 (n + 2) : ℚ)

end A335112

/-! ## A335112.P3372024708136850596

`abs(A005843(n+2)-A335114(n+2))`
-/

namespace A335112.P3372024708136850596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 (n + 2) - A335114 (n + 2)|

end

end A335112.P3372024708136850596

namespace A335112

/-- `abs(A005843(n+2)-A335114(n+2))` -/
def P3372024708136850596.Spec : Prop :=
  ∀ n, P3372024708136850596.a n = A335112 (n + 2)

end A335112

/-!
# A335113: a(n) is the least k > 0 such that Sum_{j=1..n} j*k^j/(k+n) is an integer, for n > 1.

The programs for A335113, there is no canonical definition to state claims against.
-/

/-! ## A335113.P3018965352169460318

`A115728(val(n+1, 2)*A211110(3*n+1))`
-/

namespace A335113.P3018965352169460318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115728 ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A211110 (3 * n + 1)).toNat

end

end A335113.P3018965352169460318

/-!
# A335114: a(n) is the greatest k > 0 such that Sum_{j=1..n} j*(-k)^j/(k+n) is an integer, for n > 1 and a(n) != n + 1.

The programs for A335114, the canonical program `A335114.P10721775443141183759` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335114 has offset 2).

The definition of A335114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335114.P10721775443141183759

`A335112(n+2)+2*(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335114

/-- `A335112(n+2)+2*(n+2)` -/
def P10721775443141183759.Spec : Prop :=
  ∀ n, P10721775443141183759.a n = A335114 (n + 2)

theorem P10721775443141183759.correct : P10721775443141183759.Spec := by
  intro n
  simp only [A335114, Nat.add_sub_cancel]

end A335114

/-! ## A335114.P4332817836598607882

`A335112(n+2)+A005408(n)+3`
-/

namespace A335114.P4332817836598607882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335112 (n + 2) + A005408 n + 3

end

end A335114.P4332817836598607882

namespace A335114

/-- `A335112(n+2)+A005408(n)+3` -/
def P4332817836598607882.Spec : Prop :=
  ∀ n, P4332817836598607882.a n = A335114 (n + 2)

end A335114

/-!
# A335115: a(2*n) = 2*n - a(n), a(2*n+1) = 2*n + 1.

The programs for A335115, the canonical program `A335115.P2664646623164954888` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335115 has offset 1).

The definition of A335115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335115.P2664646623164954888

`1-(a(floor((n-1)/2))+a(n-1)-2*n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335115

/-- `1-(a(floor((n-1)/2))+a(n-1)-2*n)` -/
def P2664646623164954888.Spec : Prop :=
  ∀ n, P2664646623164954888.a n = A335115 (n + 1)

theorem P2664646623164954888.correct : P2664646623164954888.Spec := by
  intro n
  simp only [A335115, Nat.add_sub_cancel]

end A335115

/-! ## A335115.P14878026945507239382

`1-(a(floor((n-1)/2))+a(n-1))+n+n` with `a(0)=1`
-/

namespace A335115.P14878026945507239382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1)) + (n : ℤ) + (n : ℤ)

end

end A335115.P14878026945507239382

namespace A335115

/-- `1-(a(floor((n-1)/2))+a(n-1))+n+n` -/
def P14878026945507239382.Spec : Prop :=
  ∀ n, P14878026945507239382.a n = A335115 (n + 1)

theorem P14878026945507239382.correct : P14878026945507239382.Spec := by
  intro n
  simp only [A335115, Nat.add_sub_cancel, A335115.P14878026945507239382.a, A335115.P2664646623164954888.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A335115

/-! ## A335115.P5578752718002087471

`∑{d}[n+1, #*A154269((n+1)/#)]`
-/

namespace A335115.P5578752718002087471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P5578752718002087471

namespace A335115

/-- `∑{d}[n+1, #*A154269((n+1)/#)]` -/
def P5578752718002087471.Spec : Prop :=
  ∀ n, P5578752718002087471.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P12029338001377246433

`(n+1)/2^val(n+1, 2)*A001045(val(n+1, 2)+1)`
-/

namespace A335115.P12029338001377246433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A001045 (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℚ)

end

end A335115.P12029338001377246433

namespace A335115

/-- `(n+1)/2^val(n+1, 2)*A001045(val(n+1, 2)+1)` -/
def P12029338001377246433.Spec : Prop :=
  ∀ n, P12029338001377246433.a n = (A335115 (n + 1) : ℚ)

end A335115

/-! ## A335115.P13947843190763609704

`A000265(n+1)*A001045(val(n+1, 2)+1)`
-/

namespace A335115.P13947843190763609704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A001045 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A335115.P13947843190763609704

namespace A335115

/-- `A000265(n+1)*A001045(val(n+1, 2)+1)` -/
def P13947843190763609704.Spec : Prop :=
  ∀ n, P13947843190763609704.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P771250825747759030

`∑{d}[n+1, A000010(#)*A035263((n+1)/#)]`
-/

namespace A335115.P771250825747759030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035263 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P771250825747759030

namespace A335115

/-- `∑{d}[n+1, A000010(#)*A035263((n+1)/#)]` -/
def P771250825747759030.Spec : Prop :=
  ∀ n, P771250825747759030.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P2381936850559020760

`∑{d}[n+1, A068068(#)*A074722((n+1)/#)]`
-/

namespace A335115.P2381936850559020760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P2381936850559020760

namespace A335115

/-- `∑{d}[n+1, A068068(#)*A074722((n+1)/#)]` -/
def P2381936850559020760.Spec : Prop :=
  ∀ n, P2381936850559020760.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P9264599046592131842

`∑{d}[n+1, A008836(#)*A159634((n+1)/#)]`
-/

namespace A335115.P9264599046592131842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P9264599046592131842

namespace A335115

/-- `∑{d}[n+1, A008836(#)*A159634((n+1)/#)]` -/
def P9264599046592131842.Spec : Prop :=
  ∀ n, P9264599046592131842.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P9671023162985692965

`∑{d}[n+1, A007431(#)*A174273((n+1)/#)]`
-/

namespace A335115.P9671023162985692965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A174273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P9671023162985692965

namespace A335115

/-- `∑{d}[n+1, A007431(#)*A174273((n+1)/#)]` -/
def P9671023162985692965.Spec : Prop :=
  ∀ n, P9671023162985692965.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P8157607739227159454

`∑{d}[n+1, A002131(#)*A355689((n+1)/#)]`
-/

namespace A335115.P8157607739227159454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P8157607739227159454

namespace A335115

/-- `∑{d}[n+1, A002131(#)*A355689((n+1)/#)]` -/
def P8157607739227159454.Spec : Prop :=
  ∀ n, P8157607739227159454.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P9448890321702660923

`∑{d}[n+1, A062570(#)*A309873((n+1)/#)]`
-/

namespace A335115.P9448890321702660923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P9448890321702660923

namespace A335115

/-- `∑{d}[n+1, A062570(#)*A309873((n+1)/#)]` -/
def P9448890321702660923.Spec : Prop :=
  ∀ n, P9448890321702660923.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P13768121317092065874

`∑{d}[n+1, A076752(#)*A359548((n+1)/#)]`
-/

namespace A335115.P13768121317092065874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P13768121317092065874

namespace A335115

/-- `∑{d}[n+1, A076752(#)*A359548((n+1)/#)]` -/
def P13768121317092065874.Spec : Prop :=
  ∀ n, P13768121317092065874.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P334952863793698280

`∑{d}[n+1, A206369(#)*A323239((n+1)/#)]`
-/

namespace A335115.P334952863793698280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P334952863793698280

namespace A335115

/-- `∑{d}[n+1, A206369(#)*A323239((n+1)/#)]` -/
def P334952863793698280.Spec : Prop :=
  ∀ n, P334952863793698280.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P9567862806027924621

`∑{d}[n+1, A195459(#)*A373155((n+1)/#)]`
-/

namespace A335115.P9567862806027924621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A195459 d * A373155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P9567862806027924621

namespace A335115

/-- `∑{d}[n+1, A195459(#)*A373155((n+1)/#)]` -/
def P9567862806027924621.Spec : Prop :=
  ∀ n, P9567862806027924621.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P9083612702909175144

`∑{d}[n+1, A209615(#)*A395768((n+1)/#)]`
-/

namespace A335115.P9083612702909175144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209615 d * A395768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P9083612702909175144

namespace A335115

/-- `∑{d}[n+1, A209615(#)*A395768((n+1)/#)]` -/
def P9083612702909175144.Spec : Prop :=
  ∀ n, P9083612702909175144.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P15846323783336362509

`∑{d}[n+1, A115362(#-1)*A326305((n+1)/#)]`
-/

namespace A335115.P15846323783336362509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115362 (d - 1) * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335115.P15846323783336362509

namespace A335115

/-- `∑{d}[n+1, A115362(#-1)*A326305((n+1)/#)]` -/
def P15846323783336362509.Spec : Prop :=
  ∀ n, P15846323783336362509.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P14983637582999714567

`A373188(n+1)+A373188(n+1)-A129527(n+1)`
-/

namespace A335115.P14983637582999714567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373188 (n + 1) + (A373188 (n + 1) - A129527 (n + 1))

end

end A335115.P14983637582999714567

namespace A335115

/-- `A373188(n+1)+A373188(n+1)-A129527(n+1)` -/
def P14983637582999714567.Spec : Prop :=
  ∀ n, P14983637582999714567.a n = A335115 (n + 1)

end A335115

/-! ## A335115.P12079227915221689229

`A329888(A328407(n+1))`
-/

namespace A335115.P12079227915221689229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A328407 (n + 1)).toNat

end

end A335115.P12079227915221689229

namespace A335115

/-- `A329888(A328407(n+1))` -/
def P12079227915221689229.Spec : Prop :=
  ∀ n, P12079227915221689229.a n = A335115 (n + 1)

end A335115

/-!
# A335116: Where records occur in A304480.

The programs for A335116, there is no canonical definition to state claims against.
-/

/-! ## A335116.P8471663775523998569

`∑[A162246(∑[A322078(n+1)])]`
-/

namespace A335116.P8471663775523998569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322078 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335116.P8471663775523998569

/-! ## A335116.P8093560298279394987

`A166684(record[A353865(comp[2*(n+1)])])`
-/

namespace A335116.P8093560298279394987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353865 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335116.P8093560298279394987

/-! ## A335116.P9712697554180569879

`eq[A228431(n+1), A372170(A064577(n+1))]`
-/

namespace A335116.P9712697554180569879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372170 (A064577 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335116.P9712697554180569879

/-! ## A335116.P16550569145364453703

`eq[A124943(A060775(2*(n+2))), A357638(2*n+3)]`
-/

namespace A335116.P16550569145364453703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124943 (A060775 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357638 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335116.P16550569145364453703

/-!
# A335117: Records in A304480.

The programs for A335117, there is no canonical definition to state claims against.
-/

/-! ## A335117.P2351774492798058419

`A304480(A335116(n+1))`
-/

namespace A335117.P2351774492798058419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304480 (A335116 (n + 1)).toNat

end

end A335117.P2351774492798058419

/-! ## A335117.P493911401530061537

`record[A304480(n+1-∑{e}[n+1, #])]`
-/

namespace A335117.P493911401530061537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304480 (n + 1 - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335117.P493911401530061537

/-! ## A335117.P18075634437307169706

`record[A304480(A000010(n+1))]`
-/

namespace A335117.P18075634437307169706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304480 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335117.P18075634437307169706

/-! ## A335117.P12083331961665213783

`record[A304480(A006530(n+1))]`
-/

namespace A335117.P12083331961665213783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304480 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335117.P12083331961665213783

/-! ## A335117.P13936980630382187785

`record[A304480(A020639(n+1))]`
-/

namespace A335117.P13936980630382187785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304480 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335117.P13936980630382187785

/-!
# A335120: The prime terms of A225563.

The programs for A335120, there is no canonical definition to state claims against.
-/

/-! ## A335120.P1819453578874461916

`p?[record[or(1, A058213(n))]]`
-/

namespace A335120.P1819453578874461916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A058213 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335120.P1819453578874461916

/-! ## A335120.P4436352713272541594

`p?[A058213(n+1)+1]`
-/

namespace A335120.P4436352713272541594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058213 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335120.P4436352713272541594

/-! ## A335120.P8394184041011194141

`p?[A003401(n+2)+1]`
-/

namespace A335120.P8394184041011194141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335120.P8394184041011194141

/-! ## A335120.P16484108325141299193

`p?[A141044(n)+A058213(n)]`
-/

namespace A335120.P16484108325141299193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n + A058213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335120.P16484108325141299193

/-! ## A335120.P7741804293903589531

`p?[A158388(n)+A058213(n)]`
-/

namespace A335120.P7741804293903589531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A058213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335120.P7741804293903589531

/-!
# A335122: Irregular triangle whose reversed rows are all integer partitions in graded reverse-lexicographic order.

The programs for A335122, there is no canonical definition to state claims against.
-/

/-! ## A335122.P18097557689027503280

`gcd(A033665(A034432(n+1)), A334442(n))`
-/

namespace A335122.P18097557689027503280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033665 (A034432 (n + 1)).toNat) (A334442 n)

end

end A335122.P18097557689027503280

/-! ## A335122.P14820944998083484088

`A036036((n+1)^xor(1, C(n, 47)²))`
-/

namespace A335122.P14820944998083484088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 ((n + 1) ^ Nat.xor 1 (Nat.choose n 47 ^ 2))

end

end A335122.P14820944998083484088

/-! ## A335122.P12065471746940397170

`A334442(or(n, A034432(n+1)))`
-/

namespace A335122.P12065471746940397170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334442 (Int.lor (n : ℤ) (A034432 (n + 1))).toNat

end

end A335122.P12065471746940397170

/-! ## A335122.P5063335117099532173

`gcd(A036036(n+1), A241320(A333755(n)))`
-/

namespace A335122.P5063335117099532173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036036 (n + 1)) (A241320 (A333755 n).toNat)

end

end A335122.P5063335117099532173

/-! ## A335122.P8650976208786451868

`A036036(A053165(n+1)%A210475(n+2))`
-/

namespace A335122.P8650976208786451868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (Int.tmod (A053165 (n + 1)) (A210475 (n + 2))).toNat

end

end A335122.P8650976208786451868

/-!
# A335123: Minimum part of the n-th integer partition in Abramowitz-Stegun order (sum/length/lex); a(0) = 0.

The programs for A335123, there is no canonical definition to state claims against.
-/

/-! ## A335123.P6741841075208251397

`A055396(A334433(n))`
-/

namespace A335123.P6741841075208251397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A334433 n).toNat

end

end A335123.P6741841075208251397

/-! ## A335123.P14726104980859733125

`A068743(n)%10`
-/

namespace A335123.P14726104980859733125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068743 n) 10

end

end A335123.P14726104980859733125

/-! ## A335123.P10702227413136481671

`A286471(2*A334433(n))`
-/

namespace A335123.P10702227413136481671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A334433 n).toNat

end

end A335123.P10702227413136481671

/-! ## A335123.P1459140577888106145

`A061395(A020639(A334433(n))²)`
-/

namespace A335123.P1459140577888106145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (A334433 n).toNat ^ 2).toNat

end

end A335123.P1459140577888106145

/-! ## A335123.P15980938817043380270

`A241919(A020639(A334433(n))²)`
-/

namespace A335123.P15980938817043380270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A020639 (A334433 n).toNat ^ 2).toNat

end

end A335123.P15980938817043380270

/-! ## A335123.P4759442814836932731

`∑{d}[A020639(A334433(n)), A056239(#)]`
-/

namespace A335123.P4759442814836932731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A334433 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A335123.P4759442814836932731

/-! ## A335123.P896639339057235547

`A056239(A020639(∏{p}[A334433(n), #]))`
-/

namespace A335123.P896639339057235547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A335123.P896639339057235547

/-! ## A335123.P4415818156080885571

`A056239(A020639(A334433(n)))%A129129(n)`
-/

namespace A335123.P4415818156080885571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A020639 (A334433 n).toNat).toNat) (A129129 n)

end

end A335123.P4415818156080885571

/-!
# A335124: Minimum part of the n-th reversed integer partition in Abramowitz-Stegun order; a(0) = 0.

The programs for A335124, there is no canonical definition to state claims against.
-/

/-! ## A335124.P11758224263025643445

`A055396(A185974(n))`
-/

namespace A335124.P11758224263025643445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A185974 n).toNat

end

end A335124.P11758224263025643445

/-! ## A335124.P16573540314795204726

`A277697(∏{p}[A185974(n), #])`
-/

namespace A335124.P16573540314795204726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A335124.P16573540314795204726

/-! ## A335124.P14084022065569288891

`A277707(∏{p}[A185974(n), #])`
-/

namespace A335124.P14084022065569288891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A335124.P14084022065569288891

/-! ## A335124.P844137094962089323

`A056811(A020639(A185974(n))²)`
-/

namespace A335124.P844137094962089323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A020639 (A185974 n).toNat ^ 2).toNat

end

end A335124.P844137094962089323

/-! ## A335124.P2127542130120287786

`A061395(A020639(A185974(n))²)`
-/

namespace A335124.P2127542130120287786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (A185974 n).toNat ^ 2).toNat

end

end A335124.P2127542130120287786

/-! ## A335124.P6234813158710255872

`∑{d}[A020639(A185974(n)), A056239(#)]`
-/

namespace A335124.P6234813158710255872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A335124.P6234813158710255872

/-! ## A335124.P13880643664883437561

`A071178(A334434(n))`
-/

namespace A335124.P13880643664883437561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A334434 n).toNat

end

end A335124.P13880643664883437561

/-! ## A335124.P3767959482470039133

`A286471(2*A185974(n))`
-/

namespace A335124.P3767959482470039133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A185974 n).toNat

end

end A335124.P3767959482470039133

/-! ## A335124.P6996694818368169022

`A051904(A036035(n)%A002496(n+1))`
-/

namespace A335124.P6996694818368169022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (Int.tmod (A036035 n) (A002496 (n + 1))).toNat

end

end A335124.P6996694818368169022

/-!
# A335125: Number of anti-run permutations of a multiset whose multiplicities are the prime indices of n.

The programs for A335125, there is no canonical definition to state claims against.
-/

/-! ## A335125.P2167726884754420877

`A335452(A181821(n+1)%A068403(2*(n+2)))`
-/

namespace A335125.P2167726884754420877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (Int.tmod (A181821 (n + 1)) (A068403 (2 * (n + 2)))).toNat

end

end A335125.P2167726884754420877

/-! ## A335125.P14038168539035807403

`A335452(A181821(n+1))`
-/

namespace A335125.P14038168539035807403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A181821 (n + 1)).toNat

end

end A335125.P14038168539035807403

/-! ## A335125.P13609087248334391885

`A335452(A304660(n+1))`
-/

namespace A335125.P13609087248334391885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A304660 (n + 1)).toNat

end

end A335125.P13609087248334391885

/-! ## A335125.P14592113040956445755

`A335452(∏{e}[A108951(n+1), A002110(#)])`
-/

namespace A335125.P14592113040956445755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A335125.P14592113040956445755

/-! ## A335125.P8622181969389591261

`A001511(A002995(n))*A318371(n+1)`
-/

namespace A335125.P8622181969389591261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002995 n).toNat * A318371 (n + 1)

end

end A335125.P8622181969389591261

/-!
# A335126: A multiset whose multiplicities are the prime indices of n is inseparable.

The programs for A335126, there is no canonical definition to state claims against.
-/

/-! ## A335126.P6181286763498641441

`comp[A335127(n+1)-1]+1`
-/

namespace A335126.P6181286763498641441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335126.P6181286763498641441

/-! ## A335126.P5159083432766597552

`comp[A023443(A335127(n+1))]+1`
-/

namespace A335126.P5159083432766597552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A335127 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335126.P5159083432766597552

/-! ## A335126.P4097406704618966407

`comp[∪[A335127(n+1), A008594(n)]]`
-/

namespace A335126.P4097406704618966407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335126.P4097406704618966407

/-! ## A335126.P17346993860312016105

`∪[A318718(n+1), A382914(n+1)]`
-/

namespace A335126.P17346993860312016105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335126.P17346993860312016105

/-! ## A335126.P8121913489679246239

`comp[A335127(n+1)%A335133(3*(n+1))]`
-/

namespace A335126.P8121913489679246239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335127 (n + 1)) (A335133 (3 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335126.P8121913489679246239

/-! ## A335126.P12925393866569852135

`lt[A003961(n+1), A243071(2*(n+1))]+1`
-/

namespace A335126.P12925393866569852135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A335126.P12925393866569852135

/-! ## A335126.P17874622746502024197

`lt[A129283(n+1), A156552(2*(n+1))]+1`
-/

namespace A335126.P17874622746502024197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A335126.P17874622746502024197

/-! ## A335126.P14909362008106400777

`lt[A129283(n), A156552(A004277(n))]`
-/

namespace A335126.P14909362008106400777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335126.P14909362008106400777

/-! ## A335126.P2771655803094725590

`lt[A129283(n), A156552(A316571(n+1))]`
-/

namespace A335126.P2771655803094725590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A316571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335126.P2771655803094725590

/-!
# A335127: A multiset whose multiplicities are the prime indices of n is separable.

The programs for A335127, there is no canonical definition to state claims against.
-/

/-! ## A335127.P16321336117332735379

`record[A032742(A322109(n+1))]`
-/

namespace A335127.P16321336117332735379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A322109 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335127.P16321336117332735379

/-! ## A335127.P14257274660955074109

`record[A101279(A322109(n+1)+1)]`
-/

namespace A335127.P14257274660955074109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A322109 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335127.P14257274660955074109

/-! ## A335127.P12862085231979179797

`record[A054576(2*A322109(n+1))]`
-/

namespace A335127.P12862085231979179797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A322109 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335127.P12862085231979179797

/-! ## A335127.P11823270778422229864

`record[A097140(A322109(A254531(n)))]`
-/

namespace A335127.P11823270778422229864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A322109 (A254531 (n + 27)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335127.P11823270778422229864

/-! ## A335127.P11834710086512972133

`record[A054576(A322109(n+1)+A322109(n+1))]`
-/

namespace A335127.P11834710086512972133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A322109 (n + 1) + A322109 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335127.P11834710086512972133

/-!
# A335128: Records in A006863.

The programs for A335128, there is no canonical definition to state claims against.
-/

/-! ## A335128.P8567627169710477249

`record[A006863(n)]`
-/

namespace A335128.P8567627169710477249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335128.P8567627169710477249

/-! ## A335128.P10169611703710192240

`record[A079612(n+1)/gcd(2, n)]`
-/

namespace A335128.P10169611703710192240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335128.P10169611703710192240

/-! ## A335128.P18249005416663623344

`record[A079612(n+1)-A000007(n)]`
-/

namespace A335128.P18249005416663623344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335128.P18249005416663623344

/-! ## A335128.P8790687181316257966

`record[A079612(n+1)-A003982(n)]`
-/

namespace A335128.P8790687181316257966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1) - A003982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335128.P8790687181316257966

/-! ## A335128.P11935494575784699505

`record[A143407(n+1)-A000007(n)]`
-/

namespace A335128.P11935494575784699505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143407 (n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335128.P11935494575784699505

/-!
# A335129: a(n) is the number of distinct lines created inside an n-gon when connecting vertex k to vertex 2k mod n.

The programs for A335129, the canonical program `A335129.P3581651973765741647` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335129 has offset 3).

The definition of A335129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335129.P3581651973765741647

`n-C(dr(n²), 9)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335129

/-- `n-C(dr(n²), 9)` -/
def P3581651973765741647.Spec : Prop :=
  ∀ n, P3581651973765741647.a n = A335129 (n + 3)

theorem P3581651973765741647.correct : P3581651973765741647.Spec := by
  intro n
  simp only [A335129, Nat.add_sub_cancel]

end A335129

/-! ## A335129.P2961725503297007597

`n-∑{p}[n, val(#, 3)]`
-/

namespace A335129.P2961725503297007597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3 : ℕ) : ℤ)

end

end A335129.P2961725503297007597

namespace A335129

/-- `n-∑{p}[n, val(#, 3)]` -/
def P2961725503297007597.Spec : Prop :=
  ∀ n, P2961725503297007597.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P17239184416662762054

`n-val(∏{p}[n, #], 3)`
-/

namespace A335129.P17239184416662762054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 3 : ℤ)

end

end A335129.P17239184416662762054

namespace A335129

/-- `n-val(∏{p}[n, #], 3)` -/
def P17239184416662762054.Spec : Prop :=
  ∀ n, P17239184416662762054.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P9597073602129686373

`n-char[3*(n+1)]`
-/

namespace A335129.P9597073602129686373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A335129.P9597073602129686373

namespace A335129

/-- `n-char[3*(n+1)]` -/
def P9597073602129686373.Spec : Prop :=
  ∀ n, P9597073602129686373.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P12865363831203218046

`∑[(n*ceil(atan(n)))%3]`
-/

namespace A335129.P12865363831203218046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ⌈Real.arctan (n : ℝ)⌉) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P12865363831203218046

namespace A335129

/-- `∑[(n*ceil(atan(n)))%3]` -/
def P12865363831203218046.Spec : Prop :=
  ∀ n, P12865363831203218046.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P14361126847864752923

`∑[abs((2*n-3)%3)]`
-/

namespace A335129.P14361126847864752923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((2 * n : ℤ) - 3) 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P14361126847864752923

namespace A335129

/-- `∑[abs((2*n-3)%3)]` -/
def P14361126847864752923.Spec : Prop :=
  ∀ n, P14361126847864752923.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P15016667022921985569

`∑[dr(2*n-3)%3]`
-/

namespace A335129.P15016667022921985569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * n : ℤ) - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P15016667022921985569

namespace A335129

/-- `∑[dr(2*n-3)%3]` -/
def P15016667022921985569.Spec : Prop :=
  ∀ n, (P15016667022921985569.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P11562999508318524079

`∑[(2*n-char[1])%3]`
-/

namespace A335129.P11562999508318524079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P11562999508318524079

namespace A335129

/-- `∑[(2*n-char[1])%3]` -/
def P11562999508318524079.Spec : Prop :=
  ∀ n, P11562999508318524079.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P9924581172087286962

`abs(a(n-3)+3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A335129.P9924581172087286962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n a =>
  a (n - 3) + 3

end

end A335129.P9924581172087286962

namespace A335129

/-- `abs(a(n-3)+3)` -/
def P9924581172087286962.Spec : Prop :=
  ∀ n, (P9924581172087286962.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P9162904929959623448

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A335129.P9162904929959623448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P9162904929959623448

namespace A335129

/-- `∑[abs(a(n-3))]` -/
def P9162904929959623448.Spec : Prop :=
  ∀ n, (P9162904929959623448.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P1697329310729020231

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A335129.P1697329310729020231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P1697329310729020231

namespace A335129

/-- `∑[dr(a(n-3))]` -/
def P1697329310729020231.Spec : Prop :=
  ∀ n, (P1697329310729020231.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P732812466648397687

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A335129.P732812466648397687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P732812466648397687

namespace A335129

/-- `∑[floor(a(n-3))]` -/
def P732812466648397687.Spec : Prop :=
  ∀ n, (P732812466648397687.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P10695878666328129890

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A335129.P10695878666328129890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P10695878666328129890

namespace A335129

/-- `∑[ceil(a(n-3))]` -/
def P10695878666328129890.Spec : Prop :=
  ∀ n, (P10695878666328129890.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P8935684534336096618

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A335129.P8935684534336096618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P8935684534336096618

namespace A335129

/-- `∑[round(a(n-3))]` -/
def P8935684534336096618.Spec : Prop :=
  ∀ n, (P8935684534336096618.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P15826718498294978816

`(n*gcd(3, n))%(2*n+1)`
-/

namespace A335129.P15826718498294978816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 3 n % (2 * n + 1)

end

end A335129.P15826718498294978816

namespace A335129

/-- `(n*gcd(3, n))%(2*n+1)` -/
def P15826718498294978816.Spec : Prop :=
  ∀ n, (P15826718498294978816.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P1804701490723017877

`ceil(cos((n-1)%3)+n-1)`
-/

namespace A335129.P1804701490723017877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Int.tmod ((n : ℤ) - 1) 3 : ℝ) + ((n : ℤ) - 1 : ℝ)⌉

end

end A335129.P1804701490723017877

namespace A335129

/-- `ceil(cos((n-1)%3)+n-1)` -/
def P1804701490723017877.Spec : Prop :=
  ∀ n, P1804701490723017877.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P2289029383150742927

`∑[C(2, a(n-2)²)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A335129.P2289029383150742927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n f1 =>
  Nat.choose 2 (f1 (n - 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335129.P2289029383150742927

namespace A335129

/-- `∑[C(2, a(n-2)²)]` -/
def P2289029383150742927.Spec : Prop :=
  ∀ n, (P2289029383150742927.a n : ℤ) = A335129 (n + 3)

end A335129

/-! ## A335129.P15717558040252933439

`(∑[(2*n)%3]-1)%(n+1)`
-/

namespace A335129.P15717558040252933439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A335129.P15717558040252933439

namespace A335129

/-- `(∑[(2*n)%3]-1)%(n+1)` -/
def P15717558040252933439.Spec : Prop :=
  ∀ n, P15717558040252933439.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P3047857552025757320

`round(n-(n+1)/lcm(3, n+3))`
-/

namespace A335129.P3047857552025757320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / (Nat.lcm 3 (n + 3) : ℚ))

end

end A335129.P3047857552025757320

namespace A335129

/-- `round(n-(n+1)/lcm(3, n+3))` -/
def P3047857552025757320.Spec : Prop :=
  ∀ n, P3047857552025757320.a n = A335129 (n + 3)

end A335129

/-! ## A335129.P15657909943010861422

`(n-∑[n+1]%3)%(n+1)`
-/

namespace A335129.P15657909943010861422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A335129.P15657909943010861422

namespace A335129

/-- `(n-∑[n+1]%3)%(n+1)` -/
def P15657909943010861422.Spec : Prop :=
  ∀ n, P15657909943010861422.a n = A335129 (n + 3)

end A335129

/-!
# A335131: a(n) = Sum_{k=1..n} phi(k)*phi(k+1)*phi(k+2), where phi(k) = A000010(k) is Euler's totient function.

The programs for A335131, the canonical program `A335131.P11771733375200101273` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335131 has offset 1).

The definition of A335131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335131.P11771733375200101273

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A083542(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A335131

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A083542(n+2)]` -/
def P11771733375200101273.Spec : Prop :=
  ∀ n, P11771733375200101273.a n = (A335131 (n + 1) : ℚ)

end A335131

/-! ## A335131.P10719687234903507236

`∑[A000010(lcm(2, n+3)*∑[n+1])]`
-/

namespace A335131.P10719687234903507236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm 2 (n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335131.P10719687234903507236

namespace A335131

/-- `∑[A000010(lcm(2, n+3)*∑[n+1])]` -/
def P10719687234903507236.Spec : Prop :=
  ∀ n, P10719687234903507236.a n = A335131 (n + 1)

end A335131

/-! ## A335131.P3201463437303125448

`∑[A000010(lcm(n+1, (n+2)²+2+n))]`
-/

namespace A335131.P3201463437303125448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm (n + 1) ((n + 2) ^ 2 + 2 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335131.P3201463437303125448

namespace A335131

/-- `∑[A000010(lcm(n+1, (n+2)²+2+n))]` -/
def P3201463437303125448.Spec : Prop :=
  ∀ n, P3201463437303125448.a n = A335131 (n + 1)

end A335131

/-! ## A335131.P12414419673800867391

`∑[A000010(A033931(n+1))]`
-/

namespace A335131.P12414419673800867391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A033931 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335131.P12414419673800867391

namespace A335131

/-- `∑[A000010(A033931(n+1))]` -/
def P12414419673800867391.Spec : Prop :=
  ∀ n, P12414419673800867391.a n = A335131 (n + 1)

end A335131

/-! ## A335131.P10149141415982923935

`∑[A000010(6*A067046(n+1))]`
-/

namespace A335131.P10149141415982923935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (6 * A067046 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335131.P10149141415982923935

namespace A335131

/-- `∑[A000010(6*A067046(n+1))]` -/
def P10149141415982923935.Spec : Prop :=
  ∀ n, P10149141415982923935.a n = A335131 (n + 1)

end A335131

/-!
# A335132: Numbers whose binary expansion generates 3-fold rotationally symmetric EQ-triangles.

The programs for A335132, there is no canonical definition to state claims against.
-/

/-! ## A335132.P16432412745940186000

`eq[n, A335133(A030101(n))]`
-/

namespace A335132.P16432412745940186000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335132.P16432412745940186000

/-! ## A335132.P2146904777449422666

`eq[n, A334727(A036044(A004442(n)))]`
-/

namespace A335132.P2146904777449422666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334727 (A036044 (A004442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335132.P2146904777449422666

/-! ## A335132.P868224863694799899

`eq[A035327(n), A036044(A335133(n))]`
-/

namespace A335132.P868224863694799899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A335133 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335132.P868224863694799899

/-! ## A335132.P8238445329377577463

`eq[n, A335133(A056539(A026741(n)))]`
-/

namespace A335132.P8238445329377577463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A056539 (A026741 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335132.P8238445329377577463

/-! ## A335132.P13601655096122485043

`eq[A026741(n), A335133(A057889(n))]`
-/

namespace A335132.P13601655096122485043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335132.P13601655096122485043

/-! ## A335132.P9800038858410042675

`eq[A038572(n), A335133(A335858(n))]`
-/

namespace A335132.P9800038858410042675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A335858 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335132.P9800038858410042675

/-!
# A335133: Binary interpretation of the left diagonal of the EQ-triangle with first row generated from the binary expansion of n, with most significant bit given by first row.

The programs for A335133, there is no canonical definition to state claims against.
-/

/-! ## A335133.P5654776101843548917

`xor(A086099(A053644(n)), A334727(n))`
-/

namespace A335133.P5654776101843548917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086099 (A053644 n).toNat) (A334727 n)

end

end A335133.P5654776101843548917

/-! ## A335133.P14993183789132374029

`A154441(A154446(n)%A176111(n+5))`
-/

namespace A335133.P14993183789132374029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154441 (Int.tmod (A154446 n) (A176111 (n + 5))).toNat

end

end A335133.P14993183789132374029

/-! ## A335133.P9756172899602345974

`A154445(A154442(n)%A237667(3*n))`
-/

namespace A335133.P9756172899602345974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (Int.tmod (A154442 n) (A237667 (3 * n))).toNat

end

end A335133.P9756172899602345974

/-! ## A335133.P10256919280594753030

`A154441(A154446(n))%A321453(2*n+5)`
-/

namespace A335133.P10256919280594753030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154441 (A154446 n).toNat) (A321453 (2 * n + 5))

end

end A335133.P10256919280594753030

/-! ## A335133.P18277610678008464785

`A154445(A154442(n))%A225317(n+1)`
-/

namespace A335133.P18277610678008464785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154445 (A154442 n).toNat) (A225317 (n + 1))

end

end A335133.P18277610678008464785

/-!
# A335134: Fixed points of A335133.

The programs for A335134, there is no canonical definition to state claims against.
-/

/-! ## A335134.P14978808195367623280

`eq[n, A335133(n)]`
-/

namespace A335134.P14978808195367623280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335134.P14978808195367623280

/-! ## A335134.P13649869642176241365

`record[gcd(A001014(n), A335133(n))]`
-/

namespace A335134.P13649869642176241365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001014 n) (A335133 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335134.P13649869642176241365

/-! ## A335134.P5176983645384836442

`A335133(lt[A335133(n)%(abs(1-n)+1), 1])`
-/

namespace A335134.P5176983645384836442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335133 n) (|1 - (n : ℤ)| + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A335134.P5176983645384836442

/-! ## A335134.P1942835556884885441

`lt[A075158(A000720(n+3)), 9]`
-/

namespace A335134.P1942835556884885441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 (A000720 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335134.P1942835556884885441

/-!
# A335135: Number of composite numbers between prime(n)^2 and prime(n + 1)^2 - 1.

The programs for A335135, the canonical program `A335135.P17570870546430476822` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335135 has offset 1).

The definition of A335135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335135.P17570870546430476822

`A053683(n+2)-A053683(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A335135

/-- `A053683(n+2)-A053683(n+1)` -/
def P17570870546430476822.Spec : Prop :=
  ∀ n, P17570870546430476822.a n = A335135 (n + 1)

theorem P17570870546430476822.correct : P17570870546430476822.Spec := by
  intro n
  simp only [A335135, Nat.add_sub_cancel]

end A335135

/-! ## A335135.P9662920473377533581

`A069482(n+1)-A050216(n+1)`
-/

namespace A335135.P9662920473377533581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) - A050216 (n + 1)

end

end A335135.P9662920473377533581

namespace A335135

/-- `A069482(n+1)-A050216(n+1)` -/
def P9662920473377533581.Spec : Prop :=
  ∀ n, P9662920473377533581.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P9722105693600742197

`Δ[A053683(n+1)]`
-/

namespace A335135.P9722105693600742197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P9722105693600742197

namespace A335135

/-- `Δ[A053683(n+1)]` -/
def P9722105693600742197.Spec : Prop :=
  ∀ n, P9722105693600742197.a n = A335135 (n + 1)

theorem P9722105693600742197.correct : P9722105693600742197.Spec := by
  intro n
  simp only [A335135, Nat.add_sub_cancel, A335135.P9722105693600742197.f1, A335135.P9722105693600742197.a, A335135.P17570870546430476822.a, SequenceMachineLib.memo_apply]

end A335135

/-! ## A335135.P12503622830858167297

`Δ[A120389(n+1)]`
-/

namespace A335135.P12503622830858167297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P12503622830858167297

namespace A335135

/-- `Δ[A120389(n+1)]` -/
def P12503622830858167297.Spec : Prop :=
  ∀ n, P12503622830858167297.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P16844274546581593360

`A120389(n+2)-A120389(n+1)`
-/

namespace A335135.P16844274546581593360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120389 (n + 2) - A120389 (n + 1)

end

end A335135.P16844274546581593360

namespace A335135

/-- `A120389(n+2)-A120389(n+1)` -/
def P16844274546581593360.Spec : Prop :=
  ∀ n, P16844274546581593360.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P15360691423411675927

`Δ[A001248(n+1)-A000879(n+1)]`
-/

namespace A335135.P15360691423411675927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A000879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P15360691423411675927

namespace A335135

/-- `Δ[A001248(n+1)-A000879(n+1)]` -/
def P15360691423411675927.Spec : Prop :=
  ∀ n, P15360691423411675927.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P8144707471380520497

`Δ[A000040(n+1)²-∑[A050216(n)]]`
-/

namespace A335135.P8144707471380520497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P8144707471380520497

namespace A335135

/-- `Δ[A000040(n+1)²-∑[A050216(n)]]` -/
def P8144707471380520497.Spec : Prop :=
  ∀ n, P8144707471380520497.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P8779604614948121325

`Δ[Δ[A007504(n)]²-A000879(n+1)]`
-/

namespace A335135.P8779604614948121325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - A000879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P8779604614948121325

namespace A335135

/-- `Δ[Δ[A007504(n)]²-A000879(n+1)]` -/
def P8779604614948121325.Spec : Prop :=
  ∀ n, P8779604614948121325.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P9629510470137727947

`Δ[A000040(n+1)²-A000879(n+1)]`
-/

namespace A335135.P9629510470137727947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A000879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P9629510470137727947

namespace A335135

/-- `Δ[A000040(n+1)²-A000879(n+1)]` -/
def P9629510470137727947.Spec : Prop :=
  ∀ n, P9629510470137727947.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P10962809330202165426

`A001248(n+2)-(A050216(n+1)+A001248(n+1))`
-/

namespace A335135.P10962809330202165426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - (A050216 (n + 1) + A001248 (n + 1))

end

end A335135.P10962809330202165426

namespace A335135

/-- `A001248(n+2)-(A050216(n+1)+A001248(n+1))` -/
def P10962809330202165426.Spec : Prop :=
  ∀ n, P10962809330202165426.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P5020781336640205160

`A084920(n+2)-(A084920(n+1)+A050216(n+1))`
-/

namespace A335135.P5020781336640205160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 2) - (A084920 (n + 1) + A050216 (n + 1))

end

end A335135.P5020781336640205160

namespace A335135

/-- `A084920(n+2)-(A084920(n+1)+A050216(n+1))` -/
def P5020781336640205160.Spec : Prop :=
  ∀ n, P5020781336640205160.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P1981321068533516705

`Δ[A182174(n+1)-A054272(n+1)]`
-/

namespace A335135.P1981321068533516705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) - A054272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P1981321068533516705

namespace A335135

/-- `Δ[A182174(n+1)-A054272(n+1)]` -/
def P1981321068533516705.Spec : Prop :=
  ∀ n, P1981321068533516705.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P8434851733284722031

`Δ[A001248(n+1)-A250473(n+1)]-1`
-/

namespace A335135.P8434851733284722031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A250473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A335135.P8434851733284722031

namespace A335135

/-- `Δ[A001248(n+1)-A250473(n+1)]-1` -/
def P8434851733284722031.Spec : Prop :=
  ∀ n, P8434851733284722031.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P9737518591231089916

`Δ[A000040(n+1)²-(A250473(n+1)+n)]`
-/

namespace A335135.P9737518591231089916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (A250473 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P9737518591231089916

namespace A335135

/-- `Δ[A000040(n+1)²-(A250473(n+1)+n)]` -/
def P9737518591231089916.Spec : Prop :=
  ∀ n, P9737518591231089916.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P10511402836503186283

`Δ[A000040(n+1)^A020639(12*(n+1))-(A250473(n+1)+n)]`
-/

namespace A335135.P10511402836503186283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A020639 (12 * (n + 1)) : ℤ) - (A250473 (n + 1) + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P10511402836503186283

namespace A335135

/-- `Δ[A000040(n+1)^A020639(12*(n+1))-(A250473(n+1)+n)]` -/
def P10511402836503186283.Spec : Prop :=
  ∀ n, P10511402836503186283.a n = (A335135 (n + 1) : ℚ)

end A335135

/-! ## A335135.P3163607904142035360

`Δ[A001248(n+1)-A062773(n+1)]`
-/

namespace A335135.P3163607904142035360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A062773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P3163607904142035360

namespace A335135

/-- `Δ[A001248(n+1)-A062773(n+1)]` -/
def P3163607904142035360.Spec : Prop :=
  ∀ n, P3163607904142035360.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P8811177865406414455

`Δ[A000040(n+1)²-A062773(n+1)]`
-/

namespace A335135.P8811177865406414455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A062773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P8811177865406414455

namespace A335135

/-- `Δ[A000040(n+1)²-A062773(n+1)]` -/
def P8811177865406414455.Spec : Prop :=
  ∀ n, P8811177865406414455.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P15802830335125481247

`Δ[A000040(n+1)^A020639(12*(n+1))-A062773(n+1)]`
-/

namespace A335135.P15802830335125481247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A020639 (12 * (n + 1)) : ℤ) - (A062773 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P15802830335125481247

namespace A335135

/-- `Δ[A000040(n+1)^A020639(12*(n+1))-A062773(n+1)]` -/
def P15802830335125481247.Spec : Prop :=
  ∀ n, P15802830335125481247.a n = (A335135 (n + 1) : ℚ)

end A335135

/-! ## A335135.P5090183102404830081

`Δ[A001248(n+1)-A038107(A000040(n+1))]`
-/

namespace A335135.P5090183102404830081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A038107 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P5090183102404830081

namespace A335135

/-- `Δ[A001248(n+1)-A038107(A000040(n+1))]` -/
def P5090183102404830081.Spec : Prop :=
  ∀ n, P5090183102404830081.a n = A335135 (n + 1)

end A335135

/-! ## A335135.P17888607209247809936

`Δ[A001248(n+1)-(A038107(A207790(2*(n+1)))+1)]`
-/

namespace A335135.P17888607209247809936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A038107 (A207790 (2 * (n + 1))).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335135.P17888607209247809936

namespace A335135

/-- `Δ[A001248(n+1)-(A038107(A207790(2*(n+1)))+1)]` -/
def P17888607209247809936.Spec : Prop :=
  ∀ n, P17888607209247809936.a n = A335135 (n + 1)

end A335135

/-!
# A335137: a(n) = floor(n*Im(2*e^(i*Pi/5))).

The programs for A335137, the canonical program `A335137.P11042953244379873835` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335137 has offset 1).

The definition of A335137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335137.P11042953244379873835

`floor((n+1)/cos(acot(ϕ)))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335137

/-- `floor((n+1)/cos(acot(ϕ)))` -/
def P11042953244379873835.Spec : Prop :=
  ∀ n, P11042953244379873835.a n = A335137 (n + 1)

theorem P11042953244379873835.correct : P11042953244379873835.Spec := by
  intro n
  simp only [A335137, Nat.add_sub_cancel]

end A335137

/-! ## A335137.P10074589434048996820

`floor((n+1)*sqrt(3-ϕ))`
-/

namespace A335137.P10074589434048996820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (3 - Real.goldenRatio)⌋

end

end A335137.P10074589434048996820

namespace A335137

/-- `floor((n+1)*sqrt(3-ϕ))` -/
def P10074589434048996820.Spec : Prop :=
  ∀ n, P10074589434048996820.a n = A335137 (n + 1)

end A335137

/-! ## A335137.P14806413750657756771

`ceil((n+1)/sin(atan(ϕ)))-1`
-/

namespace A335137.P14806413750657756771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sin (Real.arctan Real.goldenRatio)⌉ - 1

end

end A335137.P14806413750657756771

namespace A335137

/-- `ceil((n+1)/sin(atan(ϕ)))-1` -/
def P14806413750657756771.Spec : Prop :=
  ∀ n, P14806413750657756771.a n = A335137 (n + 1)

end A335137

/-! ## A335137.P2601243700848312255

`ceil((n+1)/cos(acot(ϕ)))-1`
-/

namespace A335137.P2601243700848312255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.cos (SequenceMachineLib.acot Real.goldenRatio)⌉ - 1

end

end A335137.P2601243700848312255

namespace A335137

/-- `ceil((n+1)/cos(acot(ϕ)))-1` -/
def P2601243700848312255.Spec : Prop :=
  ∀ n, P2601243700848312255.a n = A335137 (n + 1)

end A335137

/-! ## A335137.P8755804941888236338

`-ceil(-(n+1)/sin(atan(ϕ)))`
-/

namespace A335137.P8755804941888236338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-((n + 1 : ℝ) / Real.sin (Real.arctan Real.goldenRatio))⌉

end

end A335137.P8755804941888236338

namespace A335137

/-- `-ceil(-(n+1)/sin(atan(ϕ)))` -/
def P8755804941888236338.Spec : Prop :=
  ∀ n, P8755804941888236338.a n = A335137 (n + 1)

end A335137

/-! ## A335137.P12119044679331428636

`floor((n+1)/sin(atan(ϕ)))%(2*(n+1))`
-/

namespace A335137.P12119044679331428636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) / Real.sin (Real.arctan Real.goldenRatio)⌋ (2 * (n + 1) : ℤ)

end

end A335137.P12119044679331428636

namespace A335137

/-- `floor((n+1)/sin(atan(ϕ)))%(2*(n+1))` -/
def P12119044679331428636.Spec : Prop :=
  ∀ n, P12119044679331428636.a n = A335137 (n + 1)

end A335137

/-! ## A335137.P17399127038299603526

`A172471(∑[A195121(n)]-n)+1`
-/

namespace A335137.P17399127038299603526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat + 1

end

end A335137.P17399127038299603526

namespace A335137

/-- `A172471(∑[A195121(n)]-n)+1` -/
def P17399127038299603526.Spec : Prop :=
  ∀ n, P17399127038299603526.a n = A335137 (n + 1)

end A335137

/-! ## A335137.P11933802312279703620

`A003056(∑[∑[A003842(n)]])`
-/

namespace A335137.P11933802312279703620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335137.P11933802312279703620

namespace A335137

/-- `A003056(∑[∑[A003842(n)]])` -/
def P11933802312279703620.Spec : Prop :=
  ∀ n, P11933802312279703620.a n = A335137 (n + 1)

end A335137

/-! ## A335137.P7018297731913407492

`A003056(∑[∑[A003849(n)+1]])`
-/

namespace A335137.P7018297731913407492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335137.P7018297731913407492

namespace A335137

/-- `A003056(∑[∑[A003849(n)+1]])` -/
def P7018297731913407492.Spec : Prop :=
  ∀ n, P7018297731913407492.a n = A335137 (n + 1)

end A335137

/-!
# A335139: a(n) = (prime(n + 1) +- k) / 2 where k is the smallest possible odd number such that a(n) is prime and a(n + 1) >= a(n).

The programs for A335139, there is no canonical definition to state claims against.
-/

/-! ## A335139.P6056088265318959760

`A076272(p?[2*n+1]-1)`
-/

namespace A335139.P6056088265318959760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A335139.P6056088265318959760

/-! ## A335139.P10574437295309982309

`A051697(ceil(p?[2*n+1]/2))`
-/

namespace A335139.P10574437295309982309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉.toNat

end

end A335139.P10574437295309982309

/-! ## A335139.P1879478370878663944

`A051697(A006254(n+1))`
-/

namespace A335139.P1879478370878663944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A006254 (n + 1)).toNat

end

end A335139.P1879478370878663944

/-! ## A335139.P3371349652349622279

`A076973(A165972(n+1))`
-/

namespace A335139.P3371349652349622279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A165972 (n + 1)).toNat

end

end A335139.P3371349652349622279

/-! ## A335139.P4152223187541060509

`A076272(A006093(n+2))`
-/

namespace A335139.P4152223187541060509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A006093 (n + 2)).toNat

end

end A335139.P4152223187541060509

/-! ## A335139.P8849217037269074533

`A076272(A039915(n+2))`
-/

namespace A335139.P8849217037269074533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A039915 (n + 2)).toNat

end

end A335139.P8849217037269074533

/-! ## A335139.P246842667437327799

`A051697(A111333(n+2))`
-/

namespace A335139.P246842667437327799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A111333 (n + 2)).toNat

end

end A335139.P246842667437327799

/-! ## A335139.P7098808144553549420

`A051697(A130291(n+2))`
-/

namespace A335139.P7098808144553549420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A130291 (n + 2)).toNat

end

end A335139.P7098808144553549420

/-! ## A335139.P4443346890396842499

`A076973(A156037(n+2))`
-/

namespace A335139.P4443346890396842499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A156037 (n + 2)).toNat

end

end A335139.P4443346890396842499

/-! ## A335139.P10813668102837011184

`A076272(record[A000010(n+3)])`
-/

namespace A335139.P10813668102837011184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335139.P10813668102837011184

/-!
# A335140: Unitary pseudoperfect numbers (A293188) that are nonsquarefree.

The programs for A335140, there is no canonical definition to state claims against.
-/

/-! ## A335140.P6557137291406962458

`filter[A293188(n+1), A355447(#)]`
-/

namespace A335140.P6557137291406962458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A335140.P6557137291406962458

/-! ## A335140.P5405440557779915693

`∩[A293188(n+1), A389216(n+1)]`
-/

namespace A335140.P5405440557779915693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P5405440557779915693

/-! ## A335140.P994997793604942729

`filter[A293188(n+1), A087049(#)]`
-/

namespace A335140.P994997793604942729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A335140.P994997793604942729

/-! ## A335140.P1464155608737252414

`filter[A293188(n+1), A326072(#)]`
-/

namespace A335140.P1464155608737252414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A335140.P1464155608737252414

/-! ## A335140.P4949968522688825342

`filter[A293188(n+1), A389905(#)]`
-/

namespace A335140.P4949968522688825342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A335140.P4949968522688825342

/-! ## A335140.P4206161738483443001

`∩[A293188(n+1), A326071(n+1)]`
-/

namespace A335140.P4206161738483443001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P4206161738483443001

/-! ## A335140.P562529286768291848

`∩[A087245(n+1), A293188(n+1)]`
-/

namespace A335140.P562529286768291848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P562529286768291848

/-! ## A335140.P9092956472738646321

`∩[A293188(n+1), A389212(n+1)]`
-/

namespace A335140.P9092956472738646321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P9092956472738646321

/-! ## A335140.P15612151124507857970

`∩[A293188(n+1), A389214(n+1)]`
-/

namespace A335140.P15612151124507857970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P15612151124507857970

/-! ## A335140.P6818862533438243923

`∩[A293188(n+1), A368715(n+1)]`
-/

namespace A335140.P6818862533438243923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P6818862533438243923

/-! ## A335140.P13478347494668282166

`∩[A293188(n+1), A392288(n+1)]`
-/

namespace A335140.P13478347494668282166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P13478347494668282166

/-! ## A335140.P9662937454654347820

`∩[A137257(n+1), A293188(n+1)]`
-/

namespace A335140.P9662937454654347820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P9662937454654347820

/-! ## A335140.P374467075780939781

`∩[A293188(n+1), A375055(n+1)]`
-/

namespace A335140.P374467075780939781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P374467075780939781

/-! ## A335140.P10753348639926033337

`∩[A293188(n+1), A391026(n+1)]`
-/

namespace A335140.P10753348639926033337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P10753348639926033337

/-! ## A335140.P17421187054560891845

`∩[A293188(n+1), A379336(n+1)]`
-/

namespace A335140.P17421187054560891845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P17421187054560891845

/-! ## A335140.P18118847725135141104

`∩[A293188(n+1), A376271(n+1)]`
-/

namespace A335140.P18118847725135141104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P18118847725135141104

/-! ## A335140.P9253624329963465113

`∩[A062171(n+1), A293188(n+1)]`
-/

namespace A335140.P9253624329963465113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335140.P9253624329963465113

/-!
# A335141: Numbers that are both unitary pseudoperfect (A293188) and nonunitary pseudoperfect (A327945).

The programs for A335141, there is no canonical definition to state claims against.
-/

/-! ## A335141.P13721191926467685477

`∩[A293188(n+1), A327945(n+1)]`
-/

namespace A335141.P13721191926467685477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335141.P13721191926467685477

/-!
# A335142: Nonunitary Zumkeller numbers: numbers whose set of nonunitary divisors is nonempty and can be partitioned into two disjoint sets of equal sum.

The programs for A335142, there is no canonical definition to state claims against.
-/

/-! ## A335142.P10270685866656121901

`∪[A348705(A083207(n+1)), A335143(n+1)]`
-/

namespace A335142.P10270685866656121901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348705 (A083207 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335142.P10270685866656121901

/-! ## A335142.P17372156181761324326

`∪[A335143(n+1), A348705(A318145(n+2))]`
-/

namespace A335142.P17372156181761324326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348705 (A318145 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335142.P17372156181761324326

/-! ## A335142.P1561915834021535850

`A348705(A318145(n+1))`
-/

namespace A335142.P1561915834021535850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348705 (A318145 (n + 1)).toNat

end

end A335142.P1561915834021535850

/-!
# A335143: Nonunitary Zumkeller numbers (A335142) whose set of nonunitary divisors can be partitioned into two disjoint sets of equal sum in a single way.

The programs for A335143, there is no canonical definition to state claims against.
-/

/-! ## A335143.P13965222676735009283

`A335142(floor(A093669(3*n+2)/10))`
-/

namespace A335143.P13965222676735009283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335142 ⌊(A093669 (3 * n + 2) : ℚ) / 10⌋.toNat

end

end A335143.P13965222676735009283

/-! ## A335143.P11873734532707097380

`A335142(∑[A143438(n)!])`
-/

namespace A335143.P11873734532707097380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A143438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335143.P11873734532707097380

/-! ## A335143.P11565467195171686914

`A335142(∑[A190660(n)!])`
-/

namespace A335143.P11565467195171686914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A190660 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335143.P11565467195171686914

/-!
# A335144: Nonunitary Zumkeller numbers (A335142) whose set of nonunitary divisors can be partitioned into two disjoint sets of equal sum in a record number of ways.

The programs for A335144, there is no canonical definition to state claims against.
-/

/-! ## A335144.P11530072779221046017

`A335142(eq[A335909(n+2), A374515(3*n+4)])`
-/

namespace A335144.P11530072779221046017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335909 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335142 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A335144.P11530072779221046017

/-!
# A335146: Perimeters of Heronian triangles whose smallest side length divides their perimeter.

The programs for A335146, there is no canonical definition to state claims against.
-/

/-! ## A335146.P17642260991177050473

`∩[A333945(n+1), A359496(n+1)]`
-/

namespace A335146.P17642260991177050473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335146.P17642260991177050473

/-! ## A335146.P9214775246527688532

`A334665(lt[A096800(3*n), A243366(3*n)])`
-/

namespace A335146.P9214775246527688532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096800 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335146.P9214775246527688532

/-! ## A335146.P16696299137913452474

`∪[A335149(A161953(n+1)+1), A333945(n+1)]`
-/

namespace A335146.P16696299137913452474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335149 (A161953 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335146.P16696299137913452474

/-! ## A335146.P1780893031004526883

`∪[A335149(A161953(n+1)+1), A334665(n+1)]`
-/

namespace A335146.P1780893031004526883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335149 (A161953 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335146.P1780893031004526883

/-! ## A335146.P385158425800408158

`∪[A335149(A187829(n+1)+1), A333945(n+1)]`
-/

namespace A335146.P385158425800408158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335149 (A187829 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335146.P385158425800408158

/-!
# A335147: Perimeters of Heronian triangles whose middle side length divides their perimeter.

The programs for A335147, there is no canonical definition to state claims against.
-/

/-! ## A335147.P6748619203951727650

`6*A330945(A187829(n+1))`
-/

namespace A335147.P6748619203951727650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A330945 (A187829 (n + 1)).toNat

end

end A335147.P6748619203951727650

/-! ## A335147.P13364873409651485212

`6*A330945(n+1)%A093047(n+1)`
-/

namespace A335147.P13364873409651485212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (A330945 (n + 1)) (A093047 (n + 1))

end

end A335147.P13364873409651485212

/-! ## A335147.P15892657650217913007

`A000396(A300909(n+1))*A330945(n+1)`
-/

namespace A335147.P15892657650217913007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (A300909 (n + 1)).toNat * A330945 (n + 1)

end

end A335147.P15892657650217913007

/-! ## A335147.P13716584646221088008

`filter[A353991(n+1), A135022(#)]`
-/

namespace A335147.P13716584646221088008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135022 (f1 j).toNat = 1) n)

end

end A335147.P13716584646221088008

/-! ## A335147.P6310751496362098195

`filter[A353991(n+2), A136442(#)]`
-/

namespace A335147.P6310751496362098195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136442 (f1 j).toNat = 1) n)

end

end A335147.P6310751496362098195

/-!
# A335148: Perimeters of Heronian triangles such that either the smallest side length or the middle side length divides their perimeter, but not both.

The programs for A335148, there is no canonical definition to state claims against.
-/

/-! ## A335148.P1958668826203303010

`∩[A006933(n+1), A331367(n+1)]`
-/

namespace A335148.P1958668826203303010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335148.P1958668826203303010

/-! ## A335148.P3351466624723044886

`∩[A006933(n+1), A333945(n+1)]`
-/

namespace A335148.P3351466624723044886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335148.P3351466624723044886

/-! ## A335148.P9429435348939009955

`∩[A006933(n+1), A334665(n+1)]`
-/

namespace A335148.P9429435348939009955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335148.P9429435348939009955

/-! ## A335148.P16871914611053174795

`∩[A286758(n+2)-2, A331367(n+2)]`
-/

namespace A335148.P16871914611053174795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286758 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335148.P16871914611053174795

/-! ## A335148.P4157973675530688143

`∩[A331367(n+1), A006933(A304814(n))]`
-/

namespace A335148.P4157973675530688143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006933 (A304814 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335148.P4157973675530688143

/-!
# A335149: Perimeters of Heronian triangles whose smallest side length is coprime to their middle side and whose smallest side length divides their perimeter.

The programs for A335149, there is no canonical definition to state claims against.
-/

/-! ## A335149.P13547166507085270845

`∩[A286758(n+1), A331367(n+1)]`
-/

namespace A335149.P13547166507085270845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335149.P13547166507085270845

/-! ## A335149.P15885424170831454120

`∩[A286758(n+1), A334989(n+1)]`
-/

namespace A335149.P15885424170831454120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335149.P15885424170831454120

/-! ## A335149.P2652023118879052071

`∩[A331367(n+1), A333638(n+3)]`
-/

namespace A335149.P2652023118879052071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335149.P2652023118879052071

/-! ## A335149.P8932074600812410574

`∩[A115063(A115063(n+1)+2), A331367(n+1)]`
-/

namespace A335149.P8932074600812410574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (A115063 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335149.P8932074600812410574

/-! ## A335149.P139031924322706121

`A331367(∑[A331327(n)!])`
-/

namespace A335149.P139031924322706121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A331327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335149.P139031924322706121

/-!
# A335150: Perimeters of Heronian triangles whose smallest side length is coprime to their middle side and whose middle side length divides their perimeter.

The programs for A335150, the canonical program `A335150.P2848983247666895770` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335150 has offset 1).

The definition of A335150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335150.P2848983247666895770

`6*∩[A057128(n+1), A319838(n+2)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A335150

/-- `6*∩[A057128(n+1), A319838(n+2)]` -/
def P2848983247666895770.Spec : Prop :=
  ∀ n, (P2848983247666895770.a n : ℤ) = A335150 (n + 1)

theorem P2848983247666895770.correct : P2848983247666895770.Spec := by
  intro n
  simp only [A335150, Nat.add_sub_cancel]

end A335150

/-! ## A335150.P8557170331375314069

`∩[A057128(n+1), A335147(n+1)]`
-/

namespace A335150.P8557170331375314069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335150.P8557170331375314069

namespace A335150

/-- `∩[A057128(n+1), A335147(n+1)]` -/
def P8557170331375314069.Spec : Prop :=
  ∀ n, (P8557170331375314069.a n : ℤ) = A335150 (n + 1)

end A335150

/-! ## A335150.P5567857367679376844

`∩[A057128(n+1), A008458(n+2)]`
-/

namespace A335150.P5567857367679376844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335150.P5567857367679376844

namespace A335150

/-- `∩[A057128(n+1), A008458(n+2)]` -/
def P5567857367679376844.Spec : Prop :=
  ∀ n, (P5567857367679376844.a n : ℤ) = A335150 (n + 1)

end A335150

/-!
# A335151: Numbers m equal to |d_1^k + Sum_{j=2..k} (-1)^j*d_j^k| where d_1 d_2 ... d_k is the decimal expansion of m.

The programs for A335151, there is no canonical definition to state claims against.
-/

/-! ## A335151.P18140469952613863498

`A185255(3*n+1)+n`
-/

namespace A335151.P18140469952613863498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (3 * n + 1) + (n : ℤ)

end

end A335151.P18140469952613863498

/-! ## A335151.P8125408086908589869

`lcm(n, A333883(a(n-1)))` with `a(0)=0`
-/

namespace A335151.P8125408086908589869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.lcm (n : ℤ) (A333883 (a (n - 1)))

end

end A335151.P8125408086908589869

/-! ## A335151.P17323783461003503171

`floor(A014378(n+1)!/2)+n`
-/

namespace A335151.P17323783461003503171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (A014378 (n + 1)).toNat : ℚ) / 2⌋ + (n : ℤ)

end

end A335151.P17323783461003503171

/-! ## A335151.P3701452422970860403

`∑[comp[2*(n+1)]^A179958(n)]`
-/

namespace A335151.P3701452422970860403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) ^ (A179958 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335151.P3701452422970860403

/-! ## A335151.P14256763512055469100

`∩[record[abs(2*n%10-n)], A023052(n+1)]`
-/

namespace A335151.P14256763512055469100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * (n % 10) : ℕ) : ℤ) - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A335151.P14256763512055469100

/-!
# A335152: Number of vertices in polytope representing the number n.

The programs for A335152, there is no canonical definition to state claims against.
-/

/-! ## A335152.P15488800401209529301

`A064047(n+1)-C(A000523(n+1), 7)`
-/

namespace A335152.P15488800401209529301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064047 (n + 1) - (Nat.choose (A000523 (n + 1)).toNat 7 : ℤ)

end

end A335152.P15488800401209529301

/-! ## A335152.P14305304412202745342

`A064047(n+1)-(floor(sqrt(A178334(n+4)+1))-1)`
-/

namespace A335152.P14305304412202745342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064047 (n + 1) - (Int.sqrt (A178334 (n + 4) + 1) - 1)

end

end A335152.P14305304412202745342

/-! ## A335152.P10280238875577947798

`A064047(n+1)-A037954(A000523(n+1))`
-/

namespace A335152.P10280238875577947798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064047 (n + 1) - A037954 (A000523 (n + 1)).toNat

end

end A335152.P10280238875577947798

/-! ## A335152.P322944853811846050

`A064047(n+1)-A027430(A178334(n+4))`
-/

namespace A335152.P322944853811846050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064047 (n + 1) - A027430 (A178334 (n + 4)).toNat

end

end A335152.P322944853811846050

/-! ## A335152.P16862244602231785958

`A064047(n+1)-A064911(A178334(n+4)+1)`
-/

namespace A335152.P16862244602231785958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064047 (n + 1) - A064911 (A178334 (n + 4) + 1).toNat

end

end A335152.P16862244602231785958

/-! ## A335152.P2067018145447628352

`A027384(n+1)-A027427(n+1)-A037954(A000523(n+1))`
-/

namespace A335152.P2067018145447628352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) - A027427 (n + 1) - A037954 (A000523 (n + 1)).toNat

end

end A335152.P2067018145447628352

/-! ## A335152.P4754809059833147678

`A027424(n+1)-A027428(n+1)-A037954(A000523(n+1))`
-/

namespace A335152.P4754809059833147678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - A027428 (n + 1) - A037954 (A000523 (n + 1)).toNat

end

end A335152.P4754809059833147678

/-! ## A335152.P7294210248681636587

`A027384(n+1)-(A027428(n+1)+1)-A037954(A000523(n+1))`
-/

namespace A335152.P7294210248681636587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) - (A027428 (n + 1) + 1) - A037954 (A000523 (n + 1)).toNat

end

end A335152.P7294210248681636587

/-! ## A335152.P14145498017237564043

`A027424(n+1)+1-A027427(n+1)-A037954(A000523(n+1))`
-/

namespace A335152.P14145498017237564043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (1 - A027427 (n + 1)) - A037954 (A000523 (n + 1)).toNat

end

end A335152.P14145498017237564043

/-!
# A335153: a(1)=0; thereafter a(n) = (n-1)*sigma(n)-n*sigma(n-1) where sigma is the sum-of-divisors function A000203.

The programs for A335153, the canonical program `A335153.P11890562424750733531` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335153 has offset 1).

The definition of A335153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335153.P11890562424750733531

`n*A000203(n+1)-(n+1)*∑{d}[n, #]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335153

/-- `n*A000203(n+1)-(n+1)*∑{d}[n, #]` -/
def P11890562424750733531.Spec : Prop :=
  ∀ n, P11890562424750733531.a n = A335153 (n + 1)

theorem P11890562424750733531.correct : P11890562424750733531.Spec := by
  intro n
  simp only [A335153, Nat.add_sub_cancel]

end A335153

/-! ## A335153.P16224720465077906334

`(n+1)*A340793(n+1)-A000203(n+1)`
-/

namespace A335153.P16224720465077906334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340793 (n + 1) - A000203 (n + 1)

end

end A335153.P16224720465077906334

namespace A335153

/-- `(n+1)*A340793(n+1)-A000203(n+1)` -/
def P16224720465077906334.Spec : Prop :=
  ∀ n, P16224720465077906334.a n = A335153 (n + 1)

end A335153

/-! ## A335153.P153620014981923633

`n*Δ[∑{d}[n, #]]-∑{d}[n, #]`
-/

namespace A335153.P153620014981923633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A335153.P153620014981923633

namespace A335153

/-- `n*Δ[∑{d}[n, #]]-∑{d}[n, #]` -/
def P153620014981923633.Spec : Prop :=
  ∀ n, P153620014981923633.a n = A335153 (n + 1)

end A335153

/-! ## A335153.P17118320280625240958

`∑[2*n]*Δ[∑{d}[n, 1/#]]`
-/

namespace A335153.P17118320280625240958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 1 / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (f2 (n + 1) - f2 n)

end

end A335153.P17118320280625240958

namespace A335153

/-- `∑[2*n]*Δ[∑{d}[n, 1/#]]` -/
def P17118320280625240958.Spec : Prop :=
  ∀ n, P17118320280625240958.a n = (A335153 (n + 1) : ℚ)

end A335153

/-! ## A335153.P14790626090258039938

`(n+1)*n*Δ[∑{d}[n, 1/#]]`
-/

namespace A335153.P14790626090258039938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), 1 / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) * (f1 (n + 1) - f1 n))

end

end A335153.P14790626090258039938

namespace A335153

/-- `(n+1)*n*Δ[∑{d}[n, 1/#]]` -/
def P14790626090258039938.Spec : Prop :=
  ∀ n, P14790626090258039938.a n = (A335153 (n + 1) : ℚ)

end A335153

/-!
# A335155: Start with 1; if n is in the sequence, so are n+5 and 3*n.

The programs for A335155, there is no canonical definition to state claims against.
-/

/-! ## A335155.P7683768511535572534

`comp[A335365(n+1)-1]+1`
-/

namespace A335155.P7683768511535572534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335365 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335155.P7683768511535572534

/-! ## A335155.P10289749697967311120

`comp[∪[A335365(n+1), A008587(n)]]`
-/

namespace A335155.P10289749697967311120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335365 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335155.P10289749697967311120

/-! ## A335155.P11154533134974495163

`lt[2/3, A335392(n+1)]+1`
-/

namespace A335155.P11154533134974495163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A335155.P11154533134974495163

/-! ## A335155.P834652333501612279

`A000027(lt[0, A335392(n+1)]+1)`
-/

namespace A335155.P834652333501612279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A335155.P834652333501612279

/-! ## A335155.P9437258740252527297

`lt[2, A002977(A335392(n+1)+1)]+1`
-/

namespace A335155.P9437258740252527297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (A335392 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335155.P9437258740252527297

/-! ## A335155.P14946650077704619012

`A335393(A335409(n+1))`
-/

namespace A335155.P14946650077704619012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335393 (A335409 (n + 1)).toNat

end

end A335155.P14946650077704619012

/-!
# A335156: Three-dimensional array A(m;r,s) = Sum_{i=0..r} Sum_{j=0..s} (-1)^(i+j+r+s)*binomial(r,i)*binomial(s,j)*binomial(i*j,m) displayed as a series of square slices read across rows (see Comments for details).

The programs for A335156, there is no canonical definition to state claims against.
-/

/-! ## A335156.P2194237338477648424

`lcm(A008480(A097120(n)), A321912(n+1))`
-/

namespace A335156.P2194237338477648424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008480 (A097120 n).toNat) (A321912 (n + 1))

end

end A335156.P2194237338477648424

/-! ## A335156.P463074610085886752

`and(A001057(A336742(n)), A105114(n))`
-/

namespace A335156.P463074610085886752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001057 (A336742 n).toNat) (A105114 n)

end

end A335156.P463074610085886752

/-! ## A335156.P3241180082085953606

`A321912(n+1)*A333381(A062867(n))`
-/

namespace A335156.P3241180082085953606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321912 (n + 1) * A333381 (A062867 n).toNat

end

end A335156.P3241180082085953606

/-! ## A335156.P3840216948200941026

`and(A000188(A002944(n+1)), A120110(n))`
-/

namespace A335156.P3840216948200941026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000188 (A002944 (n + 1)).toNat) (A120110 n)

end

end A335156.P3840216948200941026

/-! ## A335156.P13910111793565504903

`and(A000188(A027611(n+1)), A120110(n))`
-/

namespace A335156.P13910111793565504903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000188 (A027611 (n + 1)).toNat) (A120110 n)

end

end A335156.P13910111793565504903

/-!
# A335159: a(n) = nim-product of 2^2 and 2^n.

The programs for A335159, the canonical program `A335159.P7427213693598052655` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335159 has offset 0).

The definition of A335159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335159.P7427213693598052655

`16*a(n-4)` with `a(0)=4, a(1)=8, a(2)=6, a(3)=11`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335159

/-- `16*a(n-4)` -/
def P7427213693598052655.Spec : Prop :=
  ∀ n, (P7427213693598052655.a n : ℤ) = A335159 n

theorem P7427213693598052655.correct : P7427213693598052655.Spec := by
  intro n
  simp only [A335159]

end A335159

/-! ## A335159.P4189817523067780394

`A223540(A152950(n+1)-A157928(n))`
-/

namespace A335159.P4189817523067780394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223540 (A152950 (n + 1) - A157928 n).toNat

end

end A335159.P4189817523067780394

namespace A335159

/-- `A223540(A152950(n+1)-A157928(n))` -/
def P4189817523067780394.Spec : Prop :=
  ∀ n, P4189817523067780394.a n = A335159 n

end A335159

/-! ## A335159.P8767147286110848979

`A223541(∑[n+3])`
-/

namespace A335159.P8767147286110848979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335159.P8767147286110848979

namespace A335159

/-- `A223541(∑[n+3])` -/
def P8767147286110848979.Spec : Prop :=
  ∀ n, P8767147286110848979.a n = A335159 n

end A335159

/-! ## A335159.P3532998637425036461

`A223543(A223542(∑[n+3]))`
-/

namespace A335159.P3532998637425036461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223543 (A223542 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A335159.P3532998637425036461

namespace A335159

/-- `A223543(A223542(∑[n+3]))` -/
def P3532998637425036461.Spec : Prop :=
  ∀ n, P3532998637425036461.a n = A335159 n

end A335159

/-! ## A335159.P2544036169683852902

`char[A175126(n)]*A223541(A027379(n+1))`
-/

namespace A335159.P2544036169683852902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223541 (A027379 (n + 1)).toNat

end

end A335159.P2544036169683852902

namespace A335159

/-- `char[A175126(n)]*A223541(A027379(n+1))` -/
def P2544036169683852902.Spec : Prop :=
  ∀ n, P2544036169683852902.a n = A335159 n

end A335159

/-! ## A335159.P1090967828528911293

`A223541(A027379(n+1))+A002262(A057944(n))`
-/

namespace A335159.P1090967828528911293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (A027379 (n + 1)).toNat + A002262 (A057944 n).toNat

end

end A335159.P1090967828528911293

namespace A335159

/-- `A223541(A027379(n+1))+A002262(A057944(n))` -/
def P1090967828528911293.Spec : Prop :=
  ∀ n, P1090967828528911293.a n = A335159 n

end A335159

/-!
# A335160: a(n) = nim-product of 2^3 and 2^n.

The programs for A335160, the canonical program `A335160.P11072161194662861298` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335160 has offset 0).

The definition of A335160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335160.P11072161194662861298

`16*a(n-4)` with `a(0)=8, a(1)=12, a(2)=11, a(3)=13`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335160

/-- `16*a(n-4)` -/
def P11072161194662861298.Spec : Prop :=
  ∀ n, (P11072161194662861298.a n : ℤ) = A335160 n

theorem P11072161194662861298.correct : P11072161194662861298.Spec := by
  intro n
  simp only [A335160]

end A335160

/-! ## A335160.P14205936130709070377

`A223541(∑[n+4]+2)`
-/

namespace A335160.P14205936130709070377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A335160.P14205936130709070377

namespace A335160

/-- `A223541(∑[n+4]+2)` -/
def P14205936130709070377.Spec : Prop :=
  ∀ n, P14205936130709070377.a n = A335160 n

end A335160

/-! ## A335160.P10504764053245531677

`abs(1-A223541(A167614(n+2)))+1`
-/

namespace A335160.P10504764053245531677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A223541 (A167614 (n + 2)).toNat| + 1

end

end A335160.P10504764053245531677

namespace A335160

/-- `abs(1-A223541(A167614(n+2)))+1` -/
def P10504764053245531677.Spec : Prop :=
  ∀ n, P10504764053245531677.a n = A335160 n

end A335160

/-! ## A335160.P4862744976821567885

`lcm(A003842(n), A223541(A167614(n+2)))`
-/

namespace A335160.P4862744976821567885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003842 n) (A223541 (A167614 (n + 2)).toNat)

end

end A335160.P4862744976821567885

namespace A335160

/-- `lcm(A003842(n), A223541(A167614(n+2)))` -/
def P4862744976821567885.Spec : Prop :=
  ∀ n, (P4862744976821567885.a n : ℤ) = A335160 n

end A335160

/-! ## A335160.P3815682552251151576

`A223541(A167614(n+2))%A278304(n+1)`
-/

namespace A335160.P3815682552251151576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223541 (A167614 (n + 2)).toNat) (A278304 (n + 1))

end

end A335160.P3815682552251151576

namespace A335160

/-- `A223541(A167614(n+2))%A278304(n+1)` -/
def P3815682552251151576.Spec : Prop :=
  ∀ n, P3815682552251151576.a n = A335160 n

end A335160

/-! ## A335160.P16674230861841382832

`or(1, A010055(n+1))*A223541(A167614(n+2))`
-/

namespace A335160.P16674230861841382832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010055 (n + 1)) * A223541 (A167614 (n + 2)).toNat

end

end A335160.P16674230861841382832

namespace A335160

/-- `or(1, A010055(n+1))*A223541(A167614(n+2))` -/
def P16674230861841382832.Spec : Prop :=
  ∀ n, P16674230861841382832.a n = A335160 n

end A335160

/-! ## A335160.P14593689807996347016

`A223541(A167614(n+2))*A267533(n²)`
-/

namespace A335160.P14593689807996347016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (A167614 (n + 2)).toNat * A267533 (n ^ 2)

end

end A335160.P14593689807996347016

namespace A335160

/-- `A223541(A167614(n+2))*A267533(n²)` -/
def P14593689807996347016.Spec : Prop :=
  ∀ n, P14593689807996347016.a n = A335160 n

end A335160

/-! ## A335160.P358772172003701086

`A223541(A167614(n+2))+A000007(A140140(n+13))`
-/

namespace A335160.P358772172003701086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (A167614 (n + 2)).toNat + A000007 (A140140 (n + 13)).toNat

end

end A335160.P358772172003701086

namespace A335160

/-- `A223541(A167614(n+2))+A000007(A140140(n+13))` -/
def P358772172003701086.Spec : Prop :=
  ∀ n, P358772172003701086.a n = A335160 n

end A335160

/-!
# A335161: a(n) = nim-product of 2^4 and 2^n.

The programs for A335161, the canonical program `A335161.P1297910228939913137` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335161 has offset 0).

The definition of A335161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335161.P1297910228939913137

`256*a(n-8)` with `a(0)=16, a(1)=32, a(2)=64, a(3)=128, a(4)=24, a(5)=44, a(6)=75, a(7)=141`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335161

/-- `256*a(n-8)` -/
def P1297910228939913137.Spec : Prop :=
  ∀ n, (P1297910228939913137.a n : ℤ) = A335161 n

theorem P1297910228939913137.correct : P1297910228939913137.Spec := by
  intro n
  simp only [A335161]

end A335161

/-! ## A335161.P9871379322179071212

`A223541(∑[n+5]+5)`
-/

namespace A335161.P9871379322179071212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A335161.P9871379322179071212

namespace A335161

/-- `A223541(∑[n+5]+5)` -/
def P9871379322179071212.Spec : Prop :=
  ∀ n, P9871379322179071212.a n = A335161 n

end A335161

/-! ## A335161.P11836098775708956398

`A223543(A223542(∑[n+5]+5))`
-/

namespace A335161.P11836098775708956398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223543 (A223542 (∑ j ∈ Finset.range (n + 1), f1 j + 5)).toNat

end

end A335161.P11836098775708956398

namespace A335161

/-- `A223543(A223542(∑[n+5]+5))` -/
def P11836098775708956398.Spec : Prop :=
  ∀ n, P11836098775708956398.a n = A335161 n

end A335161

/-! ## A335161.P17149442275422898098

`A223541(eq[5, A002260(n+1)])%(4^(n+3))`
-/

namespace A335161.P17149442275422898098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (4 ^ (n + 3) : ℤ)

end

end A335161.P17149442275422898098

namespace A335161

/-- `A223541(eq[5, A002260(n+1)])%(4^(n+3))` -/
def P17149442275422898098.Spec : Prop :=
  ∀ n, P17149442275422898098.a n = A335161 n

end A335161

/-! ## A335161.P8281266914654653390

`A223541(eq[5, A002260(n+1)])+A000007(n+1)`
-/

namespace A335161.P8281266914654653390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A335161.P8281266914654653390

namespace A335161

/-- `A223541(eq[5, A002260(n+1)])+A000007(n+1)` -/
def P8281266914654653390.Spec : Prop :=
  ∀ n, P8281266914654653390.a n = A335161 n

end A335161

/-! ## A335161.P891909558319732257

`A000034(2*n)*A223541(eq[5, A002260(n+1)])`
-/

namespace A335161.P891909558319732257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A223541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335161.P891909558319732257

namespace A335161

/-- `A000034(2*n)*A223541(eq[5, A002260(n+1)])` -/
def P891909558319732257.Spec : Prop :=
  ∀ n, P891909558319732257.a n = A335161 n

end A335161

/-!
# A335162: Array read by upward antidiagonals: T(n,k) (n >= 0, k >= 0) = nim k-th power of n.

The programs for A335162, there is no canonical definition to state claims against.
-/

/-! ## A335162.P14851286331670623265

`gcd(A055570(A118350(n)), A339350(n))`
-/

namespace A335162.P14851286331670623265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055570 (A118350 n).toNat) (A339350 n)

end

end A335162.P14851286331670623265

/-! ## A335162.P711653516146399383

`A333632(A277504(n)+A173018(n))`
-/

namespace A335162.P711653516146399383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A277504 n + A173018 n).toNat

end

end A335162.P711653516146399383

/-! ## A335162.P17053662214445923303

`A000030(A071919(n)^A331509(n))`
-/

namespace A335162.P17053662214445923303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A071919 n : ℚ) ^ (A331509 n : ℤ))).toNat

end

end A335162.P17053662214445923303

/-! ## A335162.P14837001664735311206

`A000030(A082601(n)^A331509(n))`
-/

namespace A335162.P14837001664735311206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A082601 n : ℚ) ^ (A331509 n : ℤ))).toNat

end

end A335162.P14837001664735311206

/-! ## A335162.P5773495087815764949

`A000030(A261835(n)^A331509(n))`
-/

namespace A335162.P5773495087815764949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A261835 n : ℚ) ^ (A331509 n : ℤ))).toNat

end

end A335162.P5773495087815764949

/-!
# A335163: Nim n-th power of 4.

The programs for A335163, there is no canonical definition to state claims against.
-/

/-! ## A335163.P3997562732060420490

`A004469(a(n-1))` with `a(0)=1`
-/

namespace A335163.P3997562732060420490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004469 (a (n - 1)).toNat

end

end A335163.P3997562732060420490

/-!
# A335164: Nim n-th power of 5.

The programs for A335164, there is no canonical definition to state claims against.
-/

/-! ## A335164.P3158121192142743680

`A004470(a(n-1))` with `a(0)=1`
-/

namespace A335164.P3158121192142743680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004470 (a (n - 1)).toNat

end

end A335164.P3158121192142743680

/-!
# A335165: Nim n-th power of 6.

The programs for A335165, the canonical program `A335165.P17686175685442479594` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335165 has offset 0).

The definition of A335165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335165.P17686175685442479594

`xor(a(n-3), a(n-4))` with `a(0)=1, a(1)=6, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335165

/-- `xor(a(n-3), a(n-4))` -/
def P17686175685442479594.Spec : Prop :=
  ∀ n, (P17686175685442479594.a n : ℤ) = A335165 n

theorem P17686175685442479594.correct : P17686175685442479594.Spec := by
  intro n
  simp only [A335165]

end A335165

/-!
# A335166: Nim n-th power of 7.

The programs for A335166, the canonical program `A335166.P13242689076970776492` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335166 has offset 0).

The definition of A335166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335166.P13242689076970776492

`xor(a(n-3), a(n-4))` with `a(0)=1, a(1)=7, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335166

/-- `xor(a(n-3), a(n-4))` -/
def P13242689076970776492.Spec : Prop :=
  ∀ n, (P13242689076970776492.a n : ℤ) = A335166 n

theorem P13242689076970776492.correct : P13242689076970776492.Spec := by
  intro n
  simp only [A335166]

end A335166

/-!
# A335167: Nim n-th power of 8.

The programs for A335167, the canonical program `A335167.P8933431958376342681` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335167 has offset 0).

The definition of A335167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335167.P8933431958376342681

`a(n-5)` with `a(0)=1, a(1)=8, a(2)=13, a(3)=14, a(4)=10`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335167

/-- `a(n-5)` -/
def P8933431958376342681.Spec : Prop :=
  ∀ n, (P8933431958376342681.a n : ℤ) = A335167 n

theorem P8933431958376342681.correct : P8933431958376342681.Spec := by
  intro n
  simp only [A335167]

end A335167

/-!
# A335168: Nim n-th power of 9.

The programs for A335168, there is no canonical definition to state claims against.
-/

/-! ## A335168.P4447639716725528938

`A004474(a(n-1))` with `a(0)=1`
-/

namespace A335168.P4447639716725528938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004474 (a (n - 1)).toNat

end

end A335168.P4447639716725528938

/-!
# A335169: Nim n-th power of 10.

The programs for A335169, the canonical program `A335169.P16153040150424045664` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335169 has offset 0).

The definition of A335169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335169.P16153040150424045664

`a(n-5)` with `a(0)=1, a(1)=10, a(2)=14, a(3)=13, a(4)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335169

/-- `a(n-5)` -/
def P16153040150424045664.Spec : Prop :=
  ∀ n, (P16153040150424045664.a n : ℤ) = A335169 n

theorem P16153040150424045664.correct : P16153040150424045664.Spec := by
  intro n
  simp only [A335169]

end A335169

/-!
# A335170: Nim-cube of n.

The programs for A335170, there is no canonical definition to state claims against.
-/

/-! ## A335170.P14680205130312539102

`A335172(A160679(n))`
-/

namespace A335170.P14680205130312539102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335172 (A160679 n).toNat

end

end A335170.P14680205130312539102

/-! ## A335170.P12541198758416636254

`A335536(A335536(A335172(A006042(n))))`
-/

namespace A335170.P12541198758416636254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335536 (A335536 (A335172 (A006042 n).toNat).toNat).toNat

end

end A335170.P12541198758416636254

/-! ## A335170.P4121864626452722362

`A335535(A335535(A335535(A006042(A335172(n)))))`
-/

namespace A335170.P4121864626452722362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335535 (A335535 (A335535 (A006042 (A335172 n).toNat).toNat).toNat).toNat

end

end A335170.P4121864626452722362

/-! ## A335170.P2764889350290999775

`A335162(∑[n+3]+6)`
-/

namespace A335170.P2764889350290999775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A335170.P2764889350290999775

/-! ## A335170.P9653141318545181074

`or(char[1], A335162(A167614(n+2)))`
-/

namespace A335170.P9653141318545181074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A335162 (A167614 (n + 2)).toNat)

end

end A335170.P9653141318545181074

/-! ## A335170.P9905397751798373202

`or(char[25], A335162(A052905(n)+8))`
-/

namespace A335170.P9905397751798373202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A335162 (A052905 n + 8).toNat)

end

end A335170.P9905397751798373202

/-! ## A335170.P8476359393702315841

`∑{d}[A335162(A167614(n+2)), A000010(#)]`
-/

namespace A335170.P8476359393702315841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A335170.P8476359393702315841

/-! ## A335170.P14682948696859003820

`∑{d}[A335162(A052905(n)+8), A000010(#)]`
-/

namespace A335170.P14682948696859003820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A052905 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A335170.P14682948696859003820

/-! ## A335170.P8284689358766879034

`A335162(A167614(n+2))+A000007(n+1)`
-/

namespace A335170.P8284689358766879034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A335170.P8284689358766879034

/-! ## A335170.P5732498650472211415

`A335162(A167614(n+2))+A000038(n+1)`
-/

namespace A335170.P5732498650472211415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167614 (n + 2)).toNat + A000038 (n + 1)

end

end A335170.P5732498650472211415

/-! ## A335170.P9386843817143756547

`A335162(A167614(n+2))+A000035(2*n)`
-/

namespace A335170.P9386843817143756547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167614 (n + 2)).toNat + A000035 (2 * n)

end

end A335170.P9386843817143756547

/-! ## A335170.P9155375505495640242

`A335162(A052905(n)+8)+A000007(n+1)`
-/

namespace A335170.P9155375505495640242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A052905 n + 8).toNat + A000007 (n + 1)

end

end A335170.P9155375505495640242

/-! ## A335170.P8959583488211231513

`A335162(A167614(n+2))%A000041(n+6)`
-/

namespace A335170.P8959583488211231513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335162 (A167614 (n + 2)).toNat) (A000041 (n + 6))

end

end A335170.P8959583488211231513

/-! ## A335170.P15478655184228384915

`gcd(2, A000040(n+1))*A335162(A052905(n)+8)`
-/

namespace A335170.P15478655184228384915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A335162 (A052905 n + 8).toNat

end

end A335170.P15478655184228384915

/-! ## A335170.P13501170647936152506

`A000041(C(2, n+1))*A335162(A052905(n)+8)`
-/

namespace A335170.P13501170647936152506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A335162 (A052905 n + 8).toNat

end

end A335170.P13501170647936152506

/-! ## A335170.P17855917104514917353

`A001222(A040971(n+1))*A335162(A052905(n)+8)`
-/

namespace A335170.P17855917104514917353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A040971 (n + 1)).toNat * A335162 (A052905 n + 8).toNat

end

end A335170.P17855917104514917353

/-!
# A335171: Nim fifth-power of n.

The programs for A335171, there is no canonical definition to state claims against.
-/

/-! ## A335171.P15679336302767774069

`A335162(A167499(n+4))`
-/

namespace A335171.P15679336302767774069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167499 (n + 4)).toNat

end

end A335171.P15679336302767774069

/-! ## A335171.P877135605156797727

`A335162(A056115(n)+20)`
-/

namespace A335171.P877135605156797727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A056115 n + 20).toNat

end

end A335171.P877135605156797727

/-! ## A335171.P16296007229429263657

`A335162(A167614(n+4)+2)`
-/

namespace A335171.P16296007229429263657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167614 (n + 4) + 2).toNat

end

end A335171.P16296007229429263657

/-! ## A335171.P9756533346974457151

`A335162(A340266(n+4)+3)`
-/

namespace A335171.P9756533346974457151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A340266 (n + 4) + 3).toNat

end

end A335171.P9756533346974457151

/-! ## A335171.P13769848883223018619

`A335162(A133263(n+5)+3)`
-/

namespace A335171.P13769848883223018619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A133263 (n + 5) + 3).toNat

end

end A335171.P13769848883223018619

/-! ## A335171.P9498975041273065838

`A335162(A000124(n+5)+4)`
-/

namespace A335171.P9498975041273065838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000124 (n + 5) + 4).toNat

end

end A335171.P9498975041273065838

/-! ## A335171.P6125872042230112286

`A335162(A000096(n+4)+6)`
-/

namespace A335171.P6125872042230112286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000096 (n + 4) + 6).toNat

end

end A335171.P6125872042230112286

/-! ## A335171.P7782115467760632553

`A335162(A000217(n+5)+5)`
-/

namespace A335171.P7782115467760632553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000217 (n + 5) + 5).toNat

end

end A335171.P7782115467760632553

/-! ## A335171.P16546668307034644008

`A335162(A052905(n+2)+10)`
-/

namespace A335171.P16546668307034644008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A052905 (n + 2) + 10).toNat

end

end A335171.P16546668307034644008

/-! ## A335171.P11313745046972980930

`A335162(Δ[A023545(n+1)]+9)`
-/

namespace A335171.P11313745046972980930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (f1 (n + 1) - f1 n + 9).toNat

end

end A335171.P11313745046972980930

/-! ## A335171.P1073129953781875198

`A335162(A055999(n+4)-2*(n+1))`
-/

namespace A335171.P1073129953781875198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A335171.P1073129953781875198

/-!
# A335172: Nim sixth-power of n.

The programs for A335172, there is no canonical definition to state claims against.
-/

/-! ## A335172.P10135247317715898348

`A335170(A006042(n))`
-/

namespace A335172.P10135247317715898348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335170 (A006042 n).toNat

end

end A335172.P10135247317715898348

/-! ## A335172.P7351284429154116357

`A335536(A335170(A160679(A160679(n))))`
-/

namespace A335172.P7351284429154116357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335536 (A335170 (A160679 (A160679 n).toNat).toNat).toNat

end

end A335172.P7351284429154116357

/-! ## A335172.P17764105475066271525

`A335536(A335536(A335536(A335170(n))))`
-/

namespace A335172.P17764105475066271525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335536 (A335536 (A335536 (A335170 n).toNat).toNat).toNat

end

end A335172.P17764105475066271525

/-! ## A335172.P1546859261767897487

`A006042(A335162(∑[n+3]+6))`
-/

namespace A335172.P1546859261767897487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (A335162 (∑ j ∈ Finset.range (n + 1), f1 j + 6)).toNat

end

end A335172.P1546859261767897487

/-! ## A335172.P1656563715471453497

`A335162(A166136(n+5))`
-/

namespace A335172.P1656563715471453497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A166136 (n + 5)).toNat

end

end A335172.P1656563715471453497

/-! ## A335172.P12101551826710898258

`A335162(A167499(n+5)+1)`
-/

namespace A335172.P12101551826710898258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167499 (n + 5) + 1).toNat

end

end A335172.P12101551826710898258

/-! ## A335172.P12288581774370569070

`A335162(A167487(n+5)-1)`
-/

namespace A335172.P12288581774370569070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167487 (n + 5) - 1).toNat

end

end A335172.P12288581774370569070

/-! ## A335172.P4823280684259758983

`A335162(A340266(n+5)+4)`
-/

namespace A335172.P4823280684259758983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A340266 (n + 5) + 4).toNat

end

end A335172.P4823280684259758983

/-! ## A335172.P16436432353090592830

`A335162(A133263(n+6)+4)`
-/

namespace A335172.P16436432353090592830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A133263 (n + 6) + 4).toNat

end

end A335172.P16436432353090592830

/-! ## A335172.P9478190659984485698

`A335162(A000124(n+6)+5)`
-/

namespace A335172.P9478190659984485698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000124 (n + 6) + 5).toNat

end

end A335172.P9478190659984485698

/-! ## A335172.P10388046454914815216

`A335162(A000096(n+5)+7)`
-/

namespace A335172.P10388046454914815216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000096 (n + 5) + 7).toNat

end

end A335172.P10388046454914815216

/-! ## A335172.P7554616507078933793

`A335162(A000217(n+6)+6)`
-/

namespace A335172.P7554616507078933793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000217 (n + 6) + 6).toNat

end

end A335172.P7554616507078933793

/-! ## A335172.P14437608077528273063

`A335162(A055998(n+4)+9)`
-/

namespace A335172.P14437608077528273063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A055998 (n + 4) + 9).toNat

end

end A335172.P14437608077528273063

/-! ## A335172.P522130752769232462

`A335162(A046691(n+4)+10)`
-/

namespace A335172.P522130752769232462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A046691 (n + 4) + 10).toNat

end

end A335172.P522130752769232462

/-! ## A335172.P2897159856423602865

`A335162(A052905(n+3)+11)`
-/

namespace A335172.P2897159856423602865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A052905 (n + 3) + 11).toNat

end

end A335172.P2897159856423602865

/-! ## A335172.P4443250187008635211

`A335162(Δ[A023551(n+1)]+12)`
-/

namespace A335172.P4443250187008635211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (f1 (n + 1) - f1 n + 12).toNat

end

end A335172.P4443250187008635211

/-!
# A335173: Nim seventh-power of n.

The programs for A335173, there is no canonical definition to state claims against.
-/

/-! ## A335173.P5557665893617836035

`A335162(A167487(n+6))`
-/

namespace A335173.P5557665893617836035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167487 (n + 6)).toNat

end

end A335173.P5557665893617836035

/-! ## A335173.P9968570028696172363

`A335162(A167499(n+6)+2)`
-/

namespace A335173.P9968570028696172363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167499 (n + 6) + 2).toNat

end

end A335173.P9968570028696172363

/-! ## A335173.P2509005289163630890

`A335162(A167614(n+6)+4)`
-/

namespace A335173.P2509005289163630890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167614 (n + 6) + 4).toNat

end

end A335173.P2509005289163630890

/-! ## A335173.P5384507704179733043

`A335162(A133263(n+7)+5)`
-/

namespace A335173.P5384507704179733043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A133263 (n + 7) + 5).toNat

end

end A335173.P5384507704179733043

/-! ## A335173.P7561439034767858590

`A335162(A000124(n+7)+6)`
-/

namespace A335173.P7561439034767858590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000124 (n + 7) + 6).toNat

end

end A335173.P7561439034767858590

/-! ## A335173.P12620869910160505047

`A335162(A000096(n+6)+8)`
-/

namespace A335173.P12620869910160505047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000096 (n + 6) + 8).toNat

end

end A335173.P12620869910160505047

/-! ## A335173.P5585958696443743395

`A335162(A000217(n+7)+7)`
-/

namespace A335173.P5585958696443743395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000217 (n + 7) + 7).toNat

end

end A335173.P5585958696443743395

/-! ## A335173.P1946089792941541559

`A335162(A046691(n+5)+11)`
-/

namespace A335173.P1946089792941541559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A046691 (n + 5) + 11).toNat

end

end A335173.P1946089792941541559

/-! ## A335173.P12938949323851527576

`A335162(A055999(n+4)+13)`
-/

namespace A335173.P12938949323851527576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A055999 (n + 4) + 13).toNat

end

end A335173.P12938949323851527576

/-! ## A335173.P16863299438970369372

`A335162(A056000(n+8)-A016885(n+6))`
-/

namespace A335173.P16863299438970369372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A056000 (n + 8) - A016885 (n + 6)).toNat

end

end A335173.P16863299438970369372

/-!
# A335174: Herscovici's array for S_d lexicodes, read by antidiagonals.

The programs for A335174, there is no canonical definition to state claims against.
-/

/-! ## A335174.P2114328677554727668

`A048309(A059922(n))%8`
-/

namespace A335174.P2114328677554727668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048309 (A059922 n).toNat) 8

end

end A335174.P2114328677554727668

/-! ## A335174.P10691537881807544923

`gcd(A049695(n), A335069(n+1))`
-/

namespace A335174.P10691537881807544923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049695 n) (A335069 (n + 1))

end

end A335174.P10691537881807544923

/-! ## A335174.P14177869745491966828

`dr(A207333(A123610(n)))`
-/

namespace A335174.P14177869745491966828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A207333 (A123610 n).toNat)

end

end A335174.P14177869745491966828

/-! ## A335174.P11485310491897112749

`A100661(A174527(n))`
-/

namespace A335174.P11485310491897112749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A174527 n).toNat

end

end A335174.P11485310491897112749

/-! ## A335174.P15249178462551984822

`A105332(A176198(n))`
-/

namespace A335174.P15249178462551984822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105332 (A176198 n).toNat

end

end A335174.P15249178462551984822

/-!
# A335175: Number of 1-fold spreads partitioning the lines in PG(2*n-1,4).

The programs for A335175, there is no canonical definition to state claims against.
-/

/-! ## A335175.P13161884843856833684

`A335177(n+2)-A335176(n+2)`
-/

namespace A335175.P13161884843856833684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335177 (n + 2) - A335176 (n + 2)

end

end A335175.P13161884843856833684

/-! ## A335175.P3809684463323815268

`A002450(2*n+3)%A335176(n+2)`
-/

namespace A335175.P3809684463323815268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002450 (2 * n + 3)) (A335176 (n + 2))

end

end A335175.P3809684463323815268

/-! ## A335175.P6651060468192916630

`A335177(A020725(n+1))%A335176(n+2)`
-/

namespace A335175.P6651060468192916630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335177 (A020725 (n + 1)).toNat) (A335176 (n + 2))

end

end A335175.P6651060468192916630

/-! ## A335175.P8743723243047415583

`A335177(n+2)%or(A088950(n), A335176(n+2))`
-/

namespace A335175.P8743723243047415583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335177 (n + 2)) (Int.lor (A088950 n) (A335176 (n + 2)))

end

end A335175.P8743723243047415583

/-!
# A335176: Number of 5-fold spreads partitioning the lines in PG(2*n-1,4).

The programs for A335176, there is no canonical definition to state claims against.
-/

/-! ## A335176.P10305889726883479926

`A335177(n+2)-A335175(n+2)`
-/

namespace A335176.P10305889726883479926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335177 (n + 2) - A335175 (n + 2)

end

end A335176.P10305889726883479926

/-!
# A335177: a(n) = A335175(n) + A335176(n).

The programs for A335177, there is no canonical definition to state claims against.
-/

/-! ## A335177.P16407223347990801744

`A335175(n+2)+A335176(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335177.P16407223347990801744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335175 (n + 2) + A335176 (n + 2)

end

end A335177.P16407223347990801744

/-!
# A335179: a(n) = A115004(n) - A334701(n).

The programs for A335179, there is no canonical definition to state claims against.
-/

/-! ## A335179.P4373932682777484841

`A115004(n+1)-A334701(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335179.P4373932682777484841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115004 (n + 1) - A334701 (n + 1)

end

end A335179.P4373932682777484841

/-! ## A335179.P16691788920025943968

`A335677(n+1)+A331761(n+1)`
-/

namespace A335179.P16691788920025943968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335677 (n + 1) + A331761 (n + 1)

end

end A335179.P16691788920025943968

/-! ## A335179.P7296525114438070165

`A320541(∑[n+1])-A334701(n+1)`
-/

namespace A335179.P7296525114438070165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320541 (∑ j ∈ Finset.range (n + 1), f1 j) - A334701 (n + 1)

end

end A335179.P7296525114438070165

/-! ## A335179.P8717892092760941209

`A115004(n+1)-record[A333275(n+3)]`
-/

namespace A335179.P8717892092760941209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115004 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335179.P8717892092760941209

/-! ## A335179.P4424003210682999681

`A088658(n+2)/4-A334701(n+1)`
-/

namespace A335179.P4424003210682999681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088658 (n + 2) : ℚ) / 4 - (A334701 (n + 1) : ℚ)

end

end A335179.P4424003210682999681

/-!
# A335180: Define b(n) by 1/cm(w) = Sum_{n >= 0} b(3*n)*w^(3*n), where cm(w) is the elliptic function defined in A104134; a(n) = numerator of b(3*n).

The programs for A335180, there is no canonical definition to state claims against.
-/

/-! ## A335180.P10174599684355825625

`A035327(2*((n+1)!-(n+1)))`
-/

namespace A335180.P10174599684355825625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (2 * ((Nat.factorial (n + 1) : ℤ) - (n + 1 : ℤ))).toNat

end

end A335180.P10174599684355825625

/-! ## A335180.P6066701697038289917

`or(1, A229655(A349310(n)))`
-/

namespace A335180.P6066701697038289917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229655 (A349310 n).toNat)

end

end A335180.P6066701697038289917

/-!
# A335181: Define b(n) by 1/cm(w) = Sum_{n >= 0} b(3*n)*w^(3*n), where cm(w) is the elliptic function defined in A104134; a(n) = denominator of b(3*n).

The programs for A335181, there is no canonical definition to state claims against.
-/

/-! ## A335181.P10138941161304530698

`∏{p}[A101370(n+1), A056569(#)]`
-/

namespace A335181.P10138941161304530698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056569 p

end

end A335181.P10138941161304530698

/-!
# A335182: Sum of the refactorable divisors of n.

The programs for A335182, the canonical program `A335182.P8782257902307896353` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335182 has offset 1).

The definition of A335182 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349322, A349658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335182.P8782257902307896353

`A349322(n+1)-A349658(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A335182

/-- `A349322(n+1)-A349658(n+1)` -/
def P8782257902307896353.Spec : Prop :=
  ∀ n, P8782257902307896353.a n = A335182 (n + 1)

theorem P8782257902307896353.correct : P8782257902307896353.Spec := by
  intro n
  simp only [A335182, Nat.add_sub_cancel]

end A335182

/-! ## A335182.P9316582353007777057

`∑{d}[n+1, #*A336040(#)]`
-/

namespace A335182.P9316582353007777057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A336040 d

end

end A335182.P9316582353007777057

namespace A335182

/-- `∑{d}[n+1, #*A336040(#)]` -/
def P9316582353007777057.Spec : Prop :=
  ∀ n, P9316582353007777057.a n = A335182 (n + 1)

end A335182

/-! ## A335182.P5095137637860318019

`∑{d}[n+1, #]-∑{d}[n+1, #%lcm(#, A000005(#))]`
-/

namespace A335182.P5095137637860318019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d % Int.lcm (d : ℤ) (A000005 d) : ℕ) : ℤ)

end

end A335182.P5095137637860318019

namespace A335182

/-- `∑{d}[n+1, #]-∑{d}[n+1, #%lcm(#, A000005(#))]` -/
def P5095137637860318019.Spec : Prop :=
  ∀ n, P5095137637860318019.a n = A335182 (n + 1)

end A335182

/-! ## A335182.P7923730064209687724

`Δ[A160664(n)]-A349659(n+1)`
-/

namespace A335182.P7923730064209687724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349659 (n + 1)

end

end A335182.P7923730064209687724

namespace A335182

/-- `Δ[A160664(n)]-A349659(n+1)` -/
def P7923730064209687724.Spec : Prop :=
  ∀ n, P7923730064209687724.a n = A335182 (n + 1)

end A335182

/-! ## A335182.P17174534835674786554

`A000203(n+1)-A349659(n+1)`
-/

namespace A335182.P17174534835674786554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A349659 (n + 1)

end

end A335182.P17174534835674786554

namespace A335182

/-- `A000203(n+1)-A349659(n+1)` -/
def P17174534835674786554.Spec : Prop :=
  ∀ n, P17174534835674786554.a n = A335182 (n + 1)

end A335182

/-! ## A335182.P14088533289406580629

`A074400(n+1)/2-A349659(n+1)`
-/

namespace A335182.P14088533289406580629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A349659 (n + 1) : ℚ)

end

end A335182.P14088533289406580629

namespace A335182

/-- `A074400(n+1)/2-A349659(n+1)` -/
def P14088533289406580629.Spec : Prop :=
  ∀ n, P14088533289406580629.a n = (A335182 (n + 1) : ℚ)

end A335182

/-! ## A335182.P8651700548939493393

`A336041(n+1)+A349322(n+1)-A000005(n+1)`
-/

namespace A335182.P8651700548939493393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349322 (n + 1) - A000005 (n + 1))

end

end A335182.P8651700548939493393

namespace A335182

/-- `A336041(n+1)+A349322(n+1)-A000005(n+1)` -/
def P8651700548939493393.Spec : Prop :=
  ∀ n, P8651700548939493393.a n = A335182 (n + 1)

end A335182

/-! ## A335182.P13800639859684715513

`A349322(n+1)-(A001227(n+1)*A001511(n+1)-A336041(n+1))`
-/

namespace A335182.P13800639859684715513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349322 (n + 1) - (A001227 (n + 1) * A001511 (n + 1) - A336041 (n + 1))

end

end A335182.P13800639859684715513

namespace A335182

/-- `A349322(n+1)-(A001227(n+1)*A001511(n+1)-A336041(n+1))` -/
def P13800639859684715513.Spec : Prop :=
  ∀ n, P13800639859684715513.a n = A335182 (n + 1)

end A335182

/-! ## A335182.P8558552156633220061

`A127057(A000124(n))-A349659(n+1)`
-/

namespace A335182.P8558552156633220061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n).toNat - A349659 (n + 1)

end

end A335182.P8558552156633220061

namespace A335182

/-- `A127057(A000124(n))-A349659(n+1)` -/
def P8558552156633220061.Spec : Prop :=
  ∀ n, P8558552156633220061.a n = A335182 (n + 1)

end A335182

/-! ## A335182.P8158411578311959177

`A209291(n+1)-A368817(n+1)`
-/

namespace A335182.P8158411578311959177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209291 (n + 1) - A368817 (n + 1)

end

end A335182.P8158411578311959177

namespace A335182

/-- `A209291(n+1)-A368817(n+1)` -/
def P8158411578311959177.Spec : Prop :=
  ∀ n, P8158411578311959177.a n = A335182 (n + 1)

end A335182

/-!
# A335184: a(n) is the number of subsets of {1,2,...,n} with at least two elements and the difference between successive elements at least 6.

The programs for A335184, the canonical program `A335184.P12685914524627014550` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335184 has offset 0).

The definition of A335184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335184.P12685914524627014550

`record[A017900(n)]-(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335184

/-- `record[A017900(n)]-(n+1)` -/
def P12685914524627014550.Spec : Prop :=
  ∀ n, P12685914524627014550.a n = A335184 n

theorem P12685914524627014550.correct : P12685914524627014550.Spec := by
  intro n
  simp only [A335184]

end A335184

/-! ## A335184.P3365424363104348491

`A005708(n+5)-(n+1)`
-/

namespace A335184.P3365424363104348491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (n + 5) - (n + 1 : ℤ)

end

end A335184.P3365424363104348491

namespace A335184

/-- `A005708(n+5)-(n+1)` -/
def P3365424363104348491.Spec : Prop :=
  ∀ n, P3365424363104348491.a n = A335184 n

end A335184

/-! ## A335184.P16559993446399347274

`A017900(n+11)-(n+1)`
-/

namespace A335184.P16559993446399347274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (n + 11) - (n + 1 : ℤ)

end

end A335184.P16559993446399347274

namespace A335184

/-- `A017900(n+11)-(n+1)` -/
def P16559993446399347274.Spec : Prop :=
  ∀ n, P16559993446399347274.a n = A335184 n

end A335184

/-! ## A335184.P5070374754460634743

`record[A017900(A028310(n)-1)]-n-1`
-/

namespace A335184.P5070374754460634743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) - 1

end

end A335184.P5070374754460634743

namespace A335184

/-- `record[A017900(A028310(n)-1)]-n-1` -/
def P5070374754460634743.Spec : Prop :=
  ∀ n, P5070374754460634743.a n = A335184 n

end A335184

/-! ## A335184.P15281774413534916603

`∑[A005708(n)]-A005708(n)-n`
-/

namespace A335184.P15281774413534916603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005708 n - (n : ℤ)

end

end A335184.P15281774413534916603

namespace A335184

/-- `∑[A005708(n)]-A005708(n)-n` -/
def P15281774413534916603.Spec : Prop :=
  ∀ n, P15281774413534916603.a n = A335184 n

end A335184

/-! ## A335184.P2567019535095490763

`A193518(A000217(n+5))-(n+1)`
-/

namespace A335184.P2567019535095490763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A000217 (n + 5)).toNat - (n + 1 : ℤ)

end

end A335184.P2567019535095490763

namespace A335184

/-- `A193518(A000217(n+5))-(n+1)` -/
def P2567019535095490763.Spec : Prop :=
  ∀ n, P2567019535095490763.a n = A335184 n

end A335184

/-!
# A335185: a(n) = nextprime(ceiling(n/2)-1) - prevprime(floor(n/2)+1), where nextprime = A151800 and prevprime = A151799.

The programs for A335185, there is no canonical definition to state claims against.
-/

/-! ## A335185.P946949389685236618

`A151800(round(n/2)+1)-A055377(n+4)`
-/

namespace A335185.P946949389685236618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1).toNat - A055377 (n + 4)

end

end A335185.P946949389685236618

/-! ## A335185.P7362648734325745815

`A151800(A117910(3*(n+1)))%A055377(n+4)`
-/

namespace A335185.P7362648734325745815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A117910 (3 * (n + 1))).toNat) (A055377 (n + 4))

end

end A335185.P7362648734325745815

/-! ## A335185.P2772864673905337374

`A100802(A151800(floor((n+3)/2))+A055377(n+4))`
-/

namespace A335185.P2772864673905337374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A151800 ⌊(n + 3 : ℚ) / 2⌋.toNat + A055377 (n + 4)).toNat

end

end A335185.P2772864673905337374

/-! ## A335185.P6669176014198122326

`A007918(A008619(n+3))-A007917(A008619(n)+1)`
-/

namespace A335185.P6669176014198122326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A008619 (n + 3)).toNat - A007917 (A008619 n + 1).toNat

end

end A335185.P6669176014198122326

/-! ## A335185.P14110980292274591372

`A100802(A335186(n+4))`
-/

namespace A335185.P14110980292274591372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A335186 (n + 4)).toNat

end

end A335185.P14110980292274591372

/-! ## A335185.P10235880574231431367

`A335186(n+4)%A055377(n+4)`
-/

namespace A335185.P10235880574231431367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335186 (n + 4)) (A055377 (n + 4))

end

end A335185.P10235880574231431367

/-!
# A335186: a(n) = nextprime(ceiling(n/2)-1) + prevprime(floor(n/2)+1), where nextprime = A151800 and prevprime = A151799.

The programs for A335186, there is no canonical definition to state claims against.
-/

/-! ## A335186.P2151243138386036219

`A335185(n+4)+2*A055377(n+4)`
-/

namespace A335186.P2151243138386036219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (n + 4) + 2 * A055377 (n + 4)

end

end A335186.P2151243138386036219

/-! ## A335186.P18170886631584046670

`A151800(round(n/2)+1)+A055377(n+4)`
-/

namespace A335186.P18170886631584046670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1).toNat + A055377 (n + 4)

end

end A335186.P18170886631584046670

/-! ## A335186.P8200720807565333151

`A335185(n+4)+A005843(A055377(n+4))`
-/

namespace A335186.P8200720807565333151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (n + 4) + A005843 (A055377 (n + 4)).toNat

end

end A335186.P8200720807565333151

/-!
# A335188: Total surface area of all rectangular prisms with dimensions p X q X q, where p and q are prime, n = p+q and p

The programs for A335188, there is no canonical definition to state claims against.
-/

/-! ## A335188.P9828057559757043148

`Δ[A013602(∏[A007956(n+1)])]`
-/

namespace A335188.P9828057559757043148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013602 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335188.P9828057559757043148

/-! ## A335188.P2172054733067317473

`A110660(A008585(n)^A340760(n))`
-/

namespace A335188.P2172054733067317473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (SequenceMachineLib.roundAway ((A008585 n : ℚ) ^ (A340760 n : ℤ))).toNat

end

end A335188.P2172054733067317473

/-! ## A335188.P14271879746617049588

`A095832(∑[A295754(n)^A090628(n)])`
-/

namespace A335188.P14271879746617049588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295754 n : ℚ) ^ (A090628 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A335188.P14271879746617049588

/-! ## A335188.P5018274169864212733

`A095832(∑[A295754(n)^A135225(n)])`
-/

namespace A335188.P5018274169864212733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295754 n : ℚ) ^ (A135225 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A335188.P5018274169864212733

/-!
# A335191: Number of Heronian triangles with perimeter A335103(n) whose smallest side length is a square.

The programs for A335191, there is no canonical definition to state claims against.
-/

/-! ## A335191.P11073145647794296988

`A087179(∑[A010161(A235954(n+1))])`
-/

namespace A335191.P11073145647794296988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010161 (A235954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335191.P11073145647794296988

/-! ## A335191.P4741996268789958124

`A124832(A347463(n+1)+A187829(n+1))`
-/

namespace A335191.P4741996268789958124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124832 (A347463 (n + 1) + A187829 (n + 1)).toNat

end

end A335191.P4741996268789958124

/-!
# A335192: a(n) is the number of regions inside an n-gon formed by the straight line segments connecting vertex k to vertex 3k mod n.

The programs for A335192, there is no canonical definition to state claims against.
-/

/-! ## A335192.P18192616514057308448

`A335193(n+3)+1-A335194(n+3)`
-/

namespace A335192.P18192616514057308448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335193 (n + 3) + (1 - A335194 (n + 3))

end

end A335192.P18192616514057308448

/-! ## A335192.P16919780171659851447

`A335193(n+3)+A024000(A335194(n+3))`
-/

namespace A335192.P16919780171659851447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335193 (n + 3) + A024000 (A335194 (n + 3)).toNat

end

end A335192.P16919780171659851447

/-!
# A335193: a(n) is the number of edges inside an n-gon formed by the straight line segments connecting vertex k to vertex 3k mod n.

The programs for A335193, there is no canonical definition to state claims against.
-/

/-! ## A335193.P4164736390796322696

`A335192(n+3)+A335194(n+3)-1`
-/

namespace A335193.P4164736390796322696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335192 (n + 3) + (A335194 (n + 3) - 1)

end

end A335193.P4164736390796322696

/-! ## A335193.P5715599005686923694

`A335192(n+3)+A023443(A335194(n+3))`
-/

namespace A335193.P5715599005686923694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335192 (n + 3) + A023443 (A335194 (n + 3)).toNat

end

end A335193.P5715599005686923694

/-! ## A335193.P17931742895958370350

`abs(A024000(A335194(n+3)+A335192(n+3)))`
-/

namespace A335193.P17931742895958370350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (A335194 (n + 3) + A335192 (n + 3)).toNat|

end

end A335193.P17931742895958370350

/-! ## A335193.P16436834905398098339

`A233583(A335194(n+3)+A335192(n+3))`
-/

namespace A335193.P16436834905398098339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A335194 (n + 3) + A335192 (n + 3)).toNat

end

end A335193.P16436834905398098339

/-!
# A335194: a(n) is the number of vertices inside an n-gon formed by the straight line segments connecting vertex k to vertex 3k mod n.

The programs for A335194, there is no canonical definition to state claims against.
-/

/-! ## A335194.P175904451814002829

`A335193(n+3)+1-A335192(n+3)`
-/

namespace A335194.P175904451814002829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335193 (n + 3) + (1 - A335192 (n + 3))

end

end A335194.P175904451814002829

/-! ## A335194.P506481017074778564

`A335193(n+3)+A024000(A335192(n+3))`
-/

namespace A335194.P506481017074778564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335193 (n + 3) + A024000 (A335192 (n + 3)).toNat

end

end A335194.P506481017074778564

/-! ## A335194.P13595224119759787834

`A020725(A335193(n+3)-A335192(n+3))`
-/

namespace A335194.P13595224119759787834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335193 (n + 3) - A335192 (n + 3)).toNat

end

end A335194.P13595224119759787834

/-! ## A335194.P9326509967910016118

`A065475(A335193(n+3)-A335192(n+3))`
-/

namespace A335194.P9326509967910016118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335193 (n + 3) - A335192 (n + 3)).toNat

end

end A335194.P9326509967910016118

/-! ## A335194.P13391203936856638930

`A031285(A335193(n+3)-A335192(n+3))`
-/

namespace A335194.P13391203936856638930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A335193 (n + 3) - A335192 (n + 3)).toNat

end

end A335194.P13391203936856638930

/-!
# A335196: Nonunitary admirable numbers: numbers k such that there is a nonunitary divisor d of k such that nusigma(k) - 2*d = k, where nusigma is the sum of nonunitary divisors function (A048146).

The programs for A335196, there is no canonical definition to state claims against.
-/

/-! ## A335196.P8128413767865898295

`A064597(A184738(n+2)%A173002(2*n+1))`
-/

namespace A335196.P8128413767865898295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064597 (Int.tmod (A184738 (n + 2)) (A173002 (2 * n + 1))).toNat

end

end A335196.P8128413767865898295

/-! ## A335196.P7287061965034332368

`A064597(eq[1, round(xor(1, n)/6)])`
-/

namespace A335196.P7287061965034332368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335196.P7287061965034332368

/-!
# A335197: Infinitary Zumkeller numbers: numbers whose set of infinitary divisors can be partitioned into two disjoint sets of equal sum.

The programs for A335197, there is no canonical definition to state claims against.
-/

/-! ## A335197.P16180906707256707045

`∩[A108408(n+1), A335215(n+1)]`
-/

namespace A335197.P16180906707256707045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335197.P16180906707256707045

/-! ## A335197.P16621752875824715210

`∩[A160685(n+1), A346695(n+1)]`
-/

namespace A335197.P16621752875824715210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335197.P16621752875824715210

/-! ## A335197.P2860619224502830583

`∩[A224778(n+1), A335215(n+1)]`
-/

namespace A335197.P2860619224502830583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335197.P2860619224502830583

/-! ## A335197.P1056677243834910101

`∩[A330998(n+1), A335215(n+1)]`
-/

namespace A335197.P1056677243834910101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335197.P1056677243834910101

/-! ## A335197.P17934137238239590010

`∩[A097216(n+1), A160685(n+1)]`
-/

namespace A335197.P17934137238239590010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335197.P17934137238239590010

/-!
# A335198: Infinitary Zumkeller numbers (A335197) whose number of divisors is not a power of 2.

The programs for A335198, there is no canonical definition to state claims against.
-/

/-! ## A335198.P1707113820250279835

`∩[A162643(n+1), A335197(n+1)]`
-/

namespace A335198.P1707113820250279835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335198.P1707113820250279835

/-! ## A335198.P18327007626291148960

`A335935(lcm(n+1, A346703(n+1)))`
-/

namespace A335198.P18327007626291148960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (Int.lcm (n + 1 : ℤ) (A346703 (n + 1)))

end

end A335198.P18327007626291148960

/-! ## A335198.P6413596386002214465

`∩[A093614(n+1), A335935(n+1)]`
-/

namespace A335198.P6413596386002214465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335198.P6413596386002214465

/-! ## A335198.P8525842736784359049

`A058933(A000040(A335935(n+1)))`
-/

namespace A335198.P8525842736784359049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A000040 (A335935 (n + 1)).toNat).toNat

end

end A335198.P8525842736784359049

/-! ## A335198.P450069152965428128

`A335935(n+1)+A000007(A008003(n))`
-/

namespace A335198.P450069152965428128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (n + 1) + A000007 (A008003 n).toNat

end

end A335198.P450069152965428128

/-! ## A335198.P17223555528018748598

`A335935(n+1)+A000007(A008019(n))`
-/

namespace A335198.P17223555528018748598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (n + 1) + A000007 (A008019 n).toNat

end

end A335198.P17223555528018748598

/-! ## A335198.P10342352112430927723

`A335935(n+1)+A000007(A009876(n))`
-/

namespace A335198.P10342352112430927723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (n + 1) + A000007 (A009876 n).toNat

end

end A335198.P10342352112430927723

/-! ## A335198.P12934266165843522929

`A335935(n+1)+A000007(A107926(n))`
-/

namespace A335198.P12934266165843522929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (n + 1) + A000007 (A107926 n).toNat

end

end A335198.P12934266165843522929

/-! ## A335198.P9494304056915869997

`A335935(n+1)+A000038(A112739(n))`
-/

namespace A335198.P9494304056915869997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (n + 1) + A000038 (A112739 n).toNat

end

end A335198.P9494304056915869997

/-! ## A335198.P12441933798833826640

`∩[A060702(n+1), A335935(n+1)]`
-/

namespace A335198.P12441933798833826640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335198.P12441933798833826640

/-!
# A335199: Infinitary Zumkeller numbers (A335197) whose set of infinitary divisors can be partitioned into two disjoint sets of equal sum in a single way.

The programs for A335199, there is no canonical definition to state claims against.
-/

/-! ## A335199.P10919855677907567372

`A335217(comp[C(A064088(n), 5)])`
-/

namespace A335199.P10919855677907567372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A064088 n).toNat 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A335199.P10919855677907567372

/-! ## A335199.P1750482352439690785

`A335217(comp[C(A177373(n), 5)])`
-/

namespace A335199.P1750482352439690785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A177373 n).toNat 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A335199.P1750482352439690785

/-! ## A335199.P15028317281852828677

`filter[A335217(n+1), A141743(#)]`
-/

namespace A335199.P15028317281852828677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141743 (f1 j).toNat = 1) n)

end

end A335199.P15028317281852828677

/-! ## A335199.P4021120768263652239

`∩[A335217(n+1), A045749(n)]`
-/

namespace A335199.P4021120768263652239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335199.P4021120768263652239

