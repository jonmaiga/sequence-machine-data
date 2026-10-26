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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A182800: Positions of composites in A167171.

The programs for A182800, the canonical program `A182800.P2627050066186583486` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182800 has offset 1).

The definition of A182800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182800.P14522994667522102475

`comp[A182799(n+1)-1]+1`
-/

namespace A182800.P14522994667522102475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182799 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182800.P14522994667522102475

namespace A182800

/-- `comp[A182799(n+1)-1]+1` -/
def P14522994667522102475.Spec : Prop :=
  ∀ n, (P14522994667522102475.a n : ℤ) = A182800 (n + 1)

end A182800

/-! ## A182800.P2627050066186583486

`A000720(A006881(n+1))+n+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A182800

/-- `A000720(A006881(n+1))+n+1` -/
def P2627050066186583486.Spec : Prop :=
  ∀ n, P2627050066186583486.a n = A182800 (n + 1)

theorem P2627050066186583486.correct : P2627050066186583486.Spec := by
  intro n
  simp only [A182800, Nat.add_sub_cancel]

end A182800

/-! ## A182800.P14335306611582508878

`A000720(eq[4, A077462(n)])+1+n`
-/

namespace A182800.P14335306611582508878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1 + (n : ℤ)

end

end A182800.P14335306611582508878

namespace A182800

/-- `A000720(eq[4, A077462(n)])+1+n` -/
def P14335306611582508878.Spec : Prop :=
  ∀ n, P14335306611582508878.a n = A182800 (n + 1)

end A182800

/-! ## A182800.P14253778235491251150

`lt[0, A064911(A167171(n+1))]+1`
-/

namespace A182800.P14253778235491251150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A167171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A182800.P14253778235491251150

namespace A182800

/-- `lt[0, A064911(A167171(n+1))]+1` -/
def P14253778235491251150.Spec : Prop :=
  ∀ n, (P14253778235491251150.a n : ℤ) = A182800 (n + 1)

end A182800

/-! ## A182800.P16159184771153902398

`eq[4, A000005(A167171(abs(1-n)+1))]`
-/

namespace A182800.P16159184771153902398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A167171 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182800.P16159184771153902398

namespace A182800

/-- `eq[4, A000005(A167171(abs(1-n)+1))]` -/
def P16159184771153902398.Spec : Prop :=
  ∀ n, (P16159184771153902398.a n : ℤ) = A182800 (n + 1)

end A182800

/-! ## A182800.P17188382179158213293

`A036234(A006881(n+1))+n`
-/

namespace A182800.P17188382179158213293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A006881 (n + 1)).toNat + (n : ℤ)

end

end A182800.P17188382179158213293

namespace A182800

/-- `A036234(A006881(n+1))+n` -/
def P17188382179158213293.Spec : Prop :=
  ∀ n, P17188382179158213293.a n = A182800 (n + 1)

theorem P17188382179158213293.correct : P17188382179158213293.Spec := by
  intro n
  simp only [A182800, Nat.add_sub_cancel, A182800.P17188382179158213293.a, A182800.P2627050066186583486.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006881, A006881.P8515618879267886084.a, A036234, A036234.P2906282677021386800.a, A065475, A065475.P2637304413385993180.a, A161918, A161918.P17534431257680054511.f1, A161918.P17534431257680054511.a, A030513, A030513.P1414838510973468407.a, A353627, A353627.P16518077331837195055.a, A007422, A007422.P2892307068334706217.f1, A007422.P2892307068334706217.a, A209635, A209635.P16478505308631433079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A182800

/-! ## A182800.P13898786123537382335

`A000720(eq[2, A066882(n)])+1+n`
-/

namespace A182800.P13898786123537382335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1 + (n : ℤ)

end

end A182800.P13898786123537382335

namespace A182800

/-- `A000720(eq[2, A066882(n)])+1+n` -/
def P13898786123537382335.Spec : Prop :=
  ∀ n, P13898786123537382335.a n = A182800 (n + 1)

end A182800

/-! ## A182800.P1229604625993965910

`A000720(eq[3, A002033(n)])+n+1`
-/

namespace A182800.P1229604625993965910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + (n + 1 : ℤ)

end

end A182800.P1229604625993965910

namespace A182800

/-- `A000720(eq[3, A002033(n)])+n+1` -/
def P1229604625993965910.Spec : Prop :=
  ∀ n, P1229604625993965910.a n = A182800 (n + 1)

end A182800

/-! ## A182800.P3649240187612102606

`A036234(eq[A008683(n+1)+1, A001222(n+1)]+1)+n`
-/

namespace A182800.P3649240187612102606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + (n : ℤ)

end

end A182800.P3649240187612102606

namespace A182800

/-- `A036234(eq[A008683(n+1)+1, A001222(n+1)]+1)+n` -/
def P3649240187612102606.Spec : Prop :=
  ∀ n, P3649240187612102606.a n = A182800 (n + 1)

end A182800

/-!
# A182801: Joint-rank array of the numbers j*r^(i-1), where r = golden ratio = (1+sqrt(5))/2, i>=1, j>=1, read by antidiagonals.

The programs for A182801, there is no canonical definition to state claims against.
-/

/-! ## A182801.P15714619641644828617

`A385436(n+1)+A010136(A022188(n))`
-/

namespace A182801.P15714619641644828617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385436 (n + 1) + A010136 (A022188 n).toNat

end

end A182801.P15714619641644828617

/-! ## A182801.P13831575410319340370

`A385436(n+1)+A001221(A062572(n+1))`
-/

namespace A182801.P13831575410319340370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385436 (n + 1) + A001221 (A062572 (n + 1)).toNat

end

end A182801.P13831575410319340370

/-! ## A182801.P11538816234030805131

`A385436(n+1)+A204065(A067755(n+1))`
-/

namespace A182801.P11538816234030805131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385436 (n + 1) + A204065 (A067755 (n + 1)).toNat

end

end A182801.P11538816234030805131

/-! ## A182801.P6454445978253175255

`A385436(n+1)+A300251(A287940(n+1))`
-/

namespace A182801.P6454445978253175255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385436 (n + 1) + A300251 (A287940 (n + 1)).toNat

end

end A182801.P6454445978253175255

/-! ## A182801.P14688851951996801065

`A385436(n+1)+A003557(A174641(n+2))`
-/

namespace A182801.P14688851951996801065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385436 (n + 1) + A003557 (A174641 (n + 2)).toNat

end

end A182801.P14688851951996801065

/-!
# A182803: Number of 8-core partitions of n.

The programs for A182803, there is no canonical definition to state claims against.
-/

/-! ## A182803.P6413951097421936317

`A175595(A155212(n+5)-1)`
-/

namespace A182803.P6413951097421936317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A155212 (n + 5) - 1).toNat

end

end A182803.P6413951097421936317

/-! ## A182803.P10433841191103050350

`A175595(A055999(n+6)-3)`
-/

namespace A182803.P10433841191103050350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A055999 (n + 6) - 3).toNat

end

end A182803.P10433841191103050350

/-! ## A182803.P8800207816959728398

`A175595(A000217(n+9)-9)`
-/

namespace A182803.P8800207816959728398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000217 (n + 9) - 9).toNat

end

end A182803.P8800207816959728398

/-! ## A182803.P14368045986280355168

`A175595(A161680(n+10)-9)`
-/

namespace A182803.P14368045986280355168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A161680 (n + 10) - 9).toNat

end

end A182803.P14368045986280355168

/-! ## A182803.P17087789779633191413

`A175595(A000096(n+7)+n+1)`
-/

namespace A182803.P17087789779633191413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A182803.P17087789779633191413

/-!
# A182804: Number of 9-core partitions of n.

The programs for A182804, there is no canonical definition to state claims against.
-/

/-! ## A182804.P1048900602865150613

`A175595(A056000(n+6))`
-/

namespace A182804.P1048900602865150613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A056000 (n + 6)).toNat

end

end A182804.P1048900602865150613

/-! ## A182804.P15913759298677605500

`A175595(A000217(n+10)-10)`
-/

namespace A182804.P15913759298677605500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000217 (n + 10) - 10).toNat

end

end A182804.P15913759298677605500

/-! ## A182804.P12705919051702732409

`A175595(A000096(n+8)+n+1)`
-/

namespace A182804.P12705919051702732409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A182804.P12705919051702732409

/-! ## A182804.P11204637778213392460

`A175595(2*(n+1)+A000217(n+8)+7)`
-/

namespace A182804.P11204637778213392460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * (n + 1) : ℤ) + (A000217 (n + 8) + 7)).toNat

end

end A182804.P11204637778213392460

/-! ## A182804.P9324732066724597006

`A175595(A028310(n)+A000217(n+9))`
-/

namespace A182804.P9324732066724597006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A028310 n + A000217 (n + 9)).toNat

end

end A182804.P9324732066724597006

/-! ## A182804.P7044425315968114494

`A175595(eq[9, A025581(n)])`
-/

namespace A182804.P7044425315968114494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182804.P7044425315968114494

/-! ## A182804.P12298094571188952781

`A175595(eq[10, A004736(n+1)])`
-/

namespace A182804.P12298094571188952781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182804.P12298094571188952781

/-!
# A182805: Number of 10-core partitions of n.

The programs for A182805, there is no canonical definition to state claims against.
-/

/-! ## A182805.P3968332601503225158

`A175595(A000217(n+11)-11)`
-/

namespace A182805.P3968332601503225158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000217 (n + 11) - 11).toNat

end

end A182805.P3968332601503225158

/-! ## A182805.P7293751119856412751

`A175595(A000124(n+10)+n-1)`
-/

namespace A182805.P7293751119856412751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000124 (n + 10) + (n : ℤ) - 1).toNat

end

end A182805.P7293751119856412751

/-! ## A182805.P2090037015581306636

`A175595(2*n+A000217(n+9)+10)`
-/

namespace A182805.P2090037015581306636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 ((2 * n : ℤ) + (A000217 (n + 9) + 10)).toNat

end

end A182805.P2090037015581306636

/-! ## A182805.P5373168214882975190

`A175595(A052905(n+8)-5-A000040(n+1)%2)`
-/

namespace A182805.P5373168214882975190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A052905 (n + 8) - 5 - Int.tmod (A000040 (n + 1)) 2).toNat

end

end A182805.P5373168214882975190

/-! ## A182805.P15806657107490572342

`A175595(eq[10, A025581(n)])`
-/

namespace A182805.P15806657107490572342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182805.P15806657107490572342

/-!
# A182806: Number of partitions of 3n into parts >= 3.

The programs for A182806, there is no canonical definition to state claims against.
-/

/-! ## A182806.P8291871482106724134

`A008483(3*n)`
-/

namespace A182806.P8291871482106724134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (3 * n)

end

end A182806.P8291871482106724134

/-! ## A182806.P5261791988827696473

`∑[A008484(3*n)]`
-/

namespace A182806.P5261791988827696473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182806.P5261791988827696473

/-! ## A182806.P3978284756663292745

`A026796(3*(n+1))`
-/

namespace A182806.P3978284756663292745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (3 * (n + 1))

end

end A182806.P3978284756663292745

/-! ## A182806.P4540394628135149746

`A165652(3*n)+1`
-/

namespace A182806.P4540394628135149746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (3 * n) + 1

end

end A182806.P4540394628135149746

/-! ## A182806.P7386634826992365303

`∑[A026797(3*n+4)]`
-/

namespace A182806.P7386634826992365303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182806.P7386634826992365303

/-!
# A182807: Number of partitions of 3n+1 into parts >= 3.

The programs for A182807, there is no canonical definition to state claims against.
-/

/-! ## A182807.P7796679192788195132

`A008483(3*n+1)`
-/

namespace A182807.P7796679192788195132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (3 * n + 1)

end

end A182807.P7796679192788195132

/-! ## A182807.P12708065494524745794

`∑[A008484(3*n+1)]`
-/

namespace A182807.P12708065494524745794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182807.P12708065494524745794

/-! ## A182807.P12663784425434205537

`∑[A026797(3*n+5)]`
-/

namespace A182807.P12663784425434205537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182807.P12663784425434205537

/-! ## A182807.P7589878829891706611

`A026796(3*(n+1)+1)`
-/

namespace A182807.P7589878829891706611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (3 * (n + 1) + 1)

end

end A182807.P7589878829891706611

/-! ## A182807.P7362111542235107822

`∑[A185224(3*n+1)]+n`
-/

namespace A182807.P7362111542235107822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A182807.P7362111542235107822

/-! ## A182807.P2799720437593594477

`record[A008483(Δ[A093005(n+1)])]`
-/

namespace A182807.P2799720437593594477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182807.P2799720437593594477

/-! ## A182807.P11921688798477356051

`A008483(A016777(n))%A107742(2*n)`
-/

namespace A182807.P11921688798477356051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008483 (A016777 n).toNat) (A107742 (2 * n))

end

end A182807.P11921688798477356051

/-! ## A182807.P170255967305709865

`A165652(3*n+1)+A000035(A069690(n+1))`
-/

namespace A182807.P170255967305709865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (3 * n + 1) + A000035 (A069690 (n + 1)).toNat

end

end A182807.P170255967305709865

/-!
# A182808: Number of partitions of 3n + 2 into parts >= 3.

The programs for A182808, there is no canonical definition to state claims against.
-/

/-! ## A182808.P6810447302025077274

`A008483(3*n+2)`
-/

namespace A182808.P6810447302025077274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (3 * n + 2)

end

end A182808.P6810447302025077274

/-! ## A182808.P6402768136974909874

`∑[A008484(3*n+2)]`
-/

namespace A182808.P6402768136974909874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182808.P6402768136974909874

/-! ## A182808.P16661813824346978968

`A026796(3*(n+1)+2)`
-/

namespace A182808.P16661813824346978968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (3 * (n + 1) + 2)

end

end A182808.P16661813824346978968

/-! ## A182808.P14988229246484591407

`∑[A185224(3*n+2)]+n`
-/

namespace A182808.P14988229246484591407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A182808.P14988229246484591407

/-! ## A182808.P15501669690893762579

`A165652(3*n+2)+A048993(floor(1/(n+1)))`
-/

namespace A182808.P15501669690893762579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (3 * n + 2) + A048993 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A182808.P15501669690893762579

/-! ## A182808.P2101865624966241546

`A254651(A000040(n+1))+A165652(3*n+2)`
-/

namespace A182808.P2101865624966241546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (A000040 (n + 1)).toNat + A165652 (3 * n + 2)

end

end A182808.P2101865624966241546

/-! ## A182808.P1561271308816130688

`A002865(A080030(3*n))-A002865(3*n)`
-/

namespace A182808.P1561271308816130688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A080030 (3 * n)).toNat - A002865 (3 * n)

end

end A182808.P1561271308816130688

/-! ## A182808.P16776711417879315029

`A008483(A016789(n))%A002836(n+2)`
-/

namespace A182808.P16776711417879315029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008483 (A016789 n).toNat) (A002836 (n + 2))

end

end A182808.P16776711417879315029

/-!
# A182810: Array read by antidiagonals which lists the partition number of the numbers of the table A182630.

The programs for A182810, there is no canonical definition to state claims against.
-/

/-! ## A182810.P3659091784617549629

`A000041(A182630(n))`
-/

namespace A182810.P3659091784617549629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A182630 n).toNat

end

end A182810.P3659091784617549629

/-! ## A182810.P6367106454228322394

`A035363(2*A182630(n))`
-/

namespace A182810.P6367106454228322394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A182630 n).toNat

end

end A182810.P6367106454228322394

/-! ## A182810.P10448175829325522407

`A100824(2*A182630(n))`
-/

namespace A182810.P10448175829325522407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * A182630 n).toNat

end

end A182810.P10448175829325522407

/-! ## A182810.P13338393325674092725

`A035377(3*A182630(n))`
-/

namespace A182810.P13338393325674092725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * A182630 n).toNat

end

end A182810.P13338393325674092725

/-! ## A182810.P13671743711787057569

`A035444(4*A182630(n))`
-/

namespace A182810.P13671743711787057569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A182630 n).toNat

end

end A182810.P13671743711787057569

/-! ## A182810.P16141756493399545222

`A000041(A077264(∑[2*n]%comp[∑[n]]))`
-/

namespace A182810.P16141756493399545222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A077264 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

end

end A182810.P16141756493399545222

/-! ## A182810.P8733504638787988665

`A000041(A077264(A061579(n)))`
-/

namespace A182810.P8733504638787988665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A077264 (A061579 n).toNat).toNat

end

end A182810.P8733504638787988665

/-! ## A182810.P3081836129338988054

`A213598(A182630(A118759(n)))`
-/

namespace A182810.P3081836129338988054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (A182630 (A118759 n).toNat).toNat

end

end A182810.P3081836129338988054

/-!
# A182814: Main diagonal of table A182630.

The programs for A182814, there is no canonical definition to state claims against.
-/

/-! ## A182814.P10157834541432401626

`A380548(n+1)-1`
-/

namespace A182814.P10157834541432401626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380548 (n + 1) - 1

end

end A182814.P10157834541432401626

/-! ## A182814.P17602019113576772795

`∑[n]+n-C(A083920(n), 2)`
-/

namespace A182814.P17602019113576772795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (A083920 n).toNat 2 : ℤ))

end

end A182814.P17602019113576772795

/-! ## A182814.P2685927134900274770

`A002262(n)+n*∑[char[∑[n]]]`
-/

namespace A182814.P2685927134900274770
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A182814.P2685927134900274770

/-! ## A182814.P16437351882406567468

`n*(comp[∑[n]]-n)-A057944(n)`
-/

namespace A182814.P16437351882406567468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) - A057944 n

end

end A182814.P16437351882406567468

/-! ## A182814.P12546485710032422112

`∑[n]-C(n-A003056(n), 2)+n`
-/

namespace A182814.P12546485710032422112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose ((n : ℤ) - A003056 n).toNat 2 : ℤ) + (n : ℤ)

end

end A182814.P12546485710032422112

/-! ## A182814.P14213170350038078617

`A025668(n+1)+n*∑[char[∑[n]]]`
-/

namespace A182814.P14213170350038078617
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1) + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A182814.P14213170350038078617

/-! ## A182814.P5558812764612348186

`A141418(comp[∑[n]]+∑[n-1])+n`
-/

namespace A182814.P5558812764612348186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j).toNat + (n : ℤ)

end

end A182814.P5558812764612348186

/-! ## A182814.P12487678799260409992

`n*∑[char[∑[n]]]+A002260(n+1)-1`
-/

namespace A182814.P12487678799260409992
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + (A002260 (n + 1) - 1)

end

end A182814.P12487678799260409992

/-! ## A182814.P418112525886367751

`(n+1)*∑[char[∑[n]]]-A004736(n+1)`
-/

namespace A182814.P418112525886367751
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A004736 (n + 1)

end

end A182814.P418112525886367751

/-!
# A182815: The third row of table A182630.

The programs for A182815, there is no canonical definition to state claims against.
-/

/-! ## A182815.P6088601642710596890

`2*(row(n)+1)+col(n)`
-/

namespace A182815.P6088601642710596890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.triRow n + 1) + SequenceMachineLib.triCol n

end

end A182815.P6088601642710596890

/-! ## A182815.P3501758894170578607

`comp[∑[n]]+n-eq[0, floor(2*sqrt(n))%2]`
-/

namespace A182815.P3501758894170578607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) - (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ)

end

end A182815.P3501758894170578607

/-! ## A182815.P2258255577548789882

`∑[2*char[∑[n]]]+n-C(∑[char[∑[n]]], 2)`
-/

namespace A182815.P2258255577548789882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))

end

end A182815.P2258255577548789882

/-! ## A182815.P14197766293996686597

`abs(n-C(∑[char[∑[n+1]]], 2))+comp[∑[n]]-n`
-/

namespace A182815.P14197766293996686597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)| + ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ))

end

end A182815.P14197766293996686597

/-! ## A182815.P16309598310606042012

`comp[∑[n-gcd(n, ∑[n])]+n]-C(∑[char[∑[n]]], 2)`
-/

namespace A182815.P16309598310606042012
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)

end

end A182815.P16309598310606042012

/-! ## A182815.P16707379337300408415

`abs(∑[char[∑[n]]]+n+1-C(∑[char[∑[n+1]]], 2))`
-/

namespace A182815.P16707379337300408415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))|

end

end A182815.P16707379337300408415

/-! ## A182815.P17641640415796855583

`∑[char[∑[n+1]]]+n-C(∑[char[∑[n+1]]], 2)+2`
-/

namespace A182815.P17641640415796855583
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + 2)

end

end A182815.P17641640415796855583

/-! ## A182815.P4695560254507426007

`A182630(∑[n+3])`
-/

namespace A182815.P4695560254507426007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182630 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182815.P4695560254507426007

/-! ## A182815.P17022656476857324211

`A134483(n+1)+1`
-/

namespace A182815.P17022656476857324211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (n + 1) + 1

end

end A182815.P17022656476857324211

/-! ## A182815.P5006270810107906854

`A296767(n+1)%58`
-/

namespace A182815.P5006270810107906854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296767 (n + 1)) 58

end

end A182815.P5006270810107906854

/-!
# A182816: Number of values b in Z/nZ such that b^n = b.

The programs for A182816, the canonical program `A182816.P15538426458893494896` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182816 has offset 1).

The definition of A182816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182816.P15538426458893494896

`∏{p}[n+1, gcd(n, A000010(#))+1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182816

/-- `∏{p}[n+1, gcd(n, A000010(#))+1]` -/
def P15538426458893494896.Spec : Prop :=
  ∀ n, (P15538426458893494896.a n : ℤ) = A182816 (n + 1)

theorem P15538426458893494896.correct : P15538426458893494896.Spec := by
  intro n
  simp only [A182816, Nat.add_sub_cancel]

end A182816

/-! ## A182816.P16885907594049596984

`A337632(∑[n+1]-A002322(n+1)+1)`
-/

namespace A182816.P16885907594049596984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337632 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002322 (n + 1) + 1).toNat

end

end A182816.P16885907594049596984

namespace A182816

/-- `A337632(∑[n+1]-A002322(n+1)+1)` -/
def P16885907594049596984.Spec : Prop :=
  ∀ n, P16885907594049596984.a n = A182816 (n + 1)

end A182816

/-! ## A182816.P13450710735517691245

`A337632(A051953(n+1)+A000124(n))`
-/

namespace A182816.P13450710735517691245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337632 (A051953 (n + 1) + A000124 n).toNat

end

end A182816.P13450710735517691245

namespace A182816

/-- `A337632(A051953(n+1)+A000124(n))` -/
def P13450710735517691245.Spec : Prop :=
  ∀ n, P13450710735517691245.a n = A182816 (n + 1)

end A182816

/-! ## A182816.P11850947209809241525

`A337632(A277127(n+1)+A000124(n))`
-/

namespace A182816.P11850947209809241525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337632 (A277127 (n + 1) + A000124 n).toNat

end

end A182816.P11850947209809241525

namespace A182816

/-- `A337632(A277127(n+1)+A000124(n))` -/
def P11850947209809241525.Spec : Prop :=
  ∀ n, P11850947209809241525.a n = A182816 (n + 1)

end A182816

/-! ## A182816.P5438243660379094995

`A337632(A000124(n)-A109606(n+1)+n)`
-/

namespace A182816.P5438243660379094995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337632 (A000124 n - A109606 (n + 1) + (n : ℤ)).toNat

end

end A182816.P5438243660379094995

namespace A182816

/-- `A337632(A000124(n)-A109606(n+1)+n)` -/
def P5438243660379094995.Spec : Prop :=
  ∀ n, P5438243660379094995.a n = A182816 (n + 1)

end A182816

/-!
# A182817: Number of elements k in Z/mZ such that k^m=k, for nonprime m = A018252(n).

The programs for A182817, the canonical program `A182817.P14309563797210267358` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182817 has offset 1).

The definition of A182817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A182816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182817.P14309563797210267358

`A182816(A018252(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A182817

/-- `A182816(A018252(n+1))` -/
def P14309563797210267358.Spec : Prop :=
  ∀ n, P14309563797210267358.a n = A182817 (n + 1)

theorem P14309563797210267358.correct : P14309563797210267358.Spec := by
  intro n
  simp only [A182817, Nat.add_sub_cancel]

end A182817

/-! ## A182817.P7824517057122211550

`A182816(A141468(n+2))`
-/

namespace A182817.P7824517057122211550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (A141468 (n + 2)).toNat

end

end A182817.P7824517057122211550

namespace A182817

/-- `A182816(A141468(n+2))` -/
def P7824517057122211550.Spec : Prop :=
  ∀ n, P7824517057122211550.a n = A182817 (n + 1)

end A182817

/-! ## A182817.P15842398690859626705

`A182816(A166460(n+1)+1)`
-/

namespace A182817.P15842398690859626705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (A166460 (n + 1) + 1).toNat

end

end A182817.P15842398690859626705

namespace A182817

/-- `A182816(A166460(n+1)+1)` -/
def P15842398690859626705.Spec : Prop :=
  ∀ n, P15842398690859626705.a n = A182817 (n + 1)

end A182817

/-! ## A182817.P14210018218541341760

`A182816(eq[1, A010051(n+1)+1]+1)`
-/

namespace A182817.P14210018218541341760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A182817.P14210018218541341760

namespace A182817

/-- `A182816(eq[1, A010051(n+1)+1]+1)` -/
def P14210018218541341760.Spec : Prop :=
  ∀ n, P14210018218541341760.a n = A182817 (n + 1)

end A182817

/-! ## A182817.P8164909520947768722

`A182816(eq[A000007(n), A055671(n)])`
-/

namespace A182817.P8164909520947768722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182817.P8164909520947768722

namespace A182817

/-- `A182816(eq[A000007(n), A055671(n)])` -/
def P8164909520947768722.Spec : Prop :=
  ∀ n, P8164909520947768722.a n = A182817 (n + 1)

end A182817

/-!
# A182818: G.f.: exp( Sum_{n>=1} sigma(2n)*x^n/n ).

The programs for A182818, there is no canonical definition to state claims against.
-/

/-! ## A182818.P2303194328529499140

`∑[record[A144558(A261697(n+1))]]`
-/

namespace A182818.P2303194328529499140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144558 (A261697 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182818.P2303194328529499140

/-! ## A182818.P3947359551018031411

`∑[A091357(n+3)-A036638(A036632(n))]`
-/

namespace A182818.P3947359551018031411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091357 (n + 3) - A036638 (A036632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182818.P3947359551018031411

/-! ## A182818.P3720415978630091720

`∑[A091357(n+3)-A052403(A051852(n+1))]`
-/

namespace A182818.P3720415978630091720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091357 (n + 3) - A052403 (A051852 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182818.P3720415978630091720

/-! ## A182818.P14296768935089884289

`∑[A007947(A091357(n+3)²)]`
-/

namespace A182818.P14296768935089884289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A091357 (n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182818.P14296768935089884289

/-! ## A182818.P6679328542808275697

`∑[A052410(A091357(n+3)²)]`
-/

namespace A182818.P6679328542808275697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A091357 (n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182818.P6679328542808275697

/-!
# A182819: G.f.: exp( Sum_{n>=1} sigma(3n)*x^n/n ).

The programs for A182819, there is no canonical definition to state claims against.
-/

/-! ## A182819.P3974289882692956878

`record[A286953(n)-A185037(n)]`
-/

namespace A182819.P3974289882692956878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286953 n - A185037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182819.P3974289882692956878

/-! ## A182819.P2840671729621998170

`record[A286953(A363942(n+1))]`
-/

namespace A182819.P2840671729621998170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286953 (A363942 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182819.P2840671729621998170

/-!
# A182821: Expansion of g.f.: exp( Sum_{n>=1} sigma(5*n)*x^n/n ).

The programs for A182821, there is no canonical definition to state claims against.
-/

/-! ## A182821.P10910664911278651716

`A213260(n)-A008574(A121591(n+1))`
-/

namespace A182821.P10910664911278651716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213260 n - A008574 (A121591 (n + 1)).toNat

end

end A182821.P10910664911278651716

/-! ## A182821.P17016464506450823866

`A222250(A213260(n))/5`
-/

namespace A182821.P17016464506450823866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222250 (A213260 n).toNat : ℚ) / 5

end

end A182821.P17016464506450823866

/-!
# A182822: Exponential Riordan array, defining orthogonal polynomials related to permutations without double falls.

The programs for A182822, the canonical program `A182822.P8549289063846872684` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182822 has offset 0).

The definition of A182822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182822.P8549289063846872684

`T(n-1,k-1)+(col(n)+1)*T(n-1,k)+(col(n)+1)²*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182822

/-- `T(n-1,k-1)+(col(n)+1)*T(n-1,k)+(col(n)+1)²*T(n-1,k+1)` -/
def P8549289063846872684.Spec : Prop :=
  ∀ n, (P8549289063846872684.a n : ℤ) = A182822 n

theorem P8549289063846872684.correct : P8549289063846872684.Spec := by
  intro n
  simp only [A182822]

end A182822

/-!
# A182825: E.g.f. 1/(cos(sqrt(3)*x) - sin(sqrt(3)*x)/sqrt(3)).

The programs for A182825, there is no canonical definition to state claims against.
-/

/-! ## A182825.P637106817615980105

`A000265(A014551(n))*A080635(n)`
-/

namespace A182825.P637106817615980105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014551 n).toNat * A080635 n

end

end A182825.P637106817615980105

/-! ## A182825.P3504194738102671533

`A182824(∑[n])`
-/

namespace A182825.P3504194738102671533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182825.P3504194738102671533

/-! ## A182825.P615087019120802884

`or(1, A182824(A000217(n)))`
-/

namespace A182825.P615087019120802884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A182824 (A000217 n).toNat)

end

end A182825.P615087019120802884

/-! ## A182825.P15914177542418081082

`A182824(A000217(n))+A086080(n)`
-/

namespace A182825.P15914177542418081082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182824 (A000217 n).toNat + A086080 n

end

end A182825.P15914177542418081082

/-! ## A182825.P8738150338343019497

`A185284(n)+A182824(A000217(n))`
-/

namespace A182825.P8738150338343019497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A182824 (A000217 n).toNat

end

end A182825.P8738150338343019497

/-!
# A182827: E.g.f. 1/sqrt(1+2x+4x^2).

The programs for A182827, there is no canonical definition to state claims against.
-/

/-! ## A182827.P17956170467033910731

`n!/A116092(n)*A012000(n)²`
-/

namespace A182827.P17956170467033910731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A116092 n : ℚ) * (A012000 n ^ 2 : ℚ)

end

end A182827.P17956170467033910731

/-! ## A182827.P5644623324155278669

`A182826(∑[n])`
-/

namespace A182827.P5644623324155278669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182826 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182827.P5644623324155278669

/-! ## A182827.P18446558217940112844

`or(1, A182826(round((2*n+1)²/8)))`
-/

namespace A182827.P18446558217940112844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A182826 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat)

end

end A182827.P18446558217940112844

/-! ## A182827.P9716521169975854424

`A182826(A000217(n))+C(n, 64)²`
-/

namespace A182827.P9716521169975854424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182826 (A000217 n).toNat + (Nat.choose n 64 ^ 2 : ℤ)

end

end A182827.P9716521169975854424

/-! ## A182827.P13238526312506432639

`A182826(A000217(n))+A036601(n)`
-/

namespace A182827.P13238526312506432639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182826 (A000217 n).toNat + A036601 n

end

end A182827.P13238526312506432639

/-!
# A182828: Array of the numbers (3*i+1)*3^j, i>=0, j>=0, read by antidiagonals.

The programs for A182828, the canonical program `A182828.P17855746952642674139` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182828 has offset 1).

The definition of A182828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182828.P17855746952642674139

`(3*col(n)+1)*3^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182828

/-- `(3*col(n)+1)*3^(row(n)-col(n))` -/
def P17855746952642674139.Spec : Prop :=
  ∀ n, P17855746952642674139.a n = (A182828 (n + 1) : ℚ)

end A182828

/-! ## A182828.P9119580815935160790

`A182830(n+1)-A140303(n)`
-/

namespace A182828.P9119580815935160790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182830 (n + 1) - A140303 n

end

end A182828.P9119580815935160790

namespace A182828

/-- `A182830(n+1)-A140303(n)` -/
def P9119580815935160790.Spec : Prop :=
  ∀ n, P9119580815935160790.a n = A182828 (n + 1)

end A182828

/-! ## A182828.P15134771102316213058

`A016777(A002262(n))*A140303(n)`
-/

namespace A182828.P15134771102316213058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A002262 n).toNat * A140303 n

end

end A182828.P15134771102316213058

namespace A182828

/-- `A016777(A002262(n))*A140303(n)` -/
def P15134771102316213058.Spec : Prop :=
  ∀ n, P15134771102316213058.a n = A182828 (n + 1)

end A182828

/-! ## A182828.P11543583242393765094

`A016777(log2(A059268(n)))*A140303(n)`
-/

namespace A182828.P11543583242393765094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A140303 n

end

end A182828.P11543583242393765094

namespace A182828

/-- `A016777(log2(A059268(n)))*A140303(n)` -/
def P11543583242393765094.Spec : Prop :=
  ∀ n, P11543583242393765094.a n = A182828 (n + 1)

end A182828

/-! ## A182828.P17974808890065551116

`A026178(A158405(n+1))*A140303(n)`
-/

namespace A182828.P17974808890065551116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (A158405 (n + 1)).toNat * A140303 n

end

end A182828.P17974808890065551116

namespace A182828

/-- `A026178(A158405(n+1))*A140303(n)` -/
def P17974808890065551116.Spec : Prop :=
  ∀ n, P17974808890065551116.a n = A182828 (n + 1)

end A182828

/-! ## A182828.P13983243326032778786

`A000244(A025581(n))*A016777(A002262(n))`
-/

namespace A182828.P13983243326032778786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A016777 (A002262 n).toNat

end

end A182828.P13983243326032778786

namespace A182828

/-- `A000244(A025581(n))*A016777(A002262(n))` -/
def P13983243326032778786.Spec : Prop :=
  ∀ n, P13983243326032778786.a n = A182828 (n + 1)

end A182828

/-! ## A182828.P318916273129878376

`A048785(A059268(n))*A140303(n)`
-/

namespace A182828.P318916273129878376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A059268 n).toNat * A140303 n

end

end A182828.P318916273129878376

namespace A182828

/-- `A048785(A059268(n))*A140303(n)` -/
def P318916273129878376.Spec : Prop :=
  ∀ n, P318916273129878376.a n = A182828 (n + 1)

end A182828

/-! ## A182828.P7033042795477453133

`A036288(A140303(A061579(n)))*A140303(n)`
-/

namespace A182828.P7033042795477453133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (A140303 (A061579 n).toNat).toNat * A140303 n

end

end A182828.P7033042795477453133

namespace A182828

/-- `A036288(A140303(A061579(n)))*A140303(n)` -/
def P7033042795477453133.Spec : Prop :=
  ∀ n, P7033042795477453133.a n = A182828 (n + 1)

end A182828

/-!
# A182829: Positions of the numbers 3*i+1 in A026225; i.e., when all the numbers (3*i+1)*3^j are arranged in increasing order.

The programs for A182829, there is no canonical definition to state claims against.
-/

/-! ## A182829.P2501835533448021736

`∑[gcd(A353635(2*n+1), A353661(n))]`
-/

namespace A182829.P2501835533448021736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A353635 (2 * n + 1)) (A353661 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182829.P2501835533448021736

/-! ## A182829.P7901223767438946953

`A189674(3*(n+1))%∑[A356069(3*n+5)]`
-/

namespace A182829.P7901223767438946953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356069 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189674 (3 * (n + 1))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182829.P7901223767438946953

/-! ## A182829.P2798760747386816139

`lt[Δ[3*A026141(n+2)], A323086(2*n+1)]`
-/

namespace A182829.P2798760747386816139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026141 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323086 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A182829.P2798760747386816139

/-! ## A182829.P18228993127458864105

`A189674(3*(n+1))%A273743(Δ[n²]²)`
-/

namespace A182829.P18228993127458864105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189674 (3 * (n + 1))) (A273743 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat)

end

end A182829.P18228993127458864105

/-! ## A182829.P112776488736685540

`or(A051731(A090562(n+1)), A189674(3*n+2))`
-/

namespace A182829.P112776488736685540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051731 (A090562 (n + 1)).toNat) (A189674 (3 * n + 2))

end

end A182829.P112776488736685540

/-!
# A182830: Array of the numbers (3*i+2)*3^j, i>=0, j>=0, read by antidiagonals.

The programs for A182830, the canonical program `A182830.P3917045432215848973` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182830 has offset 1).

The definition of A182830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182830.P3917045432215848973

`(3*col(n)+2)*3^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182830

/-- `(3*col(n)+2)*3^(row(n)-col(n))` -/
def P3917045432215848973.Spec : Prop :=
  ∀ n, P3917045432215848973.a n = (A182830 (n + 1) : ℚ)

end A182830

/-! ## A182830.P11971300846047299382

`A182828(n+1)+A140303(n)`
-/

namespace A182830.P11971300846047299382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182828 (n + 1) + A140303 n

end

end A182830.P11971300846047299382

namespace A182830

/-- `A182828(n+1)+A140303(n)` -/
def P11971300846047299382.Spec : Prop :=
  ∀ n, P11971300846047299382.a n = A182830 (n + 1)

end A182830

/-! ## A182830.P15623099858748983177

`A016789(A002262(n))*A140303(n)`
-/

namespace A182830.P15623099858748983177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A002262 n).toNat * A140303 n

end

end A182830.P15623099858748983177

namespace A182830

/-- `A016789(A002262(n))*A140303(n)` -/
def P15623099858748983177.Spec : Prop :=
  ∀ n, P15623099858748983177.a n = A182830 (n + 1)

end A182830

/-! ## A182830.P8250864291613245381

`A182828(n+1)+A000244(A025581(n))`
-/

namespace A182830.P8250864291613245381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182828 (n + 1) + A000244 (A025581 n).toNat

end

end A182830.P8250864291613245381

namespace A182830

/-- `A182828(n+1)+A000244(A025581(n))` -/
def P8250864291613245381.Spec : Prop :=
  ∀ n, P8250864291613245381.a n = A182830 (n + 1)

end A182830

/-! ## A182830.P7639431227046851292

`A182828(n+1)+A108411(A099375(n))`
-/

namespace A182830.P7639431227046851292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182828 (n + 1) + A108411 (A099375 n).toNat

end

end A182830.P7639431227046851292

namespace A182830

/-- `A182828(n+1)+A108411(A099375(n))` -/
def P7639431227046851292.Spec : Prop :=
  ∀ n, P7639431227046851292.a n = A182830 (n + 1)

end A182830

/-! ## A182830.P7863956333385284302

`A014682(A158405(n+1))*A140303(n)`
-/

namespace A182830.P7863956333385284302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A158405 (n + 1)).toNat * A140303 n

end

end A182830.P7863956333385284302

namespace A182830

/-- `A014682(A158405(n+1))*A140303(n)` -/
def P7863956333385284302.Spec : Prop :=
  ∀ n, P7863956333385284302.a n = A182830 (n + 1)

end A182830

/-! ## A182830.P5603420703956554889

`A001651(2*A002260(n+1))*A140303(n)`
-/

namespace A182830.P5603420703956554889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (2 * A002260 (n + 1)).toNat * A140303 n

end

end A182830.P5603420703956554889

namespace A182830

/-- `A001651(2*A002260(n+1))*A140303(n)` -/
def P5603420703956554889.Spec : Prop :=
  ∀ n, P5603420703956554889.a n = A182830 (n + 1)

end A182830

/-! ## A182830.P3850143833558982421

`A000244(A025581(n))*A016789(A002262(n))`
-/

namespace A182830.P3850143833558982421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A016789 (A002262 n).toNat

end

end A182830.P3850143833558982421

namespace A182830

/-- `A000244(A025581(n))*A016789(A002262(n))` -/
def P3850143833558982421.Spec : Prop :=
  ∀ n, P3850143833558982421.a n = A182830 (n + 1)

end A182830

/-! ## A182830.P12998601487096336611

`(A048785(A059268(n))+1)*A140303(n)`
-/

namespace A182830.P12998601487096336611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048785 (A059268 n).toNat + 1) * A140303 n

end

end A182830.P12998601487096336611

namespace A182830

/-- `(A048785(A059268(n))+1)*A140303(n)` -/
def P12998601487096336611.Spec : Prop :=
  ∀ n, P12998601487096336611.a n = A182830 (n + 1)

end A182830

/-!
# A182832: Joint-rank array of numbers j*r^(i-1), where r=1+sqrt(3), read by antidiagonals.

The programs for A182832, there is no canonical definition to state claims against.
-/

/-! ## A182832.P11048281445407064859

`A323048(A182833(n+1)+1)`
-/

namespace A182832.P11048281445407064859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A182833 (n + 1) + 1).toNat

end

end A182832.P11048281445407064859

/-! ## A182832.P7178815639192091282

`or(A179827(A049969(n+1)), A182833(n+1))`
-/

namespace A182832.P7178815639192091282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A179827 (A049969 (n + 1)).toNat) (A182833 (n + 1))

end

end A182832.P7178815639192091282

/-! ## A182832.P12619617896246559644

`or(A182833(n+1), A254379(A124441(n+1)))`
-/

namespace A182832.P12619617896246559644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A182833 (n + 1)) (A254379 (A124441 (n + 1)).toNat)

end

end A182832.P12619617896246559644

/-! ## A182832.P10436911818600531913

`or(A134667(A141214(2*n)), A182833(n+1))`
-/

namespace A182832.P10436911818600531913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134667 (A141214 (2 * n)).toNat) (A182833 (n + 1))

end

end A182832.P10436911818600531913

/-! ## A182832.P998834854838796293

`A182833(A077168(n))`
-/

namespace A182832.P998834854838796293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182833 (A077168 n).toNat

end

end A182832.P998834854838796293

/-!
# A182833: Joint-rank array of the numbers j*e^(i-1), read by antidiagonals.

The programs for A182833, there is no canonical definition to state claims against.
-/

/-! ## A182833.P8519483179895905645

`A182832(n+1)-A102683(A182869(2*(n+1)))`
-/

namespace A182833.P8519483179895905645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182832 (n + 1) - A102683 (A182869 (2 * (n + 1))).toNat

end

end A182833.P8519483179895905645

/-! ## A182833.P15373097274173812503

`A182832(n+1)-A123740(A123757(n+2))`
-/

namespace A182833.P15373097274173812503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182832 (n + 1) - A123740 (A123757 (n + 2)).toNat

end

end A182833.P15373097274173812503

/-! ## A182833.P17070946920152122051

`A182832(n+1)-A178333(A145750(n+1))`
-/

namespace A182833.P17070946920152122051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182832 (n + 1) - A178333 (A145750 (n + 1)).toNat

end

end A182833.P17070946920152122051

/-!
# A182834: Complement of A007590, except for initial zeros.

The programs for A182834, the canonical program `A182834.P3760204480759781288` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182834 has offset 1).

The definition of A182834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182834.P3760204480759781288

`n+1+floor(sqrt(2*(n+1)-2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182834

/-- `n+1+floor(sqrt(2*(n+1)-2))` -/
def P3760204480759781288.Spec : Prop :=
  ∀ n, P3760204480759781288.a n = A182834 (n + 1)

theorem P3760204480759781288.correct : P3760204480759781288.Spec := by
  intro n
  simp only [A182834, Nat.add_sub_cancel]

end A182834

/-! ## A182834.P3436060765212009553

`comp[∑[and(n, -2)]]`
-/

namespace A182834.P3436060765212009553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182834.P3436060765212009553

namespace A182834

/-- `comp[∑[and(n, -2)]]` -/
def P3436060765212009553.Spec : Prop :=
  ∀ n, (P3436060765212009553.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P1562713651117181860

`∑[char[∑[or(1, n)]]+1]`
-/

namespace A182834.P1562713651117181860
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182834.P1562713651117181860

namespace A182834

/-- `∑[char[∑[or(1, n)]]+1]` -/
def P1562713651117181860.Spec : Prop :=
  ∀ n, (P1562713651117181860.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P4029964516869934784

`comp[a(n-2)+2*n]` with `a(0)=0, a(1)=2`
-/

namespace A182834.P4029964516869934784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182834.P4029964516869934784

namespace A182834

/-- `comp[a(n-2)+2*n]` -/
def P4029964516869934784.Spec : Prop :=
  ∀ n, (P4029964516869934784.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P109323436866888839

`comp[a(n-2)+n+n]` with `a(0)=0, a(1)=2`
-/

namespace A182834.P109323436866888839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182834.P109323436866888839

namespace A182834

/-- `comp[a(n-2)+n+n]` -/
def P109323436866888839.Spec : Prop :=
  ∀ n, (P109323436866888839.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P15436407116277672586

`comp[n²-a(n-1)-n]` with `a(0)=0`
-/

namespace A182834.P15436407116277672586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 2 : ℤ) - f1 (n - 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182834.P15436407116277672586

namespace A182834

/-- `comp[n²-a(n-1)-n]` -/
def P15436407116277672586.Spec : Prop :=
  ∀ n, (P15436407116277672586.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P1757080909058288475

`comp[A007590(n)]`
-/

namespace A182834.P1757080909058288475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182834.P1757080909058288475

namespace A182834

/-- `comp[A007590(n)]` -/
def P1757080909058288475.Spec : Prop :=
  ∀ n, (P1757080909058288475.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P13730831715577309540

`∑[char[A008818(2*n)]+1]`
-/

namespace A182834.P13730831715577309540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182834.P13730831715577309540

namespace A182834

/-- `∑[char[A008818(2*n)]+1]` -/
def P13730831715577309540.Spec : Prop :=
  ∀ n, (P13730831715577309540.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P13337693565889704752

`ceil(sqrt(A004273(n+1))+n)`
-/

namespace A182834.P13337693565889704752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004273 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A182834.P13337693565889704752

namespace A182834

/-- `ceil(sqrt(A004273(n+1))+n)` -/
def P13337693565889704752.Spec : Prop :=
  ∀ n, P13337693565889704752.a n = A182834 (n + 1)

end A182834

/-! ## A182834.P13373899956832346227

`round(sqrt(A157502(n+1))+n)`
-/

namespace A182834.P13373899956832346227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157502 (n + 1) : ℝ) + (n : ℝ))

end

end A182834.P13373899956832346227

namespace A182834

/-- `round(sqrt(A157502(n+1))+n)` -/
def P13373899956832346227.Spec : Prop :=
  ∀ n, P13373899956832346227.a n = A182834 (n + 1)

end A182834

/-! ## A182834.P3204921306665683190

`A000027(ceil(sqrt(2*n+1)+n))`
-/

namespace A182834.P3204921306665683190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈Real.sqrt (2 * n + 1 : ℝ) + (n : ℝ)⌉.toNat

end

end A182834.P3204921306665683190

namespace A182834

/-- `A000027(ceil(sqrt(2*n+1)+n))` -/
def P3204921306665683190.Spec : Prop :=
  ∀ n, P3204921306665683190.a n = A182834 (n + 1)

end A182834

/-! ## A182834.P5805450872265503874

`A183300(A183301(n+1))`
-/

namespace A182834.P5805450872265503874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (A183301 (n + 1)).toNat

end

end A182834.P5805450872265503874

namespace A182834

/-- `A183300(A183301(n+1))` -/
def P5805450872265503874.Spec : Prop :=
  ∀ n, P5805450872265503874.a n = A182834 (n + 1)

end A182834

/-! ## A182834.P11325179981987992053

`eq[0, Δ[ceil(sqrt(2*n))]]`
-/

namespace A182834.P11325179981987992053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182834.P11325179981987992053

namespace A182834

/-- `eq[0, Δ[ceil(sqrt(2*n))]]` -/
def P11325179981987992053.Spec : Prop :=
  ∀ n, (P11325179981987992053.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P9106857161089218594

`lt[Δ[ceil(sqrt(2*n))], 1]`
-/

namespace A182834.P9106857161089218594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A182834.P9106857161089218594

namespace A182834

/-- `lt[Δ[ceil(sqrt(2*n))], 1]` -/
def P9106857161089218594.Spec : Prop :=
  ∀ n, (P9106857161089218594.a n : ℤ) = A182834 (n + 1)

end A182834

/-! ## A182834.P11417100395714742534

`A259549(A028392(2*n)+1)`
-/

namespace A182834.P11417100395714742534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (A028392 (2 * n) + 1).toNat

end

end A182834.P11417100395714742534

namespace A182834

/-- `A259549(A028392(2*n)+1)` -/
def P11417100395714742534.Spec : Prop :=
  ∀ n, P11417100395714742534.a n = A182834 (n + 1)

end A182834

/-! ## A182834.P2974506035607234606

`A259549(A078358(2*n+1))`
-/

namespace A182834.P2974506035607234606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (A078358 (2 * n + 1)).toNat

end

end A182834.P2974506035607234606

namespace A182834

/-- `A259549(A078358(2*n+1))` -/
def P2974506035607234606.Spec : Prop :=
  ∀ n, P2974506035607234606.a n = A182834 (n + 1)

end A182834

/-! ## A182834.P2176851320472328188

`A004526(A183866(2*n+1)+1)`
-/

namespace A182834.P2176851320472328188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A183866 (2 * n + 1) + 1).toNat

end

end A182834.P2176851320472328188

namespace A182834

/-- `A004526(A183866(2*n+1)+1)` -/
def P2176851320472328188.Spec : Prop :=
  ∀ n, P2176851320472328188.a n = A182834 (n + 1)

end A182834

/-! ## A182834.P6939968537211901010

`A036576(4*n+2)`
-/

namespace A182834.P6939968537211901010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036576 (4 * n + 2)

end

end A182834.P6939968537211901010

namespace A182834

/-- `A036576(4*n+2)` -/
def P6939968537211901010.Spec : Prop :=
  ∀ n, P6939968537211901010.a n = A182834 (n + 1)

end A182834

/-!
# A182835: n+floor(sqrt(2n+3)), complement of A179207.

The programs for A182835, the canonical program `A182835.P17568416291019306327` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182835 has offset 1).

The definition of A182835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(2*(n+1)+3))` (program `A182835.P17568416291019306327`, by `A182835.P17568416291019306327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182835.P17568416291019306327

`n+1+floor(sqrt(2*(n+1)+3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182835

/-- `n+1+floor(sqrt(2*(n+1)+3))` -/
def P17568416291019306327.Spec : Prop :=
  ∀ n, (P17568416291019306327.a n : ℤ) = A182835 (n + 1)

theorem P17568416291019306327.correct : P17568416291019306327.Spec := by
  intro n
  simp only [A182835, Nat.add_sub_cancel]

end A182835

/-! ## A182835.P4967692518626595007

`floor(sqrt(a(n-1)+a(n-1)+8)+n)` with `a(0)=3`
-/

namespace A182835.P4967692518626595007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊Real.sqrt (a (n - 1) + (a (n - 1) + 8) : ℝ) + (n : ℝ)⌋

end

end A182835.P4967692518626595007

namespace A182835

/-- `floor(sqrt(a(n-1)+a(n-1)+8)+n)` -/
def P4967692518626595007.Spec : Prop :=
  ∀ n, P4967692518626595007.a n = A182835 (n + 1)

end A182835

/-! ## A182835.P16854700893019825267

`comp[abs(2-A000982(n))-1]`
-/

namespace A182835.P16854700893019825267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000982 n| - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182835.P16854700893019825267

namespace A182835

/-- `comp[abs(2-A000982(n))-1]` -/
def P16854700893019825267.Spec : Prop :=
  ∀ n, (P16854700893019825267.a n : ℤ) = A182835 (n + 1)

end A182835

/-! ## A182835.P11527729898807005735

`comp[abs(A001068(2*n)-∑[n])-1]`
-/

namespace A182835.P11527729898807005735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001068 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)| - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182835.P11527729898807005735

namespace A182835

/-- `comp[abs(A001068(2*n)-∑[n])-1]` -/
def P11527729898807005735.Spec : Prop :=
  ∀ n, (P11527729898807005735.a n : ℤ) = A182835 (n + 1)

end A182835

/-! ## A182835.P6940863670378047238

`A023443(A183573(n+2))`
-/

namespace A182835.P6940863670378047238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183573 (n + 2)).toNat

end

end A182835.P6940863670378047238

namespace A182835

/-- `A023443(A183573(n+2))` -/
def P6940863670378047238.Spec : Prop :=
  ∀ n, P6940863670378047238.a n = A182835 (n + 1)

end A182835

/-! ## A182835.P11537627635387488586

`A103128(A047838(A183573(A103128(A116940(n+1)))))`
-/

namespace A182835.P11537627635387488586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A047838 (A183573 (A103128 (A116940 (n + 1)).toNat).toNat).toNat).toNat

end

end A182835.P11537627635387488586

namespace A182835

/-- `A103128(A047838(A183573(A103128(A116940(n+1)))))` -/
def P11537627635387488586.Spec : Prop :=
  ∀ n, P11537627635387488586.a n = A182835 (n + 1)

end A182835

/-!
# A182836: Toothpick sequence starting at the vertex of the outside corner of an infinite 120-degree wedge on hexagonal net.

The programs for A182836, there is no canonical definition to state claims against.
-/

/-! ## A182836.P9251179960289133075

`∑[A182837(n)]`
-/

namespace A182836.P9251179960289133075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182836.P9251179960289133075

/-! ## A182836.P4073911284402030727

`∑[A157477(A194271(n))]`
-/

namespace A182836.P4073911284402030727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A194271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182836.P4073911284402030727

/-! ## A182836.P7048266116145580901

`∑[A212831(A194701(n))]`
-/

namespace A182836.P7048266116145580901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A194701 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182836.P7048266116145580901

/-! ## A182836.P10350821080715648735

`2*A161206(n)-A139250(n)`
-/

namespace A182836.P10350821080715648735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161206 n - A139250 n

end

end A182836.P10350821080715648735

/-! ## A182836.P14725446809402383479

`2*A161206(n)-A182634(n)`
-/

namespace A182836.P14725446809402383479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161206 n - A182634 n

end

end A182836.P14725446809402383479

/-!
# A182838: H-toothpick sequence in the first quadrant starting with a D-toothpick placed on the diagonal [(0,1), (1,2)] (see Comments for precise definition).

The programs for A182838, there is no canonical definition to state claims against.
-/

/-! ## A182838.P3306989558459338394

`∑[A182839(n)]`
-/

namespace A182838.P3306989558459338394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182838.P3306989558459338394

/-! ## A182838.P398688160997411183

`∑[round(Δ[A182840(n)/4])]`
-/

namespace A182838.P398688160997411183
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182840 n : ℚ) / 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182838.P398688160997411183

/-! ## A182838.P1557773844544950442

`∑[round(A182841(n+1)/4)]`
-/

namespace A182838.P1557773844544950442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182841 (n + 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182838.P1557773844544950442

/-! ## A182838.P4086612619096289012

`floor((A182840(n+1)+n)/4)`
-/

namespace A182838.P4086612619096289012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182840 (n + 1) + (n : ℤ) : ℚ) / 4⌋

end

end A182838.P4086612619096289012

/-! ## A182838.P13308704337720439293

`∑[A026922(A182841(n+1))]`
-/

namespace A182838.P13308704337720439293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A182841 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182838.P13308704337720439293

/-!
# A182839: Number of toothpicks and D-toothpicks added at n-th stage to the H-toothpick structure of A182838.

The programs for A182839, there is no canonical definition to state claims against.
-/

/-! ## A182839.P4800121783576240045

`round(Δ[A182840(n)/4])`
-/

namespace A182839.P4800121783576240045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182840 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A182839.P4800121783576240045

/-! ## A182839.P830971210143156596

`round(A182841(n+1)/4)`
-/

namespace A182839.P830971210143156596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182841 (n + 1) : ℚ) / 4)

end

end A182839.P830971210143156596

/-! ## A182839.P448770764142281763

`Δ[A182838(log2(ceil(2^(n-1))))]`
-/

namespace A182839.P448770764142281763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182838 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182839.P448770764142281763

/-! ## A182839.P3048627995344770978

`A026922(A182841(n+1))`
-/

namespace A182839.P3048627995344770978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A182841 (n + 1)).toNat

end

end A182839.P3048627995344770978

/-! ## A182839.P13938285265231762268

`A002265(Δ[A182840(n)]+2)`
-/

namespace A182839.P13938285265231762268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n + 2).toNat

end

end A182839.P13938285265231762268

/-!
# A182840: Toothpick sequence on hexagonal net.

The programs for A182840, there is no canonical definition to state claims against.
-/

/-! ## A182840.P7241701567153665159

`∑[A182841(n)]`
-/

namespace A182840.P7241701567153665159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182840.P7241701567153665159

/-! ## A182840.P17223805787371841218

`A182841(A028310(n))+a(n-1)` with `a(0)=0`
-/

namespace A182840.P17223805787371841218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182841 (A028310 n).toNat + a (n - 1)

end

end A182840.P17223805787371841218

/-! ## A182840.P16082263693113165415

`A182841(n)+a(n-1)-A000038(n)` with `a(0)=0`
-/

namespace A182840.P16082263693113165415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182841 n + a (n - 1) - A000038 n

end

end A182840.P16082263693113165415

/-! ## A182840.P12317125220919368088

`A255563(a(n-1))+A182841(n)` with `a(0)=0`
-/

namespace A182840.P12317125220919368088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A255563 (a (n - 1)).toNat + A182841 n

end

end A182840.P12317125220919368088

/-! ## A182840.P2229405488327105592

`A109613(A182841(n)+a(n-1))` with `a(0)=0`
-/

namespace A182840.P2229405488327105592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A109613 (A182841 n + a (n - 1)).toNat

end

end A182840.P2229405488327105592

/-!
# A182841: Number of toothpicks added at n-th stage in the toothpick structure of A182840.

The programs for A182841, there is no canonical definition to state claims against.
-/

/-! ## A182841.P18216342763787702293

`Δ[A182840(n-ceil(n/(n+1)))]`
-/

namespace A182841.P18216342763787702293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182841.P18216342763787702293

/-! ## A182841.P2572987085110792740

`abs(Δ[A182840(n-A057427(n))])`
-/

namespace A182841.P2572987085110792740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182841.P2572987085110792740

/-! ## A182841.P15498544264956612940

`A182840(n)-A182840(floor(n²/(n+1)))`
-/

namespace A182841.P15498544264956612940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 n - A182840 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A182841.P15498544264956612940

/-! ## A182841.P15896638828236541003

`Δ[A182840(n-A057427(n))]%A016779(n)`
-/

namespace A182841.P15896638828236541003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016779 n)

end

end A182841.P15896638828236541003

/-! ## A182841.P14873780901513018354

`Δ[A182840(A000007(n)+n-A057427(n))]%(n+1)²`
-/

namespace A182841.P14873780901513018354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 (A000007 n + (n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((n + 1) ^ 2 : ℤ)

end

end A182841.P14873780901513018354

/-!
# A182842: a(n) = A182841(n+2)/2.

The programs for A182842, there is no canonical definition to state claims against.
-/

/-! ## A182842.P4199020523297368692

`A182841(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182842.P4199020523297368692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182841 (n + 2) : ℚ) / 2

end

end A182842.P4199020523297368692

/-! ## A182842.P11289911051141504590

`Δ[A182840(n+1)/2]`
-/

namespace A182842.P11289911051141504590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182840 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182842.P11289911051141504590

/-! ## A182842.P2489652582969464171

`A004525(A182841(n+2))`
-/

namespace A182842.P2489652582969464171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A182841 (n + 2)).toNat

end

end A182842.P2489652582969464171

/-! ## A182842.P17425746684303728794

`A004525(Δ[A182840(n+1)])`
-/

namespace A182842.P17425746684303728794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A182842.P17425746684303728794

/-! ## A182842.P11635435657237969770

`A008619(A182841(n+2)-1)`
-/

namespace A182842.P11635435657237969770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A182841 (n + 2) - 1).toNat

end

end A182842.P11635435657237969770

/-! ## A182842.P3478663172738264203

`A002265(Δ[2*A182840(n+1)])`
-/

namespace A182842.P3478663172738264203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A182842.P3478663172738264203

/-! ## A182842.P12922684427980437647

`A178573(n+1)-and(1, A014342(n+1))`
-/

namespace A182842.P12922684427980437647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178573 (n + 1) - Int.land 1 (A014342 (n + 1))

end

end A182842.P12922684427980437647

/-! ## A182842.P10350511972957715666

`A178573(n+1)-A000035(A086520(n))`
-/

namespace A182842.P10350511972957715666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178573 (n + 1) - A000035 (A086520 n).toNat

end

end A182842.P10350511972957715666

/-!
# A182843: Number of composite integers greater than or equal to n whose proper divisors are all less than n.

The programs for A182843, there is no canonical definition to state claims against.
-/

/-! ## A182843.P2888177287201046738

`∑[A286477(A028310(n))-1]`
-/

namespace A182843.P2888177287201046738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182843.P2888177287201046738

/-! ## A182843.P16314049166664601988

`∑[A286477(A263313(n)+1)-1]`
-/

namespace A182843.P16314049166664601988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (A263313 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182843.P16314049166664601988

/-! ## A182843.P13106126217801033586

`∑[A286477(n+1)]-(A286477(n+1)+n)`
-/

namespace A182843.P13106126217801033586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A286477 (n + 1) + (n : ℤ))

end

end A182843.P13106126217801033586

/-! ## A182843.P6950729735387233142

`∑[A023443(A286477(A028310(n)))]`
-/

namespace A182843.P6950729735387233142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A286477 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182843.P6950729735387233142

/-! ## A182843.P16099138091463333600

`A001478(n+1)+∑[A286477(A028310(n))]`
-/

namespace A182843.P16099138091463333600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182843.P16099138091463333600

/-!
# A182844: a(0)=0: a(n)=A002865(2*n)+A002865(2*n+1), n>=1.

The programs for A182844, there is no canonical definition to state claims against.
-/

/-! ## A182844.P4483028030874367028

`A027336(2*n+1)*A057427(n)`
-/

namespace A182844.P4483028030874367028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n + 1) * A057427 n

end

end A182844.P4483028030874367028

/-! ## A182844.P8219627540114999948

`A027336(2*n+1)*A179184(n+2)`
-/

namespace A182844.P8219627540114999948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n + 1) * A179184 (n + 2)

end

end A182844.P8219627540114999948

/-! ## A182844.P17709668886211144933

`A002865(2*n+1)+A232697(2*n)-1`
-/

namespace A182844.P17709668886211144933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) + (A232697 (2 * n) - 1)

end

end A182844.P17709668886211144933

/-! ## A182844.P8208059332746248596

`A117995(2*n+1)+A232697(2*n)-1`
-/

namespace A182844.P8208059332746248596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (2 * n + 1) + (A232697 (2 * n) - 1)

end

end A182844.P8208059332746248596

/-! ## A182844.P1434974391309111253

`A232697(2*n+1)+A232697(2*n)-2`
-/

namespace A182844.P1434974391309111253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (2 * n + 1) + (A232697 (2 * n) - 2)

end

end A182844.P1434974391309111253

/-! ## A182844.P16334195838694926991

`A027336(2*n+1)-A065033(2*n)+n`
-/

namespace A182844.P16334195838694926991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n + 1) - A065033 (2 * n) + (n : ℤ)

end

end A182844.P16334195838694926991

/-! ## A182844.P4900646703994449978

`A002865(2*n+1)+A002865(A004277(n))`
-/

namespace A182844.P4900646703994449978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) + A002865 (A004277 n).toNat

end

end A182844.P4900646703994449978

/-! ## A182844.P16469856068026873897

`A002865(2*n+1)+A002865(A028310(2*n))`
-/

namespace A182844.P16469856068026873897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) + A002865 (A028310 (2 * n)).toNat

end

end A182844.P16469856068026873897

/-! ## A182844.P5647232494982537118

`A002865(2*n+1)+A002865(2*n)-A000007(n)`
-/

namespace A182844.P5647232494982537118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) + (A002865 (2 * n) - A000007 n)

end

end A182844.P5647232494982537118

/-! ## A182844.P17925645425506567806

`A002865(2*n+1)+A002865(2*n)*A057427(n)`
-/

namespace A182844.P17925645425506567806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) + A002865 (2 * n) * A057427 n

end

end A182844.P17925645425506567806

/-! ## A182844.P8456101329848851094

`A002865(2*n+1)-A002865(2*n)*A057428(n)`
-/

namespace A182844.P8456101329848851094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) - A002865 (2 * n) * A057428 n

end

end A182844.P8456101329848851094

/-! ## A182844.P17326598939947680394

`A002865(2*n+1)+A002865(2*n)-A033322(n+2)`
-/

namespace A182844.P17326598939947680394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) + (A002865 (2 * n) - A033322 (n + 2))

end

end A182844.P17326598939947680394

/-! ## A182844.P7464958872250502301

`record[Δ[A000041(or(1, n))]]`
-/

namespace A182844.P7464958872250502301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182844.P7464958872250502301

/-! ## A182844.P12263995576431044566

`Δ[A000041(abs(1-2*n))]`
-/

namespace A182844.P12263995576431044566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182844.P12263995576431044566

/-! ## A182844.P8641028059458489270

`abs(Δ[A000041(comp[2*(n+1)])])`
-/

namespace A182844.P8641028059458489270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182844.P8641028059458489270

/-! ## A182844.P9383409806428701091

`record[Δ[A000041(A109613(n))]]`
-/

namespace A182844.P9383409806428701091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A109613 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182844.P9383409806428701091

/-! ## A182844.P18052675446935919018

`A000041(2*n+1)-A000041(floor((2*n)²/(2*n+1)))`
-/

namespace A182844.P18052675446935919018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A000041 ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋.toNat

end

end A182844.P18052675446935919018

/-! ## A182844.P13043271384285183888

`record[Δ[A000041(A006257(n))]]`
-/

namespace A182844.P13043271384285183888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A006257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182844.P13043271384285183888

/-! ## A182844.P12437269868602064934

`A027336(Δ[n²])%A002865(3*(n+1))`
-/

namespace A182844.P12437269868602064934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A002865 (3 * (n + 1)))

end

end A182844.P12437269868602064934

/-! ## A182844.P9917530409385304638

`record[Δ[A000041(A352226(n+1))]]`
-/

namespace A182844.P9917530409385304638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A352226 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182844.P9917530409385304638

/-!
# A182845: a(n) = A002865(2*n-1)+A002865(2*n).

The programs for A182845, there is no canonical definition to state claims against.
-/

/-! ## A182845.P13566671149365064021

`A002865(2*(n+1)-1)+A002865(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182845.P13566671149365064021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * (n + 1) - 1) + A002865 (2 * (n + 1))

end

end A182845.P13566671149365064021

/-! ## A182845.P3395751549559121710

`Δ[A058696(n)]`
-/

namespace A182845.P3395751549559121710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P3395751549559121710

/-! ## A182845.P4466736006099156389

`Δ[A332706(n)]+1`
-/

namespace A182845.P4466736006099156389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A182845.P4466736006099156389

/-! ## A182845.P3998636854286410862

`Δ[A000041(2*n)]`
-/

namespace A182845.P3998636854286410862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P3998636854286410862

/-! ## A182845.P843323775228330269

`Δ[A000065(2*n)]`
-/

namespace A182845.P843323775228330269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P843323775228330269

/-! ## A182845.P10528230864063583564

`Δ[A035363(4*n)]`
-/

namespace A182845.P10528230864063583564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P10528230864063583564

/-! ## A182845.P3767723810240042879

`Δ[A119620(4*n)]`
-/

namespace A182845.P3767723810240042879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P3767723810240042879

/-! ## A182845.P7988411271209369419

`Δ[A035377(6*n)]`
-/

namespace A182845.P7988411271209369419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P7988411271209369419

/-! ## A182845.P1377880888102669117

`A027336(2*(n+1))`
-/

namespace A182845.P1377880888102669117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * (n + 1))

end

end A182845.P1377880888102669117

/-! ## A182845.P9492659497189841378

`Δ[sqrt(A001255(2*n))]`
-/

namespace A182845.P9492659497189841378
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P9492659497189841378

/-! ## A182845.P16756311301777970397

`Δ[record[A114099(2*n)]]`
-/

namespace A182845.P16756311301777970397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P16756311301777970397

/-! ## A182845.P9377080206506573599

`Δ[A058984(2*n)]+1`
-/

namespace A182845.P9377080206506573599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A182845.P9377080206506573599

/-! ## A182845.P8442938763200075680

`Δ[A133041(2*n)]-2`
-/

namespace A182845.P8442938763200075680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A182845.P8442938763200075680

/-! ## A182845.P15164141963080888056

`Δ[A139582(2*n)/2]`
-/

namespace A182845.P15164141963080888056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P15164141963080888056

/-! ## A182845.P2538775660154545831

`Δ[record[A000041(and(n, n+1))]]`
-/

namespace A182845.P2538775660154545831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.land n (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182845.P2538775660154545831

/-! ## A182845.P18283652530614205298

`abs(Δ[A000041(A004277(n))])`
-/

namespace A182845.P18283652530614205298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182845.P18283652530614205298

/-! ## A182845.P11023802961312148376

`abs(Δ[A000041(A005843(n))])`
-/

namespace A182845.P11023802961312148376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182845.P11023802961312148376

/-! ## A182845.P1285871887550883000

`A182747(n)+A182746(n+1)`
-/

namespace A182845.P1285871887550883000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182747 n + A182746 (n + 1)

end

end A182845.P1285871887550883000

/-! ## A182845.P2288922811353731797

`A058696(n+1)-A058696(n)`
-/

namespace A182845.P2288922811353731797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A058696 n

end

end A182845.P2288922811353731797

/-! ## A182845.P13439742003389371366

`record[Δ[A000041(A006257(n)+1)]]`
-/

namespace A182845.P13439742003389371366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A006257 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182845.P13439742003389371366

/-!
# A182846: Joint-rank array of the numbers j*(i-1+r), where r=sqrt(2), i>=1, j>=1, by antidiagonals.

The programs for A182846, there is no canonical definition to state claims against.
-/

/-! ## A182846.P12151809818006083159

`A292956(∑[char[∑[n]]]²-n)`
-/

namespace A182846.P12151809818006083159
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292956 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A182846.P12151809818006083159

/-! ## A182846.P9501717404683700256

`A292956(A038722(n+1))%255`
-/

namespace A182846.P9501717404683700256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292956 (A038722 (n + 1)).toNat) 255

end

end A182846.P9501717404683700256

/-! ## A182846.P3737901417490299604

`A292956(A038722(1-char[2]+n))-char[2]`
-/

namespace A182846.P3737901417490299604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292956 (A038722 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182846.P3737901417490299604

/-! ## A182846.P961025343696131966

`A292956(A038722(n+1))*A304042(n)`
-/

namespace A182846.P961025343696131966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292956 (A038722 (n + 1)).toNat * A304042 n

end

end A182846.P961025343696131966

/-! ## A182846.P2486522169982958212

`lcm(A033999(n), A292956(A038722(n+1)))`
-/

namespace A182846.P2486522169982958212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292956 (A038722 (n + 1)).toNat)

end

end A182846.P2486522169982958212

/-! ## A182846.P7591347690928959459

`or(A000007(n), A292956(A038722(n+1)))`
-/

namespace A182846.P7591347690928959459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292956 (A038722 (n + 1)).toNat)

end

end A182846.P7591347690928959459

/-! ## A182846.P16333408332944166136

`A292956(A038722(n+1))^gcd(2, A000040(n+1))`
-/

namespace A182846.P16333408332944166136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292956 (A038722 (n + 1)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A182846.P16333408332944166136

/-!
# A182847: Joint-rank array of the numbers j*(i-1+r), where r=sqrt(3), i>=1, j>=1, by diagonals.

The programs for A182847, there is no canonical definition to state claims against.
-/

/-! ## A182847.P16600782828956745529

`A292957(∑[char[∑[n]]]²-n)`
-/

namespace A182847.P16600782828956745529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292957 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A182847.P16600782828956745529

/-! ## A182847.P4633149416733694738

`A292957(A038722(n+1))%255`
-/

namespace A182847.P4633149416733694738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292957 (A038722 (n + 1)).toNat) 255

end

end A182847.P4633149416733694738

/-! ## A182847.P9733181146611838607

`A292957(A038722(n+1))*A304042(n)`
-/

namespace A182847.P9733181146611838607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292957 (A038722 (n + 1)).toNat * A304042 n

end

end A182847.P9733181146611838607

/-! ## A182847.P4514890391648121856

`A007318(C(2, n))*A292957(A038722(n+1))`
-/

namespace A182847.P4514890391648121856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A292957 (A038722 (n + 1)).toNat

end

end A182847.P4514890391648121856

/-! ## A182847.P5082865886259338289

`A292957(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A182847.P5082865886259338289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292957 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A182847.P5082865886259338289

/-! ## A182847.P1464604317424925073

`A014963(4*n+6)*A292957(A038722(n+1))`
-/

namespace A182847.P1464604317424925073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A292957 (A038722 (n + 1)).toNat

end

end A182847.P1464604317424925073

/-! ## A182847.P5824066408643807771

`A292957(A038722(n+1))^A000203(ceil(2/(n+1)))`
-/

namespace A182847.P5824066408643807771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292957 (A038722 (n + 1)).toNat : ℚ) ^ (A000203 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A182847.P5824066408643807771

/-!
# A182848: Joint-rank array of the numbers j*(i-1+r), where r=sqrt(5), i>=1, j>=1, by antidiagonals.

The programs for A182848, there is no canonical definition to state claims against.
-/

/-! ## A182848.P13215204282716045374

`A292958(∑[char[∑[n]]]²-n)`
-/

namespace A182848.P13215204282716045374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292958 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A182848.P13215204282716045374

/-! ## A182848.P2922294855556512497

`A292958(A038722(n+1))%255`
-/

namespace A182848.P2922294855556512497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292958 (A038722 (n + 1)).toNat) 255

end

end A182848.P2922294855556512497

/-! ## A182848.P12467331825477328473

`A292958(A038722(n+1))*A304042(n)`
-/

namespace A182848.P12467331825477328473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292958 (A038722 (n + 1)).toNat * A304042 n

end

end A182848.P12467331825477328473

/-! ## A182848.P10713909156325683623

`A292958(A038722(n+1))^A178334(n)`
-/

namespace A182848.P10713909156325683623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292958 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A182848.P10713909156325683623

/-! ## A182848.P11405029827282089647

`gcd(A000038(n), A292958(A038722(n+1)))`
-/

namespace A182848.P11405029827282089647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292958 (A038722 (n + 1)).toNat)

end

end A182848.P11405029827282089647

/-! ## A182848.P18316001573041014695

`or(A000007(n), A292958(A038722(n+1)))`
-/

namespace A182848.P18316001573041014695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292958 (A038722 (n + 1)).toNat)

end

end A182848.P18316001573041014695

/-! ## A182848.P16218002559158125785

`A292958(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A182848.P16218002559158125785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292958 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A182848.P16218002559158125785

/-!
# A182849: Joint-rank array of the numbers j*(i-1+r), where r = golden ratio = (1+sqrt(5))/2, and i>=1, j>=1, by antidiagonals.

The programs for A182849, there is no canonical definition to state claims against.
-/

/-! ## A182849.P2589724735048216995

`A292959(∑[char[∑[n]]]²-n)`
-/

namespace A182849.P2589724735048216995
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292959 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A182849.P2589724735048216995

/-! ## A182849.P14595379682123018906

`A292959(A038722(n+1))%255`
-/

namespace A182849.P14595379682123018906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292959 (A038722 (n + 1)).toNat) 255

end

end A182849.P14595379682123018906

/-! ## A182849.P5131864605592116614

`xor(1, xor(1, A292959(A061579(n)+1)))`
-/

namespace A182849.P5131864605592116614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A292959 (A061579 n + 1).toNat))

end

end A182849.P5131864605592116614

/-! ## A182849.P13858466753828851572

`A292959(A038722(n+1))*A304042(n)`
-/

namespace A182849.P13858466753828851572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292959 (A038722 (n + 1)).toNat * A304042 n

end

end A182849.P13858466753828851572

/-! ## A182849.P2558265580460911860

`A292959(A038722(n+1))^A178334(n)`
-/

namespace A182849.P2558265580460911860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292959 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A182849.P2558265580460911860

/-! ## A182849.P9497485888953719364

`A292959(A061579(n)+1)%A016959(n)`
-/

namespace A182849.P9497485888953719364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292959 (A061579 n + 1).toNat) (A016959 n)

end

end A182849.P9497485888953719364

/-! ## A182849.P117483747972127702

`A292959(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A182849.P117483747972127702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292959 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A182849.P117483747972127702

/-! ## A182849.P8662110903332764443

`A292959(A061579(n)+1)^(A000040(n+1)%2)`
-/

namespace A182849.P8662110903332764443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292959 (A061579 n + 1).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A182849.P8662110903332764443

/-! ## A182849.P6347992927963703113

`A292959(A061579(n)+1)+A008683(24*n+8)`
-/

namespace A182849.P6347992927963703113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292959 (A061579 n + 1).toNat + A008683 (24 * n + 8)

end

end A182849.P6347992927963703113

/-!
# A182850: a(n) = number of iterations that n requires to reach a fixed point under the x -> A181819(x) map.

The programs for A182850, the canonical program `A182850.P7145177471300876848` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182850 has offset 1).

The definition of A182850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182850.P7145177471300876848

`a(A181819(n+1)-1)+1` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A182850

/-- `a(A181819(n+1)-1)+1` -/
def P7145177471300876848.Spec : Prop :=
  ∀ n, (P7145177471300876848.a n : ℤ) = A182850 (n + 1)

theorem P7145177471300876848.correct : P7145177471300876848.Spec := by
  intro n
  simp only [A182850, Nat.add_sub_cancel]

end A182850

/-! ## A182850.P2621371183282127247

`A323014(1-char[1]+n)`
-/

namespace A182850.P2621371183282127247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A182850.P2621371183282127247

namespace A182850

/-- `A323014(1-char[1]+n)` -/
def P2621371183282127247.Spec : Prop :=
  ∀ n, P2621371183282127247.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P4321625925065405845

`xor(char[1], A323014(n+1))`
-/

namespace A182850.P4321625925065405845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A323014 (n + 1))

end

end A182850.P4321625925065405845

namespace A182850

/-- `xor(char[1], A323014(n+1))` -/
def P4321625925065405845.Spec : Prop :=
  ∀ n, P4321625925065405845.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P11287041974663220987

`floor(A304455(n+1)+atan(n))`
-/

namespace A182850.P11287041974663220987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304455 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌋

end

end A182850.P11287041974663220987

namespace A182850

/-- `floor(A304455(n+1)+atan(n))` -/
def P11287041974663220987.Spec : Prop :=
  ∀ n, P11287041974663220987.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P4359222371606416799

`A304455(n+1)+A157928(n)`
-/

namespace A182850.P4359222371606416799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A157928 n

end

end A182850.P4359222371606416799

namespace A182850

/-- `A304455(n+1)+A157928(n)` -/
def P4359222371606416799.Spec : Prop :=
  ∀ n, P4359222371606416799.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P11427120933963637346

`A323014(n+1)+A159075(n)`
-/

namespace A182850.P11427120933963637346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1) + A159075 n

end

end A182850.P11427120933963637346

namespace A182850

/-- `A323014(n+1)+A159075(n)` -/
def P11427120933963637346.Spec : Prop :=
  ∀ n, P11427120933963637346.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P10082736523986042317

`A323014(n+1)-A063524(n)`
-/

namespace A182850.P10082736523986042317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1) - A063524 n

end

end A182850.P10082736523986042317

namespace A182850

/-- `A323014(n+1)-A063524(n)` -/
def P10082736523986042317.Spec : Prop :=
  ∀ n, P10082736523986042317.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P3729977156105720335

`A060576(n)*A323014(n+1)`
-/

namespace A182850.P3729977156105720335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A323014 (n + 1)

end

end A182850.P3729977156105720335

namespace A182850

/-- `A060576(n)*A323014(n+1)` -/
def P3729977156105720335.Spec : Prop :=
  ∀ n, P3729977156105720335.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P3397296274656871700

`A157928(n)*A323014(n+1)`
-/

namespace A182850.P3397296274656871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A323014 (n + 1)

end

end A182850.P3397296274656871700

namespace A182850

/-- `A157928(n)*A323014(n+1)` -/
def P3397296274656871700.Spec : Prop :=
  ∀ n, P3397296274656871700.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P3510701088091593751

`A323014(n+1)%A036059(n)`
-/

namespace A182850.P3510701088091593751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323014 (n + 1)) (A036059 n)

end

end A182850.P3510701088091593751

namespace A182850

/-- `A323014(n+1)%A036059(n)` -/
def P3510701088091593751.Spec : Prop :=
  ∀ n, P3510701088091593751.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P5967788019726708728

`lcm(A105812(n), A323014(n+1))`
-/

namespace A182850.P5967788019726708728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A323014 (n + 1))

end

end A182850.P5967788019726708728

namespace A182850

/-- `lcm(A105812(n), A323014(n+1))` -/
def P5967788019726708728.Spec : Prop :=
  ∀ n, (P5967788019726708728.a n : ℤ) = A182850 (n + 1)

end A182850

/-! ## A182850.P2317733433900151802

`and(A168093(n), A323014(n+1))`
-/

namespace A182850.P2317733433900151802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168093 n) (A323014 (n + 1))

end

end A182850.P2317733433900151802

namespace A182850

/-- `and(A168093(n), A323014(n+1))` -/
def P2317733433900151802.Spec : Prop :=
  ∀ n, P2317733433900151802.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P11138579375345532225

`A304455(n+1)+A057427(A004526(n))`
-/

namespace A182850.P11138579375345532225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A057427 (A004526 n).toNat

end

end A182850.P11138579375345532225

namespace A182850

/-- `A304455(n+1)+A057427(A004526(n))` -/
def P11138579375345532225.Spec : Prop :=
  ∀ n, P11138579375345532225.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P12453626957123514529

`A304455(n+1)+A046079(A151800(n))`
-/

namespace A182850.P12453626957123514529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A046079 (A151800 n).toNat

end

end A182850.P12453626957123514529

namespace A182850

/-- `A304455(n+1)+A046079(A151800(n))` -/
def P12453626957123514529.Spec : Prop :=
  ∀ n, P12453626957123514529.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P5547064324190163008

`A304455(n+1)+A057427(n-A057427(n))`
-/

namespace A182850.P5547064324190163008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A057427 ((n : ℤ) - A057427 n).toNat

end

end A182850.P5547064324190163008

namespace A182850

/-- `A304455(n+1)+A057427(n-A057427(n))` -/
def P5547064324190163008.Spec : Prop :=
  ∀ n, P5547064324190163008.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P16348427023610030414

`A304455(n+1)-A057428(A057428(n)+n)`
-/

namespace A182850.P16348427023610030414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) - A057428 (A057428 n + (n : ℤ)).toNat

end

end A182850.P16348427023610030414

namespace A182850

/-- `A304455(n+1)-A057428(A057428(n)+n)` -/
def P16348427023610030414.Spec : Prop :=
  ∀ n, P16348427023610030414.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P16214671124409877592

`and(A323014(n+1), A336190(n))`
-/

namespace A182850.P16214671124409877592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323014 (n + 1)) (A336190 n)

end

end A182850.P16214671124409877592

namespace A182850

/-- `and(A323014(n+1), A336190(n))` -/
def P16214671124409877592.Spec : Prop :=
  ∀ n, P16214671124409877592.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P10347004827615963709

`and(A178885(n), A323014(n+1))`
-/

namespace A182850.P10347004827615963709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178885 n) (A323014 (n + 1))

end

end A182850.P10347004827615963709

namespace A182850

/-- `and(A178885(n), A323014(n+1))` -/
def P10347004827615963709.Spec : Prop :=
  ∀ n, P10347004827615963709.a n = A182850 (n + 1)

end A182850

/-! ## A182850.P14717216032138891871

`and(A140360(n), A323014(n+1))`
-/

namespace A182850.P14717216032138891871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140360 n) (A323014 (n + 1))

end

end A182850.P14717216032138891871

namespace A182850

/-- `and(A140360(n), A323014(n+1))` -/
def P14717216032138891871.Spec : Prop :=
  ∀ n, P14717216032138891871.a n = A182850 (n + 1)

end A182850

/-!
# A182851: Numbers k such that A182850(k) is odd.

The programs for A182851, the canonical program `A182851.P17505694771049546199` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182851 has offset 1).

The definition of A182851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182851.P17505694771049546199

`eq[1, A182850(n+1)%2]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A182851

/-- `eq[1, A182850(n+1)%2]+1` -/
def P17505694771049546199.Spec : Prop :=
  ∀ n, (P17505694771049546199.a n : ℤ) = A182851 (n + 1)

theorem P17505694771049546199.correct : P17505694771049546199.Spec := by
  intro n
  simp only [A182851, Nat.add_sub_cancel]

end A182851

/-! ## A182851.P6834418743656167971

`∪[A130092(n+1), A318718(n+1)]`
-/

namespace A182851.P6834418743656167971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182851.P6834418743656167971

namespace A182851

/-- `∪[A130092(n+1), A318718(n+1)]` -/
def P6834418743656167971.Spec : Prop :=
  ∀ n, (P6834418743656167971.a n : ℤ) = A182851 (n + 1)

end A182851

/-! ## A182851.P9309141077278230988

`∪[A130092(n+1), A302568(n+1)]`
-/

namespace A182851.P9309141077278230988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182851.P9309141077278230988

namespace A182851

/-- `∪[A130092(n+1), A302568(n+1)]` -/
def P9309141077278230988.Spec : Prop :=
  ∀ n, (P9309141077278230988.a n : ℤ) = A182851 (n + 1)

end A182851

/-! ## A182851.P5385491425820446280

`∩[A349019(n+1), A364058(n+1)]`
-/

namespace A182851.P5385491425820446280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182851.P5385491425820446280

namespace A182851

/-- `∩[A349019(n+1), A364058(n+1)]` -/
def P5385491425820446280.Spec : Prop :=
  ∀ n, (P5385491425820446280.a n : ℤ) = A182851 (n + 1)

end A182851

/-! ## A182851.P12408205170936362545

`record[A348036(A003003(n+1)+2)]`
-/

namespace A182851.P12408205170936362545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (A003003 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182851.P12408205170936362545

namespace A182851

/-- `record[A348036(A003003(n+1)+2)]` -/
def P12408205170936362545.Spec : Prop :=
  ∀ n, P12408205170936362545.a n = A182851 (n + 1)

end A182851

/-!
# A182852: Numbers k such that A182850(k) is even.

The programs for A182852, the canonical program `A182852.P6926855867599715632` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182852 has offset 1).

The definition of A182852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1772 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182852.P6926855867599715632

`eq[A182850(n+1)%2, 0]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A182852

/-- `eq[A182850(n+1)%2, 0]+1` -/
def P6926855867599715632.Spec : Prop :=
  ∀ n, (P6926855867599715632.a n : ℤ) = A182852 (n + 1)

theorem P6926855867599715632.correct : P6926855867599715632.Spec := by
  intro n
  simp only [A182852, Nat.add_sub_cancel]

end A182852

/-! ## A182852.P11661465643297486333

`eq[char[A182851(n+1)], A000038(n)]`
-/

namespace A182852.P11661465643297486333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A182852.P11661465643297486333

namespace A182852

/-- `eq[char[A182851(n+1)], A000038(n)]` -/
def P11661465643297486333.Spec : Prop :=
  ∀ n, (P11661465643297486333.a n : ℤ) = A182852 (n + 1)

end A182852

/-! ## A182852.P9269613630001839712

`lt[A292622(A091379(2*(n+1))), A336423(n+1)]+1`
-/

namespace A182852.P9269613630001839712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292622 (A091379 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A182852.P9269613630001839712

namespace A182852

/-- `lt[A292622(A091379(2*(n+1))), A336423(n+1)]+1` -/
def P9269613630001839712.Spec : Prop :=
  ∀ n, (P9269613630001839712.a n : ℤ) = A182852 (n + 1)

end A182852

/-! ## A182852.P439302973009945814

`comp[A005117(n+1)%A180414(n)]`
-/

namespace A182852.P439302973009945814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (n + 1)) (A180414 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182852.P439302973009945814

namespace A182852

/-- `comp[A005117(n+1)%A180414(n)]` -/
def P439302973009945814.Spec : Prop :=
  ∀ n, (P439302973009945814.a n : ℤ) = A182852 (n + 1)

end A182852

/-! ## A182852.P10337975511612184341

`lt[A202535(n+1), A239067(3*n+4)]+1`
-/

namespace A182852.P10337975511612184341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239067 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A182852.P10337975511612184341

namespace A182852

/-- `lt[A202535(n+1), A239067(3*n+4)]+1` -/
def P10337975511612184341.Spec : Prop :=
  ∀ n, (P10337975511612184341.a n : ℤ) = A182852 (n + 1)

end A182852

/-!
# A182853: Squarefree composite integers and powers of squarefree composite integers.

The programs for A182853, the canonical program `A182853.P12567971007581339213` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182853 has offset 1).

The definition of A182853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182853.P12567971007581339213

`eq[1, A354353(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A182853

/-- `eq[1, A354353(n+1)]+1` -/
def P12567971007581339213.Spec : Prop :=
  ∀ n, (P12567971007581339213.a n : ℤ) = A182853 (n + 1)

theorem P12567971007581339213.correct : P12567971007581339213.Spec := by
  intro n
  simp only [A182853, Nat.add_sub_cancel]

end A182853

/-! ## A182853.P9157919140321932348

`eq[3, A323014(n+1)]+1`
-/

namespace A182853.P9157919140321932348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182853.P9157919140321932348

namespace A182853

/-- `eq[3, A323014(n+1)]+1` -/
def P9157919140321932348.Spec : Prop :=
  ∀ n, (P9157919140321932348.a n : ℤ) = A182853 (n + 1)

end A182853

/-! ## A182853.P2670004091452370089

`filter[A067340(n+2), A354353(#)]`
-/

namespace A182853.P2670004091452370089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P2670004091452370089

namespace A182853

/-- `filter[A067340(n+2), A354353(#)]` -/
def P2670004091452370089.Spec : Prop :=
  ∀ n, P2670004091452370089.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P3539785562633571217

`eq[2, A304455(n+1)]+1`
-/

namespace A182853.P3539785562633571217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182853.P3539785562633571217

namespace A182853

/-- `eq[2, A304455(n+1)]+1` -/
def P3539785562633571217.Spec : Prop :=
  ∀ n, (P3539785562633571217.a n : ℤ) = A182853 (n + 1)

end A182853

/-! ## A182853.P756708757638290977

`filter[A230766(n+1), A354353(#)]`
-/

namespace A182853.P756708757638290977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P756708757638290977

namespace A182853

/-- `filter[A230766(n+1), A354353(#)]` -/
def P756708757638290977.Spec : Prop :=
  ∀ n, P756708757638290977.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P3817430773566585873

`filter[A062770(n+1), A354353(#)]`
-/

namespace A182853.P3817430773566585873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P3817430773566585873

namespace A182853

/-- `filter[A062770(n+1), A354353(#)]` -/
def P3817430773566585873.Spec : Prop :=
  ∀ n, P3817430773566585873.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P17566075015600501056

`filter[A072774(n+1), A354353(#)]`
-/

namespace A182853.P17566075015600501056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P17566075015600501056

namespace A182853

/-- `filter[A072774(n+1), A354353(#)]` -/
def P17566075015600501056.Spec : Prop :=
  ∀ n, P17566075015600501056.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P12498464301065964942

`filter[A304449(n+1), A354353(#)]`
-/

namespace A182853.P12498464301065964942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P12498464301065964942

namespace A182853

/-- `filter[A304449(n+1), A354353(#)]` -/
def P12498464301065964942.Spec : Prop :=
  ∀ n, P12498464301065964942.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P3957148332538786912

`filter[A317101(n+1), A354353(#)]`
-/

namespace A182853.P3957148332538786912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P3957148332538786912

namespace A182853

/-- `filter[A317101(n+1), A354353(#)]` -/
def P3957148332538786912.Spec : Prop :=
  ∀ n, P3957148332538786912.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P13007615576891975910

`filter[A393924(n+1), A354353(#)]`
-/

namespace A182853.P13007615576891975910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P13007615576891975910

namespace A182853

/-- `filter[A393924(n+1), A354353(#)]` -/
def P13007615576891975910.Spec : Prop :=
  ∀ n, P13007615576891975910.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P12063631436374626376

`filter[A304678(n+2), A354353(#)]`
-/

namespace A182853.P12063631436374626376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P12063631436374626376

namespace A182853

/-- `filter[A304678(n+2), A354353(#)]` -/
def P12063631436374626376.Spec : Prop :=
  ∀ n, P12063631436374626376.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P13432971688101319607

`filter[A085924(n), A354353(#)]`
-/

namespace A182853.P13432971688101319607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P13432971688101319607

namespace A182853

/-- `filter[A085924(n), A354353(#)]` -/
def P13432971688101319607.Spec : Prop :=
  ∀ n, P13432971688101319607.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P15634455388931727674

`∩[A230766(n+1), A085924(n)]`
-/

namespace A182853.P15634455388931727674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182853.P15634455388931727674

namespace A182853

/-- `∩[A230766(n+1), A085924(n)]` -/
def P15634455388931727674.Spec : Prop :=
  ∀ n, (P15634455388931727674.a n : ℤ) = A182853 (n + 1)

end A182853

/-! ## A182853.P9432795254079340902

`filter[A389499(n+1), A354353(#)]`
-/

namespace A182853.P9432795254079340902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P9432795254079340902

namespace A182853

/-- `filter[A389499(n+1), A354353(#)]` -/
def P9432795254079340902.Spec : Prop :=
  ∀ n, P9432795254079340902.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P12521118695675610506

`filter[A057714(n+1), A354353(#)]`
-/

namespace A182853.P12521118695675610506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P12521118695675610506

namespace A182853

/-- `filter[A057714(n+1), A354353(#)]` -/
def P12521118695675610506.Spec : Prop :=
  ∀ n, P12521118695675610506.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P3253814725448666851

`∩[A057714(n+1), A062770(n+1)]`
-/

namespace A182853.P3253814725448666851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182853.P3253814725448666851

namespace A182853

/-- `∩[A057714(n+1), A062770(n+1)]` -/
def P3253814725448666851.Spec : Prop :=
  ∀ n, (P3253814725448666851.a n : ℤ) = A182853 (n + 1)

end A182853

/-! ## A182853.P13706076028575886469

`∩[A057714(n+1), A072774(n+1)]`
-/

namespace A182853.P13706076028575886469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182853.P13706076028575886469

namespace A182853

/-- `∩[A057714(n+1), A072774(n+1)]` -/
def P13706076028575886469.Spec : Prop :=
  ∀ n, (P13706076028575886469.a n : ℤ) = A182853 (n + 1)

end A182853

/-! ## A182853.P2357755271731222045

`filter[A130092(n+1), A354353(#)]`
-/

namespace A182853.P2357755271731222045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A182853.P2357755271731222045

namespace A182853

/-- `filter[A130092(n+1), A354353(#)]` -/
def P2357755271731222045.Spec : Prop :=
  ∀ n, P2357755271731222045.a n = A182853 (n + 1)

end A182853

/-! ## A182853.P8338917543002456278

`∩[A062770(n+1), A130092(n+1)]`
-/

namespace A182853.P8338917543002456278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182853.P8338917543002456278

namespace A182853

/-- `∩[A062770(n+1), A130092(n+1)]` -/
def P8338917543002456278.Spec : Prop :=
  ∀ n, (P8338917543002456278.a n : ℤ) = A182853 (n + 1)

end A182853

/-!
# A182854: 

The programs for A182854, there is no canonical definition to state claims against.
-/

/-! ## A182854.P16018134681832708202

`eq[4, A323014(n+1)]+1`
-/

namespace A182854.P16018134681832708202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182854.P16018134681832708202

/-! ## A182854.P14394036522014729648

`record[A059404(n+1)/A323022(A059404(n+1))]`
-/

namespace A182854.P14394036522014729648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059404 (n + 1) : ℚ) / (A323022 (A059404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182854.P14394036522014729648

/-! ## A182854.P17930815306913817076

`eq[3, A304455(n+1)]+1`
-/

namespace A182854.P17930815306913817076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182854.P17930815306913817076

/-! ## A182854.P17772874173772728578

`eq[4, A182850(n+1)]+1`
-/

namespace A182854.P17772874173772728578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182854.P17772874173772728578

/-! ## A182854.P14539867750245288895

`eq[3, A304455(A028310(n))]`
-/

namespace A182854.P14539867750245288895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182854.P14539867750245288895

/-! ## A182854.P12785127057419782346

`A020725(eq[3, A304455(n+1)])`
-/

namespace A182854.P12785127057419782346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182854.P12785127057419782346

/-! ## A182854.P9683372281494823976

`A065475(eq[3, A304455(n+1)])`
-/

namespace A182854.P9683372281494823976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182854.P9683372281494823976

/-! ## A182854.P13611420107548141438

`A153152(eq[3, A304455(n+1)])`
-/

namespace A182854.P13611420107548141438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182854.P13611420107548141438

/-! ## A182854.P10881654976033580811

`A020725(eq[4, A182850(n+1)])`
-/

namespace A182854.P10881654976033580811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182854.P10881654976033580811

/-! ## A182854.P2485206113340734180

`A153152(eq[4, A182850(n+1)])`
-/

namespace A182854.P2485206113340734180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182854.P2485206113340734180

/-! ## A182854.P9723635365785996007

`A181569(eq[4, A182850(n+1)])`
-/

namespace A182854.P9723635365785996007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182854.P9723635365785996007

/-! ## A182854.P14711233097602034625

`eq[3, A304455(A000038(n)+n)]`
-/

namespace A182854.P14711233097602034625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182854.P14711233097602034625

/-! ## A182854.P17801731689398057595

`eq[4, A182850(A000007(n)+n)]`
-/

namespace A182854.P17801731689398057595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182854.P17801731689398057595

/-! ## A182854.P4536548314329353682

`eq[4, A182850(A000038(n)+n)]`
-/

namespace A182854.P4536548314329353682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182854.P4536548314329353682

/-! ## A182854.P9082447595085296931

`eq[4, A182850(or(n, A000038(n)))]`
-/

namespace A182854.P9082447595085296931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182854.P9082447595085296931

/-! ## A182854.P2526420554572081622

`eq[3, A304455(A138153(n+1))]`
-/

namespace A182854.P2526420554572081622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182854.P2526420554572081622

/-! ## A182854.P4599508488887012800

`eq[4, A182850(A123108(2*n))]`
-/

namespace A182854.P4599508488887012800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182854.P4599508488887012800

/-! ## A182854.P1053807730844788486

`A177425(n+1)%A041746(n)`
-/

namespace A182854.P1053807730844788486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177425 (n + 1)) (A041746 n)

end

end A182854.P1053807730844788486

/-! ## A182854.P13976812274850736200

`A113484(eq[3, A304455(n+1)])`
-/

namespace A182854.P13976812274850736200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182854.P13976812274850736200

/-! ## A182854.P11235115082107488445

`eq[4, A182850(A233583(n+1))]`
-/

namespace A182854.P11235115082107488445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182854.P11235115082107488445

/-!
# A182855: Numbers that require exactly five iterations to reach a fixed point under the x -> A181819(x) map.

The programs for A182855, the canonical program `A182855.P17254477135155792019` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182855 has offset 1).

The definition of A182855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182855.P17254477135155792019

`∩[A059404(n+1), A182851(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A182855

/-- `∩[A059404(n+1), A182851(n+1)]` -/
def P17254477135155792019.Spec : Prop :=
  ∀ n, (P17254477135155792019.a n : ℤ) = A182855 (n + 1)

theorem P17254477135155792019.correct : P17254477135155792019.Spec := by
  intro n
  simp only [A182855, Nat.add_sub_cancel]

end A182855

/-! ## A182855.P8435202100491149768

`eq[5, A182850(n+1)]+1`
-/

namespace A182855.P8435202100491149768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182855.P8435202100491149768

namespace A182855

/-- `eq[5, A182850(n+1)]+1` -/
def P8435202100491149768.Spec : Prop :=
  ∀ n, (P8435202100491149768.a n : ℤ) = A182855 (n + 1)

end A182855

/-! ## A182855.P14212505895360603169

`eq[5, A182850(A028310(n))]`
-/

namespace A182855.P14212505895360603169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182855.P14212505895360603169

namespace A182855

/-- `eq[5, A182850(A028310(n))]` -/
def P14212505895360603169.Spec : Prop :=
  ∀ n, (P14212505895360603169.a n : ℤ) = A182855 (n + 1)

end A182855

/-! ## A182855.P440010771146898137

`A020725(eq[4, A304455(n+1)])`
-/

namespace A182855.P440010771146898137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182855.P440010771146898137

namespace A182855

/-- `A020725(eq[4, A304455(n+1)])` -/
def P440010771146898137.Spec : Prop :=
  ∀ n, P440010771146898137.a n = A182855 (n + 1)

end A182855

/-! ## A182855.P13904505270745185234

`A065475(eq[4, A304455(n+1)])`
-/

namespace A182855.P13904505270745185234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182855.P13904505270745185234

namespace A182855

/-- `A065475(eq[4, A304455(n+1)])` -/
def P13904505270745185234.Spec : Prop :=
  ∀ n, P13904505270745185234.a n = A182855 (n + 1)

end A182855

/-! ## A182855.P8877666740873614164

`A153152(eq[4, A304455(n+1)])`
-/

namespace A182855.P8877666740873614164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182855.P8877666740873614164

namespace A182855

/-- `A153152(eq[4, A304455(n+1)])` -/
def P8877666740873614164.Spec : Prop :=
  ∀ n, P8877666740873614164.a n = A182855 (n + 1)

end A182855

/-! ## A182855.P13810592584235531075

`A020725(eq[5, A182850(n+1)])`
-/

namespace A182855.P13810592584235531075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182855.P13810592584235531075

namespace A182855

/-- `A020725(eq[5, A182850(n+1)])` -/
def P13810592584235531075.Spec : Prop :=
  ∀ n, P13810592584235531075.a n = A182855 (n + 1)

end A182855

/-! ## A182855.P4830494363885551478

`eq[5, A182850(A233583(n+1))]`
-/

namespace A182855.P4830494363885551478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182855.P4830494363885551478

namespace A182855

/-- `eq[5, A182850(A233583(n+1))]` -/
def P4830494363885551478.Spec : Prop :=
  ∀ n, (P4830494363885551478.a n : ℤ) = A182855 (n + 1)

end A182855

/-! ## A182855.P7858585224525122083

`A113484(eq[2, A304455(n+1)-2])`
-/

namespace A182855.P7858585224525122083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182855.P7858585224525122083

namespace A182855

/-- `A113484(eq[2, A304455(n+1)-2])` -/
def P7858585224525122083.Spec : Prop :=
  ∀ n, P7858585224525122083.a n = A182855 (n + 1)

end A182855

/-! ## A182855.P6104483088631444727

`A113484(eq[2, A304455(n+1)/2])`
-/

namespace A182855.P6104483088631444727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304455 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A182855.P6104483088631444727

namespace A182855

/-- `A113484(eq[2, A304455(n+1)/2])` -/
def P6104483088631444727.Spec : Prop :=
  ∀ n, P6104483088631444727.a n = A182855 (n + 1)

end A182855

/-!
# A182856: 

The programs for A182856, there is no canonical definition to state claims against.
-/

/-! ## A182856.P4906346965686472620

`∏[A113511(n)]`
-/

namespace A182856.P4906346965686472620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182856.P4906346965686472620

/-! ## A182856.P322014212449423190

`∏[A002110(∑[n])]`
-/

namespace A182856.P322014212449423190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182856.P322014212449423190

/-! ## A182856.P1622519858213188886

`∏[A300951(∑[A099992(n+1)])]`
-/

namespace A182856.P1622519858213188886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099992 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182856.P1622519858213188886

/-!
# A182857: Smallest number that requires exactly n iterations to reach a fixed point under the x -> A181819(x) map.

The programs for A182857, the canonical program `A182857.P4693716108842066402` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182857 has offset 0).

The definition of A182857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181821, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182857.P4693716108842066402

`A181821(a(n-1))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A182857

/-- `A181821(a(n-1))` -/
def P4693716108842066402.Spec : Prop :=
  ∀ n, P4693716108842066402.a n = A182857 n

theorem P4693716108842066402.correct : P4693716108842066402.Spec := by
  intro n
  simp only [A182857]

end A182857

/-! ## A182857.P14803030289899240565

`A325278(n)+char[1]`
-/

namespace A182857.P14803030289899240565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325278 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182857.P14803030289899240565

namespace A182857

/-- `A325278(n)+char[1]` -/
def P14803030289899240565.Spec : Prop :=
  ∀ n, P14803030289899240565.a n = A182857 n

end A182857

/-! ## A182857.P17869210944262922652

`or(char[A000587(n)], A325278(n))`
-/

namespace A182857.P17869210944262922652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A325278 n)

end

end A182857.P17869210944262922652

namespace A182857

/-- `or(char[A000587(n)], A325278(n))` -/
def P17869210944262922652.Spec : Prop :=
  ∀ n, P17869210944262922652.a n = A182857 n

end A182857

/-! ## A182857.P10499479416906105819

`or(char[A010079(n)], A325278(n))`
-/

namespace A182857.P10499479416906105819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A325278 n)

end

end A182857.P10499479416906105819

namespace A182857

/-- `or(char[A010079(n)], A325278(n))` -/
def P10499479416906105819.Spec : Prop :=
  ∀ n, P10499479416906105819.a n = A182857 n

end A182857

/-! ## A182857.P10918026377285025658

`or(char[A010081(n)], A325278(n))`
-/

namespace A182857.P10918026377285025658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010081 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A325278 n)

end

end A182857.P10918026377285025658

namespace A182857

/-- `or(char[A010081(n)], A325278(n))` -/
def P10918026377285025658.Spec : Prop :=
  ∀ n, P10918026377285025658.a n = A182857 n

end A182857

/-!
# A182858: Irregular table: Row n is the list of positive exponents in the canonical prime factorization of A182857(n), sorted in descending order, or 0 if there are no such exponents.

The programs for A182858, there is no canonical definition to state claims against.
-/

/-! ## A182858.P8605988865440844333

`gcd(comp[A132988(3*(n+1))], A079467(n+1))`
-/

namespace A182858.P8605988865440844333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132988 (3 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A079467 (n + 1))

end

end A182858.P8605988865440844333

/-! ## A182858.P10819986677763147895

`A284271(eq[A007456(n+1), A213711(n)])`
-/

namespace A182858.P10819986677763147895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284271 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182858.P10819986677763147895

/-! ## A182858.P6318345256165877882

`A139352(8*A289131(n))`
-/

namespace A182858.P6318345256165877882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (8 * A289131 n).toNat

end

end A182858.P6318345256165877882

/-! ## A182858.P14250683525797201079

`A124010(A133551(n)*A178830(2*n+3))`
-/

namespace A182858.P14250683525797201079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A133551 n * A178830 (2 * n + 3)).toNat

end

end A182858.P14250683525797201079

/-! ## A182858.P3393190962680403356

`A001222(eq[A295554(n+1), A330342(n+1)])`
-/

namespace A182858.P3393190962680403356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182858.P3393190962680403356

/-!
# A182859: Numbers n such that A036459(n) is even.

The programs for A182859, the canonical program `A182859.P12166969725301177304` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182859 has offset 1).

The definition of A182859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182859.P12166969725301177304

`lt[A262684(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A182859

/-- `lt[A262684(n+1), 1]+1` -/
def P12166969725301177304.Spec : Prop :=
  ∀ n, (P12166969725301177304.a n : ℤ) = A182859 (n + 1)

theorem P12166969725301177304.correct : P12166969725301177304.Spec := by
  intro n
  simp only [A182859, Nat.add_sub_cancel]

end A182859

/-! ## A182859.P3184424927715997410

`record[n+1-A000217(n*A262684(n+1))]`
-/

namespace A182859.P3184424927715997410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 ((n : ℤ) * A262684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182859.P3184424927715997410

namespace A182859

/-- `record[n+1-A000217(n*A262684(n+1))]` -/
def P3184424927715997410.Spec : Prop :=
  ∀ n, P3184424927715997410.a n = A182859 (n + 1)

end A182859

/-! ## A182859.P9313888630501986459

`eq[1, A262683(n+1)]+1`
-/

namespace A182859.P9313888630501986459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182859.P9313888630501986459

namespace A182859

/-- `eq[1, A262683(n+1)]+1` -/
def P9313888630501986459.Spec : Prop :=
  ∀ n, (P9313888630501986459.a n : ℤ) = A182859 (n + 1)

end A182859

/-! ## A182859.P4526073622164966345

`lt[A036459(n+1)%2, 1]+1`
-/

namespace A182859.P4526073622164966345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036459 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A182859.P4526073622164966345

namespace A182859

/-- `lt[A036459(n+1)%2, 1]+1` -/
def P4526073622164966345.Spec : Prop :=
  ∀ n, (P4526073622164966345.a n : ℤ) = A182859 (n + 1)

end A182859

/-! ## A182859.P7888045020681308797

`record[A000027(n+1)*A262683(n+1)]`
-/

namespace A182859.P7888045020681308797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A262683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182859.P7888045020681308797

namespace A182859

/-- `record[A000027(n+1)*A262683(n+1)]` -/
def P7888045020681308797.Spec : Prop :=
  ∀ n, P7888045020681308797.a n = A182859 (n + 1)

end A182859

/-! ## A182859.P7694215577985615076

`record[n+1-A027764(n+3)*A262684(n+1)]`
-/

namespace A182859.P7694215577985615076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A027764 (n + 3) * A262684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182859.P7694215577985615076

namespace A182859

/-- `record[n+1-A027764(n+3)*A262684(n+1)]` -/
def P7694215577985615076.Spec : Prop :=
  ∀ n, P7694215577985615076.a n = A182859 (n + 1)

end A182859

/-!
# A182860: Number of distinct prime signatures represented among the unitary divisors of n.

The programs for A182860, the canonical program `A182860.P11663533043315609787` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182860 has offset 1).

The definition of A182860 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182860.P11663533043315609787

`A000005(A181819(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A182860

/-- `A000005(A181819(n+1))` -/
def P11663533043315609787.Spec : Prop :=
  ∀ n, P11663533043315609787.a n = A182860 (n + 1)

theorem P11663533043315609787.correct : P11663533043315609787.Spec := by
  intro n
  simp only [A182860, Nat.add_sub_cancel]

end A182860

/-! ## A182860.P1868658622446346504

`A064553(A328830(n+1))`
-/

namespace A182860.P1868658622446346504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A328830 (n + 1)).toNat

end

end A182860.P1868658622446346504

namespace A182860

/-- `A064553(A328830(n+1))` -/
def P1868658622446346504.Spec : Prop :=
  ∀ n, P1868658622446346504.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P17887238774705945877

`∏{e}[∏{e}[n+1, A008578(#+1)], #+1]`
-/

namespace A182860.P17887238774705945877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A008578 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A182860.P17887238774705945877

namespace A182860

/-- `∏{e}[∏{e}[n+1, A008578(#+1)], #+1]` -/
def P17887238774705945877.Spec : Prop :=
  ∀ n, (P17887238774705945877.a n : ℤ) = A182860 (n + 1)

end A182860

/-! ## A182860.P10002519569866520145

`A182861(A101296(n+1))`
-/

namespace A182860.P10002519569866520145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182861 (A101296 (n + 1)).toNat

end

end A182860.P10002519569866520145

namespace A182860

/-- `A182861(A101296(n+1))` -/
def P10002519569866520145.Spec : Prop :=
  ∀ n, P10002519569866520145.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P3347787262466998630

`A000005(∏{e}[n+1, A000040(#)])`
-/

namespace A182860.P3347787262466998630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P3347787262466998630

namespace A182860

/-- `A000005(∏{e}[n+1, A000040(#)])` -/
def P3347787262466998630.Spec : Prop :=
  ∀ n, P3347787262466998630.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P14763364931310588182

`A000005(∏{e}[n+1, A000043(#)])`
-/

namespace A182860.P14763364931310588182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A000043 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P14763364931310588182

namespace A182860

/-- `A000005(∏{e}[n+1, A000043(#)])` -/
def P14763364931310588182.Spec : Prop :=
  ∀ n, P14763364931310588182.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P12969224656240953717

`A000005(∏{e}[n+1, A003459(#)])`
-/

namespace A182860.P12969224656240953717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A003459 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P12969224656240953717

namespace A182860

/-- `A000005(∏{e}[n+1, A003459(#)])` -/
def P12969224656240953717.Spec : Prop :=
  ∀ n, P12969224656240953717.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P11286017598803079210

`A000005(∏{e}[n+1, A028864(#)])`
-/

namespace A182860.P11286017598803079210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A028864 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P11286017598803079210

namespace A182860

/-- `A000005(∏{e}[n+1, A028864(#)])` -/
def P11286017598803079210.Spec : Prop :=
  ∀ n, P11286017598803079210.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P9020596749134324538

`A000005(∏{e}[n+1, A030475(#)])`
-/

namespace A182860.P9020596749134324538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A030475 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P9020596749134324538

namespace A182860

/-- `A000005(∏{e}[n+1, A030475(#)])` -/
def P9020596749134324538.Spec : Prop :=
  ∀ n, P9020596749134324538.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P7643443362435884332

`A000005(∏{e}[n+1, A040990(#)])`
-/

namespace A182860.P7643443362435884332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A040990 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P7643443362435884332

namespace A182860

/-- `A000005(∏{e}[n+1, A040990(#)])` -/
def P7643443362435884332.Spec : Prop :=
  ∀ n, P7643443362435884332.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P13713598437280245740

`A000005(∏{e}[n+1, A058853(#)])`
-/

namespace A182860.P13713598437280245740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P13713598437280245740

namespace A182860

/-- `A000005(∏{e}[n+1, A058853(#)])` -/
def P13713598437280245740.Spec : Prop :=
  ∀ n, P13713598437280245740.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P13702034627257841169

`A000005(∏{e}[n+1, A095285(#)])`
-/

namespace A182860.P13702034627257841169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P13702034627257841169

namespace A182860

/-- `A000005(∏{e}[n+1, A095285(#)])` -/
def P13702034627257841169.Spec : Prop :=
  ∀ n, P13702034627257841169.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P17701342226323393538

`A000005(∏{e}[n+1, A127052(#)])`
-/

namespace A182860.P17701342226323393538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A127052 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P17701342226323393538

namespace A182860

/-- `A000005(∏{e}[n+1, A127052(#)])` -/
def P17701342226323393538.Spec : Prop :=
  ∀ n, P17701342226323393538.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P15457635435254206148

`A000005(∏{e}[n+1, A219697(#)])`
-/

namespace A182860.P15457635435254206148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P15457635435254206148

namespace A182860

/-- `A000005(∏{e}[n+1, A219697(#)])` -/
def P15457635435254206148.Spec : Prop :=
  ∀ n, P15457635435254206148.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P9100817060963208284

`A000005(∏{e}[n+1, A040976(#)+2])`
-/

namespace A182860.P9100817060963208284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), (A040976 (Nat.factorization (f1 n) p) + 2)).toNat

end

end A182860.P9100817060963208284

namespace A182860

/-- `A000005(∏{e}[n+1, A040976(#)+2])` -/
def P9100817060963208284.Spec : Prop :=
  ∀ n, P9100817060963208284.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P12106099152072356635

`A000027(∏{e}[∏{e}[n+1, A095285(#)], #+1])`
-/

namespace A182860.P12106099152072356635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A095285 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A182860.P12106099152072356635

namespace A182860

/-- `A000027(∏{e}[∏{e}[n+1, A095285(#)], #+1])` -/
def P12106099152072356635.Spec : Prop :=
  ∀ n, P12106099152072356635.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P2795747486636488408

`A242031(∏{e}[∏{e}[n+1, A095285(#)], #+1])`
-/

namespace A182860.P2795747486636488408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A095285 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A182860.P2795747486636488408

namespace A182860

/-- `A242031(∏{e}[∏{e}[n+1, A095285(#)], #+1])` -/
def P2795747486636488408.Spec : Prop :=
  ∀ n, P2795747486636488408.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P11801505561662479235

`∏{e}[∏{e}[n+1, A095285(#)]-A000007(n), #+1]`
-/

namespace A182860.P11801505561662479235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A095285 (Nat.factorization (f2 n) p) - A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A182860.P11801505561662479235

namespace A182860

/-- `∏{e}[∏{e}[n+1, A095285(#)]-A000007(n), #+1]` -/
def P11801505561662479235.Spec : Prop :=
  ∀ n, (P11801505561662479235.a n : ℤ) = A182860 (n + 1)

end A182860

/-! ## A182860.P4526255937739651817

`(1+A056169(n+1))*a(A003557(n+1)-1)` with `a(0)=1`
-/

namespace A182860.P4526255937739651817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A056169 (n + 1)) * a (A003557 (n + 1) - 1).toNat

end

end A182860.P4526255937739651817

namespace A182860

/-- `(1+A056169(n+1))*a(A003557(n+1)-1)` -/
def P4526255937739651817.Spec : Prop :=
  ∀ n, P4526255937739651817.a n = A182860 (n + 1)

end A182860

/-! ## A182860.P16718615527433500222

`A000005(∏{e}[n+1, A089356(#)])`
-/

namespace A182860.P16718615527433500222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A089356 (Nat.factorization (f1 n) p)).toNat

end

end A182860.P16718615527433500222

namespace A182860

/-- `A000005(∏{e}[n+1, A089356(#)])` -/
def P16718615527433500222.Spec : Prop :=
  ∀ n, P16718615527433500222.a n = A182860 (n + 1)

end A182860

/-!
# A182861: Number of distinct prime signatures represented among the unitary divisors of A025487(n).

The programs for A182861, there is no canonical definition to state claims against.
-/

/-! ## A182861.P14626672286130457184

`A000005(A181820(n+1))`
-/

namespace A182861.P14626672286130457184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181820 (n + 1)).toNat

end

end A182861.P14626672286130457184

/-! ## A182861.P11638637450426854053

`∑{d}[A181820(n+1), A057427(#)]`
-/

namespace A182861.P11638637450426854053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A182861.P11638637450426854053

/-! ## A182861.P1755708243331374068

`A000005(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A182861.P1755708243331374068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A182861.P1755708243331374068

/-! ## A182861.P9679499857597347316

`A000005(∏{e}[A025487(n+1), A000043(#)])`
-/

namespace A182861.P9679499857597347316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000043 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A182861.P9679499857597347316

/-! ## A182861.P7689364854869623547

`A000005(∏{e}[A025487(n+1), A008578(#+1)])`
-/

namespace A182861.P7689364854869623547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008578 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A182861.P7689364854869623547

/-! ## A182861.P4838612550196386099

`∑{d}[A181820(n+1), A322585(A181821(#))]`
-/

namespace A182861.P4838612550196386099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 (A181821 d).toNat

end

end A182861.P4838612550196386099

/-! ## A182861.P13717527205097059349

`A000005(A253565(A329905(n+1)))`
-/

namespace A182861.P13717527205097059349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A253565 (A329905 (n + 1)).toNat).toNat

end

end A182861.P13717527205097059349

/-! ## A182861.P12333571699066238419

`A336315(A181815(n+1))`
-/

namespace A182861.P12333571699066238419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A181815 (n + 1)).toNat

end

end A182861.P12333571699066238419

/-! ## A182861.P15109217594034776517

`A182860(A025487(n+1))`
-/

namespace A182861.P15109217594034776517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182860 (A025487 (n + 1)).toNat

end

end A182861.P15109217594034776517

/-!
# A182862: Numbers k that set a record for the number of distinct prime signatures represented among their unitary divisors.

The programs for A182862, there is no canonical definition to state claims against.
-/

/-! ## A182862.P2939296849308095605

`filter[A182863(n+1), A322586(#)]`
-/

namespace A182862.P2939296849308095605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A182862.P2939296849308095605

/-! ## A182862.P12799537045885593815

`∩[A019505(n+1), A129912(n+1)]`
-/

namespace A182862.P12799537045885593815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182862.P12799537045885593815

/-! ## A182862.P3509759831580714290

`∩[A019505(n+1), A182863(n+1)]`
-/

namespace A182862.P3509759831580714290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182862.P3509759831580714290

/-! ## A182862.P8306058485379741627

`filter[A287142(n), A383422(#)]`
-/

namespace A182862.P8306058485379741627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A182862.P8306058485379741627

/-!
# A182863: Members m of A025487 such that, if k appears in m's prime signature, k-1 appears at least as often as k (for any integer k > 1).

The programs for A182863, there is no canonical definition to state claims against.
-/

/-! ## A182863.P7805736353899005948

`record[A025487(n+1)*A322585(A181820(n+1))]`
-/

namespace A182863.P7805736353899005948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) * A322585 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182863.P7805736353899005948

/-! ## A182863.P7924968188624132802

`∩[A035500(n+1), A129912(n+1)]`
-/

namespace A182863.P7924968188624132802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182863.P7924968188624132802

/-! ## A182863.P14236992563573867069

`A086141(A194602(n)+1)`
-/

namespace A182863.P14236992563573867069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (A194602 n + 1).toNat

end

end A182863.P14236992563573867069

/-! ## A182863.P11980391296785003049

`A086141(A228354(n+1))`
-/

namespace A182863.P11980391296785003049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (A228354 (n + 1)).toNat

end

end A182863.P11980391296785003049

/-! ## A182863.P7257421938557072514

`∩[A129912(n+1), A325238(n+1)]`
-/

namespace A182863.P7257421938557072514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182863.P7257421938557072514

/-!
# A182865: Minimal number of quadratic residues: a(n) is the least integer m such that any nonzero square is congruent (mod n) to one of the squares from 1 to m^2.

The programs for A182865, there is no canonical definition to state claims against.
-/

/-! ## A182865.P7642269662847711825

`A000120(A055094(n+1))+1-Δ[A165918(n+1)]`
-/

namespace A182865.P7642269662847711825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A055094 (n + 1)).toNat + 1 - (f1 (n + 1) - f1 n)

end

end A182865.P7642269662847711825

/-! ## A182865.P17515769985275142231

`A026741(A026741(n)+1)-A102683(A011782(n))`
-/

namespace A182865.P17515769985275142231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n + 1).toNat - A102683 (A011782 n).toNat

end

end A182865.P17515769985275142231

/-! ## A182865.P14906301843606413510

`A162520(A132724(n+2))`
-/

namespace A182865.P14906301843606413510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162520 (A132724 (n + 2)).toNat

end

end A182865.P14906301843606413510

/-! ## A182865.P18148348998259654107

`A265337(A055094(n+2))`
-/

namespace A182865.P18148348998259654107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (A055094 (n + 2)).toNat

end

end A182865.P18148348998259654107

/-! ## A182865.P3984717887933404968

`A007895(A146316(n+1)+A000225(n))`
-/

namespace A182865.P3984717887933404968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A146316 (n + 1) + A000225 n).toNat

end

end A182865.P3984717887933404968

/-!
# A182866: Number of edges in the n^2 X n^2 Sudoku graph.

The programs for A182866, the canonical program `A182866.P15381372409903465724` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182866 has offset 1).

The definition of A182866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182866.P15381372409903465724

`(3*n+4)*(n+1)^3*∑[n]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182866

/-- `(3*n+4)*(n+1)^3*∑[n]` -/
def P15381372409903465724.Spec : Prop :=
  ∀ n, (P15381372409903465724.a n : ℤ) = A182866 (n + 1)

theorem P15381372409903465724.correct : P15381372409903465724.Spec := by
  intro n
  simp only [A182866, Nat.add_sub_cancel]

end A182866

/-! ## A182866.P3413295856691501490

`(n+1)^4*A140676(n)/2`
-/

namespace A182866.P3413295856691501490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 4 : ℤ) * A140676 n : ℚ) / 2

end

end A182866.P3413295856691501490

namespace A182866

/-- `(n+1)^4*A140676(n)/2` -/
def P3413295856691501490.Spec : Prop :=
  ∀ n, P3413295856691501490.a n = (A182866 (n + 1) : ℚ)

end A182866

/-! ## A182866.P3717534514031775212

`∑[A062725(n)]/(n+1)^-3`
-/

namespace A182866.P3717534514031775212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) ^ (-3 : ℤ)

end

end A182866.P3717534514031775212

namespace A182866

/-- `∑[A062725(n)]/(n+1)^-3` -/
def P3717534514031775212.Spec : Prop :=
  ∀ n, P3717534514031775212.a n = (A182866 (n + 1) : ℚ)

end A182866

/-! ## A182866.P2016660414336280343

`A106318(n+1)-A163274(n+1)`
-/

namespace A182866.P2016660414336280343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 (n + 1) - A163274 (n + 1)

end

end A182866.P2016660414336280343

namespace A182866

/-- `A106318(n+1)-A163274(n+1)` -/
def P2016660414336280343.Spec : Prop :=
  ∀ n, P2016660414336280343.a n = A182866 (n + 1)

end A182866

/-! ## A182866.P8807209223279322913

`A085539(n+1)+A136038(n+1)/2`
-/

namespace A182866.P8807209223279322913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085539 (n + 1) : ℚ) + (A136038 (n + 1) : ℚ) / 2

end

end A182866.P8807209223279322913

namespace A182866

/-- `A085539(n+1)+A136038(n+1)/2` -/
def P8807209223279322913.Spec : Prop :=
  ∀ n, P8807209223279322913.a n = (A182866 (n + 1) : ℚ)

end A182866

/-!
# A182867: Triangle read by rows: row n gives coefficients in expansion of Product_{i=1..n} (x - (2i)^2), highest powers first.

The programs for A182867, there is no canonical definition to state claims against.
-/

/-! ## A182867.P1256206969950246108

`A059268(n)²*A204579(A038722(n+1))`
-/

namespace A182867.P1256206969950246108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A204579 (A038722 (n + 1)).toNat

end

end A182867.P1256206969950246108

/-! ## A182867.P7317270570878247354

`A059268(n)²*A204579(A061579(n)+1)`
-/

namespace A182867.P7317270570878247354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A204579 (A061579 n + 1).toNat

end

end A182867.P7317270570878247354

/-! ## A182867.P2702670986165664045

`A182971(C(comp[∑[n]]-n, 2)+n-1)`
-/

namespace A182867.P2702670986165664045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182971 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n - 1)

end

end A182867.P2702670986165664045

/-! ## A182867.P13472786149542092887

`A182971(A064801(n+1)-1)`
-/

namespace A182867.P13472786149542092887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182971 (A064801 (n + 1) - 1).toNat

end

end A182867.P13472786149542092887

/-! ## A182867.P12022014305754593189

`A182971(A025581(n)+2*n)`
-/

namespace A182867.P12022014305754593189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182971 (A025581 n + (2 * n : ℤ)).toNat

end

end A182867.P12022014305754593189

/-!
# A182868: a(n) = -1 + n + 4*n^2.

The programs for A182868, the canonical program `A182868.P7978343847695056203` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182868 has offset 0).

The definition of A182868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-1+n+4*n²` (program `A182868.P7978343847695056203`, by `A182868.P7978343847695056203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182868.P10055171192836469059

`4*n²+n-1`
-/

namespace A182868.P10055171192836469059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 2 + n : ℤ) - 1

end

end A182868.P10055171192836469059

namespace A182868

/-- `4*n²+n-1` -/
def P10055171192836469059.Spec : Prop :=
  ∀ n, P10055171192836469059.a n = A182868 n

theorem P10055171192836469059.correct : P10055171192836469059.Spec := by
  intro n
  simp only [A182868, Nat.add_sub_cancel, A182868.P10055171192836469059.a, A182868.P7978343847695056203.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A182868

/-! ## A182868.P7978343847695056203

`-1+n+4*n²`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182868

/-- `-1+n+4*n²` -/
def P7978343847695056203.Spec : Prop :=
  ∀ n, P7978343847695056203.a n = A182868 n

theorem P7978343847695056203.correct : P7978343847695056203.Spec := by
  intro n
  simp only [A182868]

end A182868

/-! ## A182868.P7295917464498331826

`A176126(4*n)`
-/

namespace A182868.P7295917464498331826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176126 (4 * n)

end

end A182868.P7295917464498331826

namespace A182868

/-- `A176126(4*n)` -/
def P7295917464498331826.Spec : Prop :=
  ∀ n, P7295917464498331826.a n = A182868 n

end A182868

/-! ## A182868.P15261523123914236682

`∑[a(n-1)+8]` with `a(0)=-1, a(1)=5`
-/

namespace A182868.P15261523123914236682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 5] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182868.P15261523123914236682

namespace A182868

/-- `∑[a(n-1)+8]` -/
def P15261523123914236682.Spec : Prop :=
  ∀ n, P15261523123914236682.a n = A182868 n

end A182868

/-! ## A182868.P14573863687953661593

`∑[ogf((-1+7x+2x^2)/(1-2x+x^2))]`
-/

namespace A182868.P14573863687953661593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 7, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182868.P14573863687953661593

namespace A182868

/-- `∑[ogf((-1+7x+2x^2)/(1-2x+x^2))]` -/
def P14573863687953661593.Spec : Prop :=
  ∀ n, P14573863687953661593.a n = A182868 n

end A182868

/-! ## A182868.P8135193831569077075

`ogf((-1+7x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A182868.P8135193831569077075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 7, 2] [1, -3, 3, -1] n

end

end A182868.P8135193831569077075

namespace A182868

/-- `ogf((-1+7x+2x^2)/(1-3x+3x^2-x^3))` -/
def P8135193831569077075.Spec : Prop :=
  ∀ n, P8135193831569077075.a n = A182868 n

end A182868

/-! ## A182868.P18218196980432484323

`∑[ceil(4/acot(2*n))-4]`
-/

namespace A182868.P18218196980432484323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 / SequenceMachineLib.acot (2 * n : ℝ)⌉ - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182868.P18218196980432484323

namespace A182868

/-- `∑[ceil(4/acot(2*n))-4]` -/
def P18218196980432484323.Spec : Prop :=
  ∀ n, P18218196980432484323.a n = A182868 n

end A182868

/-! ## A182868.P3285854122737584353

`(C(4*n+1, 2)-2)/2`
-/

namespace A182868.P3285854122737584353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (4 * n + 1) 2 : ℤ) - 2 : ℚ) / 2

end

end A182868.P3285854122737584353

namespace A182868

/-- `(C(4*n+1, 2)-2)/2` -/
def P3285854122737584353.Spec : Prop :=
  ∀ n, P3285854122737584353.a n = (A182868 n : ℚ)

theorem P3285854122737584353.correct : P3285854122737584353.Spec := by
  intro n
  simp only [A182868, Nat.add_sub_cancel, A182868.P3285854122737584353.a, A182868.P7978343847695056203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A182868

/-! ## A182868.P1322736276591866241

`floor(2*n/acot(2*n)+n-1)`
-/

namespace A182868.P1322736276591866241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) + ((n : ℤ) - 1 : ℝ)⌋

end

end A182868.P1322736276591866241

namespace A182868

/-- `floor(2*n/acot(2*n)+n-1)` -/
def P1322736276591866241.Spec : Prop :=
  ∀ n, P1322736276591866241.a n = A182868 n

end A182868

/-! ## A182868.P7404929207551421054

`round(2*n/acot(2*n)+n-1)`
-/

namespace A182868.P7404929207551421054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) + ((n : ℤ) - 1 : ℝ))

end

end A182868.P7404929207551421054

namespace A182868

/-- `round(2*n/acot(2*n)+n-1)` -/
def P7404929207551421054.Spec : Prop :=
  ∀ n, P7404929207551421054.a n = A182868 n

end A182868

/-! ## A182868.P17946235844136897517

`-(1-lcm(2*n+1, 2*n)+n)`
-/

namespace A182868.P17946235844136897517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(1 - (Nat.lcm (2 * n + 1) (2 * n) : ℤ) + (n : ℤ))

end

end A182868.P17946235844136897517

namespace A182868

/-- `-(1-lcm(2*n+1, 2*n)+n)` -/
def P17946235844136897517.Spec : Prop :=
  ∀ n, P17946235844136897517.a n = A182868 n

end A182868

/-! ## A182868.P8394215954991304777

`ceil((2*n+1)/acot(2*n)-(n+2))`
-/

namespace A182868.P8394215954991304777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - (n + 2 : ℝ)⌉

end

end A182868.P8394215954991304777

namespace A182868

/-- `ceil((2*n+1)/acot(2*n)-(n+2))` -/
def P8394215954991304777.Spec : Prop :=
  ∀ n, P8394215954991304777.a n = A182868 n

end A182868

/-! ## A182868.P6206358227557650137

`floor(2*(cot(2)+n²)+n*(2*n+1))`
-/

namespace A182868.P6206358227557650137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.cot (2 : ℝ) + (n ^ 2 : ℝ)) + (n * (2 * n + 1) : ℝ)⌋

end

end A182868.P6206358227557650137

namespace A182868

/-- `floor(2*(cot(2)+n²)+n*(2*n+1))` -/
def P6206358227557650137.Spec : Prop :=
  ∀ n, P6206358227557650137.a n = A182868 n

end A182868

/-! ## A182868.P16444003388157725768

`((2*n+1)*2*n-(n+1))*gcd(n, n+1)`
-/

namespace A182868.P16444003388157725768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (2 * n) : ℤ) - (n + 1 : ℤ)) * (Nat.gcd n (n + 1) : ℤ)

end

end A182868.P16444003388157725768

namespace A182868

/-- `((2*n+1)*2*n-(n+1))*gcd(n, n+1)` -/
def P16444003388157725768.Spec : Prop :=
  ∀ n, P16444003388157725768.a n = A182868 n

theorem P16444003388157725768.correct : P16444003388157725768.Spec := by
  intro n
  simp only [A182868, Nat.add_sub_cancel, A182868.P16444003388157725768.a, A182868.P7978343847695056203.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A182868

/-! ## A182868.P7517831398928379739

`((2*n+1)*2*n-(n+1))*and(1, 2*n+1)`
-/

namespace A182868.P7517831398928379739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (2 * n) : ℤ) - (n + 1 : ℤ)) * (Nat.land 1 (2 * n + 1) : ℤ)

end

end A182868.P7517831398928379739

namespace A182868

/-- `((2*n+1)*2*n-(n+1))*and(1, 2*n+1)` -/
def P7517831398928379739.Spec : Prop :=
  ∀ n, P7517831398928379739.a n = A182868 n

theorem P7517831398928379739.correct : P7517831398928379739.Spec := by
  intro n
  simp only [A182868, Nat.add_sub_cancel, A182868.P7517831398928379739.a, A182868.P7978343847695056203.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A182868

/-! ## A182868.P261785695266160151

`∑[A133655(n)-2]`
-/

namespace A182868.P261785695266160151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182868.P261785695266160151

namespace A182868

/-- `∑[A133655(n)-2]` -/
def P261785695266160151.Spec : Prop :=
  ∀ n, P261785695266160151.a n = A182868 n

end A182868

/-! ## A182868.P1436618367023679897

`(A033566(n)-1)/2`
-/

namespace A182868.P1436618367023679897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033566 n - 1 : ℚ) / 2

end

end A182868.P1436618367023679897

namespace A182868

/-- `(A033566(n)-1)/2` -/
def P1436618367023679897.Spec : Prop :=
  ∀ n, P1436618367023679897.a n = (A182868 n : ℚ)

theorem P1436618367023679897.correct : P1436618367023679897.Spec := by
  intro n
  simp only [A182868, Nat.add_sub_cancel, A182868.P1436618367023679897.a, A182868.P7978343847695056203.a, A033566, A033566.P726618908899133796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182868

/-! ## A182868.P3119025665573520885

`(A033585(n)-2)/2`
-/

namespace A182868.P3119025665573520885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033585 n - 2 : ℚ) / 2

end

end A182868.P3119025665573520885

namespace A182868

/-- `(A033585(n)-2)/2` -/
def P3119025665573520885.Spec : Prop :=
  ∀ n, P3119025665573520885.a n = (A182868 n : ℚ)

theorem P3119025665573520885.correct : P3119025665573520885.Spec := by
  intro n
  simp only [A182868, Nat.add_sub_cancel, A182868.P3119025665573520885.a, A182868.P7978343847695056203.a, A033585, A033585.P9867637388797284521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182868

/-! ## A182868.P10580868996953043607

`(A188135(n)-3)/2`
-/

namespace A182868.P10580868996953043607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188135 n - 3 : ℚ) / 2

end

end A182868.P10580868996953043607

namespace A182868

/-- `(A188135(n)-3)/2` -/
def P10580868996953043607.Spec : Prop :=
  ∀ n, P10580868996953043607.a n = (A182868 n : ℚ)

theorem P10580868996953043607.correct : P10580868996953043607.Spec := by
  intro n
  simp only [A182868, Nat.add_sub_cancel, A182868.P10580868996953043607.a, A182868.P7978343847695056203.a, A188135, A188135.P13478576752506582860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182868

/-! ## A182868.P2150754364457382989

`(A063436(n)-3)/3`
-/

namespace A182868.P2150754364457382989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063436 n - 3 : ℚ) / 3

end

end A182868.P2150754364457382989

namespace A182868

/-- `(A063436(n)-3)/3` -/
def P2150754364457382989.Spec : Prop :=
  ∀ n, P2150754364457382989.a n = (A182868 n : ℚ)

theorem P2150754364457382989.correct : P2150754364457382989.Spec := by
  intro n
  simp only [A182868, Nat.add_sub_cancel, A182868.P2150754364457382989.a, A182868.P7978343847695056203.a, A063436, A063436.P6856054806736193048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182868

/-!
# A182869: Joint-rank array of prime powers: p(i)^j, i>=1, j>=1, read by antidiagonals.

The programs for A182869, there is no canonical definition to state claims against.
-/

/-! ## A182869.P12648777779629038294

`A025528(A182944(n+1)%A134820(n+1))`
-/

namespace A182869.P12648777779629038294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (Int.tmod (A182944 (n + 1)) (A134820 (n + 1))).toNat

end

end A182869.P12648777779629038294

/-! ## A182869.P1592270473347434416

`A025528(A182944(n+1))%A140410(n+2)`
-/

namespace A182869.P1592270473347434416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025528 (A182944 (n + 1)).toNat) (A140410 (n + 2))

end

end A182869.P1592270473347434416

/-! ## A182869.P16001333834294774415

`A025528(A182944(n+1))+A000007(A271412(n))`
-/

namespace A182869.P16001333834294774415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A182944 (n + 1)).toNat + A000007 (A271412 n).toNat

end

end A182869.P16001333834294774415

/-! ## A182869.P12537208093322597002

`A025528(A182944(n+1))%A016825(A081275(n))`
-/

namespace A182869.P12537208093322597002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025528 (A182944 (n + 1)).toNat) (A016825 (A081275 n).toNat)

end

end A182869.P12537208093322597002

/-! ## A182869.P16158373031139791555

`A025528(A182944(n+1))+A000007(A089046(n+1))`
-/

namespace A182869.P16158373031139791555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A182944 (n + 1)).toNat + A000007 (A089046 (n + 1)).toNat

end

end A182869.P16158373031139791555

/-!
# A182870: Joint-rank array of odd prime powers: p(i+1)^j, i>=1, j>=1, read by antidiagonals.

The programs for A182870, there is no canonical definition to state claims against.
-/

/-! ## A182870.P5933723833339363934

`A327247(A182946(n+1))`
-/

namespace A182870.P5933723833339363934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A182946 (n + 1)).toNat

end

end A182870.P5933723833339363934

/-! ## A182870.P207072839326096680

`A327247(A182944(comp[∑[n]]+1))`
-/

namespace A182870.P207072839326096680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A182944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A182870.P207072839326096680

/-!
# A182873: First differences of the Ramanujan primes, A104272.

The programs for A182873, there is no canonical definition to state claims against.
-/

/-! ## A182873.P16813145094365830734

`A080360(n+1)+1-A104272(n+1)`
-/

namespace A182873.P16813145094365830734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080360 (n + 1) + (1 - A104272 (n + 1))

end

end A182873.P16813145094365830734

/-! ## A182873.P11824499568064256215

`Δ[A104272(n+1)]`
-/

namespace A182873.P11824499568064256215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182873.P11824499568064256215

/-! ## A182873.P10206289685810668951

`A104272(n+2)-A104272(n+1)`
-/

namespace A182873.P10206289685810668951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - A104272 (n + 1)

end

end A182873.P10206289685810668951

/-! ## A182873.P18120437164987327351

`Δ[A233739(n+1)+A031215(n+1)]`
-/

namespace A182873.P18120437164987327351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233739 (n + 1) + A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182873.P18120437164987327351

/-! ## A182873.P516881862823425409

`Δ[A233739(n+1)+A000040(2*(n+1))]`
-/

namespace A182873.P516881862823425409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233739 (n + 1) + A000040 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182873.P516881862823425409

/-! ## A182873.P17636420527206438290

`Δ[A000040(A179196(n+1))]`
-/

namespace A182873.P17636420527206438290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182873.P17636420527206438290

/-! ## A182873.P5293047153825880485

`A104272(n+2)-A034694(A084139(n))`
-/

namespace A182873.P5293047153825880485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - A034694 (A084139 n).toNat

end

end A182873.P5293047153825880485

/-! ## A182873.P8038550183667651427

`Δ[A034694(A084139(n))]`
-/

namespace A182873.P8038550183667651427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A084139 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182873.P8038550183667651427

/-! ## A182873.P10491698232183719317

`Δ[A194659(n+1)+A194658(n+1)]`
-/

namespace A182873.P10491698232183719317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194659 (n + 1) + A194658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182873.P10491698232183719317

/-! ## A182873.P18425616734580778074

`Δ[A162996(n+1)-A163160(n+1)]`
-/

namespace A182873.P18425616734580778074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - A163160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182873.P18425616734580778074

/-! ## A182873.P892524566130774504

`Δ[A064989(A168425(n+1))]`
-/

namespace A182873.P892524566130774504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A168425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182873.P892524566130774504

/-!
# A182874: Least Ramanujan prime having a gap of 2n to the next Ramanujan prime.

The programs for A182874, there is no canonical definition to state claims against.
-/

/-! ## A182874.P14917087967753336804

`A182875(n+1)-2*(n+1)`
-/

namespace A182874.P14917087967753336804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182875 (n + 1) - (2 * (n + 1) : ℤ)

end

end A182874.P14917087967753336804

/-! ## A182874.P13886356047344706384

`A182875(n+1)-A016789(n)+n`
-/

namespace A182874.P13886356047344706384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182875 (n + 1) - A016789 n + (n : ℤ)

end

end A182874.P13886356047344706384

/-! ## A182874.P4763881200581072831

`A182875(n+1)-(n+1)-A000027(n+1)`
-/

namespace A182874.P4763881200581072831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182875 (n + 1) - (n + 1 : ℤ) - A000027 (n + 1)

end

end A182874.P4763881200581072831

/-! ## A182874.P13848355329623346474

`A006530(A182875(n+1)-A004277(n+1))`
-/

namespace A182874.P13848355329623346474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A182875 (n + 1) - A004277 (n + 1)).toNat

end

end A182874.P13848355329623346474

/-! ## A182874.P617921363176622902

`A000230(n+1)+A182875(n+1)-A001632(n+1)`
-/

namespace A182874.P617921363176622902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (n + 1) + (A182875 (n + 1) - A001632 (n + 1))

end

end A182874.P617921363176622902

/-!
# A182875: Least Ramanujan prime having a gap of 2n to the previous Ramanujan prime.

The programs for A182875, there is no canonical definition to state claims against.
-/

/-! ## A182875.P11278138380523299958

`A182874(n+1)+2*(n+1)`
-/

namespace A182875.P11278138380523299958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182874 (n + 1) + (2 * (n + 1) : ℤ)

end

end A182875.P11278138380523299958

/-!
# A182876: Ramanujan primes that begin a record gap to the next Ramanujan prime.

The programs for A182876, there is no canonical definition to state claims against.
-/

/-! ## A182876.P7270851146051156711

`A115653(A095794(n+1)-A294898(n+1))`
-/

namespace A182876.P7270851146051156711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115653 (A095794 (n + 1) - A294898 (n + 1)).toNat

end

end A182876.P7270851146051156711

/-!
# A182877: Record gaps between Ramanujan primes.

The programs for A182877, there is no canonical definition to state claims against.
-/

/-! ## A182877.P8145516537841422878

`record[A182873(n+1)]`
-/

namespace A182877.P8145516537841422878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182877.P8145516537841422878

/-! ## A182877.P3519823146508500216

`record[A104272(n+2)-A104272(n+1)]`
-/

namespace A182877.P3519823146508500216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182877.P3519823146508500216

/-! ## A182877.P17746762471492588134

`record[A104272(n+2)-A034694(A084139(n))]`
-/

namespace A182877.P17746762471492588134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - A034694 (A084139 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182877.P17746762471492588134

/-! ## A182877.P2224588358993070405

`record[A194184(n+2)+A001223(A179196(n+1))]`
-/

namespace A182877.P2224588358993070405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194184 (n + 2) + A001223 (A179196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182877.P2224588358993070405

/-!
# A182878: Triangle read by rows: T(n,k) is the number of lattice paths L_n of weight n having length k (0 <= k <= n). These are paths that start at (0,0) and end on the horizontal axis and whose steps are of the following four kinds: a (1,0)-step with weight 1, a (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1.

The programs for A182878, there is no canonical definition to state claims against.
-/

/-! ## A182878.P4154879781830140628

`C(col(n), row(n)-col(n))²`
-/

namespace A182878.P4154879781830140628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat ^ 2

end

end A182878.P4154879781830140628

/-! ## A182878.P15225310473698703682

`C(col(n), row(n)-col(n))*C(col(n), row(n)-col(n))`
-/

namespace A182878.P15225310473698703682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat * Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A182878.P15225310473698703682

/-! ## A182878.P1258532151979532506

`C(n-C(∑[char[∑[n]]], 2), C(comp[∑[n]]-n, 2)-(n+1))²`
-/

namespace A182878.P1258532151979532506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat ^ 2

end

end A182878.P1258532151979532506

/-! ## A182878.P14573389009893080947

`A026729(n)²`
-/

namespace A182878.P14573389009893080947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n ^ 2

end

end A182878.P14573389009893080947

/-! ## A182878.P11122554366189542639

`A109466(n)²`
-/

namespace A182878.P11122554366189542639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n ^ 2

end

end A182878.P11122554366189542639

/-! ## A182878.P17917171441700792727

`A057094(comp[∑[n]])²`
-/

namespace A182878.P17917171441700792727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A182878.P17917171441700792727

/-! ## A182878.P11817738232319187992

`A284938(comp[∑[n]]+1)²`
-/

namespace A182878.P11817738232319187992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) ^ 2

end

end A182878.P11817738232319187992

/-! ## A182878.P10773574055799306547

`A052553(A061579(n))²`
-/

namespace A182878.P10773574055799306547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A061579 n).toNat ^ 2

end

end A182878.P10773574055799306547

/-! ## A182878.P2234267890730801367

`A026729(n)*A059674(n)`
-/

namespace A182878.P2234267890730801367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A059674 n

end

end A182878.P2234267890730801367

/-! ## A182878.P8302948925748563274

`A052553(A114327(n)+n)²`
-/

namespace A182878.P8302948925748563274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A114327 n + (n : ℤ)).toNat ^ 2

end

end A182878.P8302948925748563274

/-!
# A182879: The sum of the lengths of all weighted lattice paths in L_n.

The programs for A182879, there is no canonical definition to state claims against.
-/

/-! ## A182879.P15665450586170214506

`A182884(n+1)-A051286(n)`
-/

namespace A182879.P15665450586170214506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (n + 1) - A051286 n

end

end A182879.P15665450586170214506

/-! ## A182879.P13034562504759186808

`A182887(n)+2*A182881(n)`
-/

namespace A182879.P13034562504759186808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182887 n + 2 * A182881 n

end

end A182879.P13034562504759186808

/-! ## A182879.P1460914653595792906

`A182884(n+1)-A077419(2*n)`
-/

namespace A182879.P1460914653595792906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (n + 1) - A077419 (2 * n)

end

end A182879.P1460914653595792906

/-! ## A182879.P14262591508376773833

`A182884(n+1)-Δ[A201631(n+1)-A091964(n)]`
-/

namespace A182879.P14262591508376773833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 1) - A091964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (n + 1) - (f1 (n + 1) - f1 n)

end

end A182879.P14262591508376773833

/-! ## A182879.P12355859369368174542

`A182884(n+1)-A079487(∑[4*n])`
-/

namespace A182879.P12355859369368174542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (n + 1) - A079487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182879.P12355859369368174542

/-!
# A182880: Triangle read by rows: T(n,k) is the number of weighted lattice paths in L_n having k (1,1)-steps. L_n is the set of lattice paths of weight n that start at (0,0) and end on the horizontal axis and whose steps are of the following four kinds: a (1,0)-step with weight 1; a (1,0)-step with weight 2; a (1,1)-step with weight 2; a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182880, there is no canonical definition to state claims against.
-/

/-! ## A182880.P14997171231378935084

`A023134(n+1)*A114711(n+1)`
-/

namespace A182880.P14997171231378935084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023134 (n + 1) * A114711 (n + 1)

end

end A182880.P14997171231378935084

/-! ## A182880.P12912972462693084078

`A182898(n)-A000122(A182898(3*n+4))`
-/

namespace A182880.P12912972462693084078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182898 n - A000122 (A182898 (3 * n + 4)).toNat

end

end A182880.P12912972462693084078

/-! ## A182880.P13732078076363661908

`xor(A182898(n), A335474(A034502(3*n+4)))`
-/

namespace A182880.P13732078076363661908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A182898 n) (A335474 (A034502 (3 * n + 4)).toNat)

end

end A182880.P13732078076363661908

/-!
# A182881: Number of (1,1)-steps in all weighted lattice paths in L_n.

The programs for A182881, there is no canonical definition to state claims against.
-/

/-! ## A182881.P3993058077416831175

`(A182879(n)-A182887(n))/2`
-/

namespace A182881.P3993058077416831175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182879 n - A182887 n : ℚ) / 2

end

end A182881.P3993058077416831175

/-! ## A182881.P16589799312268489512

`(A182879(n)-A182887(n))*A000032(C(2, n))^(-1)`
-/

namespace A182881.P16589799312268489512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182879 n - A182887 n : ℚ) * (A000032 (Nat.choose 2 n) : ℚ) ^ (-1 : ℤ)

end

end A182881.P16589799312268489512

/-! ## A182881.P18446224265454658106

`A014682(A182879(n)-A182887(n))`
-/

namespace A182881.P18446224265454658106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A182879 n - A182887 n).toNat

end

end A182881.P18446224265454658106

/-! ## A182881.P564026830767799090

`A273943(A182879(n)-A182887(n))`
-/

namespace A182881.P564026830767799090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A182879 n - A182887 n).toNat

end

end A182881.P564026830767799090

/-! ## A182881.P12017200140113851071

`A004525(A182879(n)-A182887(n))`
-/

namespace A182881.P12017200140113851071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A182879 n - A182887 n).toNat

end

end A182881.P12017200140113851071

/-!
# A182882: Triangle read by rows: T(n,k) is the number of weighted lattice paths in L_n having k (1,0)-steps of weight 1. L_n is the set of lattice paths of weight n that start at (0,0) , end on the horizontal axis and whose steps are of the following four kinds: an (1,0)-step with weight 1; an (1,0)-step with weight 2; a (1,1)-step with weight 2; a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182882, there is no canonical definition to state claims against.
-/

/-! ## A182882.P7679680358191984417

`A056175(6^A104579(n))`
-/

namespace A182882.P7679680358191984417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A104579 n : ℤ))).toNat

end

end A182882.P7679680358191984417

/-! ## A182882.P16116127085185641593

`A097429(∑{d}[A104579(n)², #]+3)`
-/

namespace A182882.P16116127085185641593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104579 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097429 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 3)

end

end A182882.P16116127085185641593

/-! ## A182882.P1328210099674486385

`A192190(A337470(n+1))`
-/

namespace A182882.P1328210099674486385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192190 (A337470 (n + 1)).toNat

end

end A182882.P1328210099674486385

/-! ## A182882.P5733957331047260994

`A364912(A269951(n+1))`
-/

namespace A182882.P5733957331047260994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 (A269951 (n + 1)).toNat

end

end A182882.P5733957331047260994

/-! ## A182882.P610630245353061291

`A265609(gcd(A294730(3*n+5), A322464(n+1)))`
-/

namespace A182882.P610630245353061291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (Int.gcd (A294730 (3 * n + 5)) (A322464 (n + 1)))

end

end A182882.P610630245353061291

/-!
# A182883: Number of weighted lattice paths of weight n having no (1,0)-steps of weight 1.

The programs for A182883, there is no canonical definition to state claims against.
-/

/-! ## A182883.P2159363230055159005

`A098123(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A182883.P2159363230055159005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A098123 n + a (n - 2)

end

end A182883.P2159363230055159005

/-! ## A182883.P10424785470472164849

`∑[A098123(n)]-a(n-A057427(n))` with `a(0)=1, a(1)=0`
-/

namespace A182883.P10424785470472164849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098123 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a ((n : ℤ) - A057427 n).toNat

end

end A182883.P10424785470472164849

/-! ## A182883.P13964292137914121106

`∑[A098123(n)]-a(n-(1-A000007(n)))` with `a(0)=1, a(1)=0`
-/

namespace A182883.P13964292137914121106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098123 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a ((n : ℤ) - (1 - A000007 n)).toNat

end

end A182883.P13964292137914121106

/-! ## A182883.P6143037967506929805

`∑[A098123(n)%A136417(n)²]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A182883.P6143037967506929805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098123 n) (A136417 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A182883.P6143037967506929805

/-! ## A182883.P16244759706883050440

`A242498(A242477(n))+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A182883.P16244759706883050440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A242498 (A242477 n).toNat + a (n - 2)

end

end A182883.P16244759706883050440

/-!
# A182884: Number of (1,0)-steps of weight 1 in all weighted lattice paths in L_n.

The programs for A182884, there is no canonical definition to state claims against.
-/

/-! ## A182884.P12195124938159111172

`A182887(n)-a(n-1)` with `a(0)=0`
-/

namespace A182884.P12195124938159111172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182887 n - a (n - 1)

end

end A182884.P12195124938159111172

/-! ## A182884.P14269603941741213013

`A182879(n)-2*A182881(n)-a(n-1)` with `a(0)=0`
-/

namespace A182884.P14269603941741213013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182879 n - 2 * A182881 n - a (n - 1)

end

end A182884.P14269603941741213013

/-! ## A182884.P17623988397334174358

`A299499(A000124(n))%(7^n)`
-/

namespace A182884.P17623988397334174358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299499 (A000124 n).toNat) (7 ^ n : ℤ)

end

end A182884.P17623988397334174358

/-! ## A182884.P10798813607900807764

`A299499(A000124(n))-A000007(n)`
-/

namespace A182884.P10798813607900807764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299499 (A000124 n).toNat - A000007 n

end

end A182884.P10798813607900807764

/-! ## A182884.P10033350663365752089

`A178334(n)*A299499(A000124(n))`
-/

namespace A182884.P10033350663365752089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A299499 (A000124 n).toNat

end

end A182884.P10033350663365752089

/-!
# A182886: Triangle read by rows: T(n,k) is the number of weighted lattice paths in L_n having k (1,0)-steps. These are paths that start at (0,0), end on the horizontal axis and whose steps are of the following four kinds: a (1,0)-step with weight 1; a (1,0)-step with weight 2; a (1,1)-step with weight 2; a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182886, there is no canonical definition to state claims against.
-/

/-! ## A182886.P6310814786070659595

`gcd(2*A088722(A178381(n)), A026729(n))`
-/

namespace A182886.P6310814786070659595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A088722 (A178381 n).toNat) (A026729 n)

end

end A182886.P6310814786070659595

/-! ## A182886.P16576105078468049113

`gcd(A026729(n), A035614(A153643(n)))`
-/

namespace A182886.P16576105078468049113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026729 n) (A035614 (A153643 n).toNat)

end

end A182886.P16576105078468049113

/-! ## A182886.P5939578157222324907

`lcm(A179930(A202849(n)), A246180(n))`
-/

namespace A182886.P5939578157222324907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A179930 (A202849 n).toNat) (A246180 n)

end

end A182886.P5939578157222324907

/-! ## A182886.P11423937525986327820

`A081153(A106240(n+1))+A026729(n)`
-/

namespace A182886.P11423937525986327820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081153 (A106240 (n + 1)).toNat + A026729 n

end

end A182886.P11423937525986327820

/-! ## A182886.P7069898411186724070

`A081153(A106240(n+1))+A076833(n+1)`
-/

namespace A182886.P7069898411186724070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081153 (A106240 (n + 1)).toNat + A076833 (n + 1)

end

end A182886.P7069898411186724070

/-!
# A182887: Number of (1,0)-steps in all weighted lattice paths in L_n.

The programs for A182887, there is no canonical definition to state claims against.
-/

/-! ## A182887.P9627147470289928083

`A182884(A004273(n)-n)+A182884(n)`
-/

namespace A182887.P9627147470289928083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (A004273 n - (n : ℤ)).toNat + A182884 n

end

end A182887.P9627147470289928083

/-! ## A182887.P6668088042189702728

`A182879(n)-2*A182881(n)`
-/

namespace A182887.P6668088042189702728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182879 n - 2 * A182881 n

end

end A182887.P6668088042189702728

/-! ## A182887.P1383035606701270491

`A182879(n)-A005843(A182881(n))`
-/

namespace A182887.P1383035606701270491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182879 n - A005843 (A182881 n).toNat

end

end A182887.P1383035606701270491

/-! ## A182887.P11966162840190110032

`A182884(n+1)-A051286(n)-A005843(A182881(n))`
-/

namespace A182887.P11966162840190110032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (n + 1) - A051286 n - A005843 (A182881 n).toNat

end

end A182887.P11966162840190110032

/-! ## A182887.P1999711447715279958

`A182884(n+1)-A077419(2*n)-A005843(A182881(n))`
-/

namespace A182887.P1999711447715279958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (n + 1) - A077419 (2 * n) - A005843 (A182881 n).toNat

end

end A182887.P1999711447715279958

/-!
# A182888: Triangle read by rows: T(n,k) is the number of weighted lattice paths in L_n having k (1,0)-steps at level 0. These are paths of weight n that start at (0,0) , end on the horizontal axis and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182888, there is no canonical definition to state claims against.
-/

/-! ## A182888.P2733995205220105036

`A322190(n+1)-A322217(A322221(n+1))`
-/

namespace A182888.P2733995205220105036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (n + 1) - A322217 (A322221 (n + 1)).toNat

end

end A182888.P2733995205220105036

/-! ## A182888.P18420735489063993011

`A276974(A267401(n+1))+A051162(A065600(n))`
-/

namespace A182888.P18420735489063993011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 (A267401 (n + 1)).toNat + A051162 (A065600 n).toNat

end

end A182888.P18420735489063993011

/-! ## A182888.P1933043214266629856

`A105972(A055140(n))`
-/

namespace A182888.P1933043214266629856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105972 (A055140 n).toNat

end

end A182888.P1933043214266629856

/-! ## A182888.P6976890512615643058

`A089293(A327125(n))`
-/

namespace A182888.P6976890512615643058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A327125 n).toNat

end

end A182888.P6976890512615643058

/-! ## A182888.P1010647696781695184

`A086460(A187829(n+1))`
-/

namespace A182888.P1010647696781695184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086460 (A187829 (n + 1)).toNat

end

end A182888.P1010647696781695184

/-!
# A182889: Number of weighted lattice paths in L_n having no (1,0)-steps at level 0. The members of L_n are paths of weight n that start at (0,0), end on the horizontal axis and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182889, there is no canonical definition to state claims against.
-/

/-! ## A182889.P8034547084296783804

`A182888(∑[n])`
-/

namespace A182889.P8034547084296783804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182889.P8034547084296783804

/-! ## A182889.P4527469161912886152

`A182888(A000217(n))%A014137(n+3)`
-/

namespace A182889.P4527469161912886152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182888 (A000217 n).toNat) (A014137 (n + 3))

end

end A182889.P4527469161912886152

/-! ## A182889.P7563448258560172225

`A182888(A000217(n))+A036987(3*n+2)`
-/

namespace A182889.P7563448258560172225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182888 (A000217 n).toNat + A036987 (3 * n + 2)

end

end A182889.P7563448258560172225

/-! ## A182889.P11667869581591032890

`A182888(A000217(n))-A000122(A341656(n+1)+2)`
-/

namespace A182889.P11667869581591032890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182888 (A000217 n).toNat - A000122 (A341656 (n + 1) + 2).toNat

end

end A182889.P11667869581591032890

/-! ## A182889.P1552699222287727697

`A182888(A000217(n))/A215870(A349473(n+1))`
-/

namespace A182889.P1552699222287727697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182888 (A000217 n).toNat : ℚ) / (A215870 (A349473 (n + 1)).toNat : ℚ)

end

end A182889.P1552699222287727697

/-! ## A182889.P9181273642719551459

`A182888(A000217(n))-A143380(A335273(n+1))`
-/

namespace A182889.P9181273642719551459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182888 (A000217 n).toNat - A143380 (A335273 (n + 1)).toNat

end

end A182889.P9181273642719551459

/-!
# A182890: Number of (1,0)-steps of weight 1 at level 0 in all weighted lattice paths in L_n.

The programs for A182890, the canonical program `A182890.P1146056889706245791` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182890 has offset 0).

The definition of A182890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182890.P1146056889706245791

`(A000045(2*n+2)-(-1)^n*A010892(n))/4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A182890

/-- `(A000045(2*n+2)-(-1)^n*A010892(n))/4` -/
def P1146056889706245791.Spec : Prop :=
  ∀ n, P1146056889706245791.a n = (A182890 n : ℚ)

end A182890

/-! ## A182890.P13500843394246830438

`ogf(x/(1-2x-x^2-2x^3+x^4))`
-/

namespace A182890.P13500843394246830438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -1, -2, 1] n

end

end A182890.P13500843394246830438

namespace A182890

/-- `ogf(x/(1-2x-x^2-2x^3+x^4))` -/
def P13500843394246830438.Spec : Prop :=
  ∀ n, P13500843394246830438.a n = A182890 n

end A182890

/-! ## A182890.P7783563121683757132

`Δ[A004697(Δ[n²])]`
-/

namespace A182890.P7783563121683757132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182890.P7783563121683757132

namespace A182890

/-- `Δ[A004697(Δ[n²])]` -/
def P7783563121683757132.Spec : Prop :=
  ∀ n, P7783563121683757132.a n = A182890 n

end A182890

/-! ## A182890.P5503961711860707622

`Δ[A293552(Δ[n²])]`
-/

namespace A182890.P5503961711860707622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182890.P5503961711860707622

namespace A182890

/-- `Δ[A293552(Δ[n²])]` -/
def P5503961711860707622.Spec : Prop :=
  ∀ n, P5503961711860707622.a n = A182890 n

end A182890

/-! ## A182890.P17094993033551490480

`Δ[A293553(Δ[n²])]`
-/

namespace A182890.P17094993033551490480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182890.P17094993033551490480

namespace A182890

/-- `Δ[A293553(Δ[n²])]` -/
def P17094993033551490480.Spec : Prop :=
  ∀ n, P17094993033551490480.a n = A182890 n

end A182890

/-! ## A182890.P16122035802851803367

`A293553(2*(n+1))`
-/

namespace A182890.P16122035802851803367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (2 * (n + 1))

end

end A182890.P16122035802851803367

namespace A182890

/-- `A293553(2*(n+1))` -/
def P16122035802851803367.Spec : Prop :=
  ∀ n, P16122035802851803367.a n = A182890 n

end A182890

/-! ## A182890.P1810654727709311091

`A179042(2*n)-n`
-/

namespace A182890.P1810654727709311091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179042 (2 * n) - (n : ℤ)

end

end A182890.P1810654727709311091

namespace A182890

/-- `A179042(2*n)-n` -/
def P1810654727709311091.Spec : Prop :=
  ∀ n, P1810654727709311091.a n = A182890 n

end A182890

/-! ## A182890.P7187813770153186005

`A182895(n)-a(n-1)` with `a(0)=0`
-/

namespace A182890.P7187813770153186005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182895 n - a (n - 1)

end

end A182890.P7187813770153186005

namespace A182890

/-- `A182895(n)-a(n-1)` -/
def P7187813770153186005.Spec : Prop :=
  ∀ n, P7187813770153186005.a n = A182890 n

end A182890

/-! ## A182890.P12381345412311627696

`round((ϕ/2)²*A000045(2*n))`
-/

namespace A182890.P12381345412311627696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio / 2) ^ 2 * (A000045 (2 * n) : ℝ))

end

end A182890.P12381345412311627696

namespace A182890

/-- `round((ϕ/2)²*A000045(2*n))` -/
def P12381345412311627696.Spec : Prop :=
  ∀ n, P12381345412311627696.a n = A182890 n

end A182890

/-! ## A182890.P3522130823171610531

`A000045(2*n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A182890.P3522130823171610531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A000045 (2 * n - 1) + a (n - 3)

end

end A182890.P3522130823171610531

namespace A182890

/-- `A000045(2*n-1)+a(n-3)` -/
def P3522130823171610531.Spec : Prop :=
  ∀ n, P3522130823171610531.a n = A182890 n

end A182890

/-! ## A182890.P12045765726741730765

`A293552(2*n)+A004697(2*n+1)`
-/

namespace A182890.P12045765726741730765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (2 * n) + A004697 (2 * n + 1)

end

end A182890.P12045765726741730765

namespace A182890

/-- `A293552(2*n)+A004697(2*n+1)` -/
def P12045765726741730765.Spec : Prop :=
  ∀ n, P12045765726741730765.a n = A182890 n

end A182890

/-! ## A182890.P15879844884980758372

`A293552(2*n+1)+A293552(2*n)-1`
-/

namespace A182890.P15879844884980758372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (2 * n + 1) + (A293552 (2 * n) - 1)

end

end A182890.P15879844884980758372

namespace A182890

/-- `A293552(2*n+1)+A293552(2*n)-1` -/
def P15879844884980758372.Spec : Prop :=
  ∀ n, P15879844884980758372.a n = A182890 n

end A182890

/-! ## A182890.P2481189804298974163

`A004697(2*n+3)-A004697(2*n+1)`
-/

namespace A182890.P2481189804298974163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (2 * n + 3) - A004697 (2 * n + 1)

end

end A182890.P2481189804298974163

namespace A182890

/-- `A004697(2*n+3)-A004697(2*n+1)` -/
def P2481189804298974163.Spec : Prop :=
  ∀ n, P2481189804298974163.a n = A182890 n

end A182890

/-! ## A182890.P17600165688609841233

`∑[A051449(2*(n+2))-A051449(2*n+3)]`
-/

namespace A182890.P17600165688609841233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051449 (2 * (n + 2)) - A051449 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182890.P17600165688609841233

namespace A182890

/-- `∑[A051449(2*(n+2))-A051449(2*n+3)]` -/
def P17600165688609841233.Spec : Prop :=
  ∀ n, P17600165688609841233.a n = A182890 n

end A182890

/-! ## A182890.P280484117349646371

`A004697(2*n+1)+A097325(2*n)+A004697(2*n)`
-/

namespace A182890.P280484117349646371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (2 * n + 1) + (A097325 (2 * n) + A004697 (2 * n))

end

end A182890.P280484117349646371

namespace A182890

/-- `A004697(2*n+1)+A097325(2*n)+A004697(2*n)` -/
def P280484117349646371.Spec : Prop :=
  ∀ n, P280484117349646371.a n = A182890 n

end A182890

/-! ## A182890.P15144459206797209817

`Δ[A087953(n)/2]`
-/

namespace A182890.P15144459206797209817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087953 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182890.P15144459206797209817

namespace A182890

/-- `Δ[A087953(n)/2]` -/
def P15144459206797209817.Spec : Prop :=
  ∀ n, P15144459206797209817.a n = (A182890 n : ℚ)

end A182890

/-! ## A182890.P8243588275794981745

`A094686(Δ[n²])/2`
-/

namespace A182890.P8243588275794981745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A182890.P8243588275794981745

namespace A182890

/-- `A094686(Δ[n²])/2` -/
def P8243588275794981745.Spec : Prop :=
  ∀ n, P8243588275794981745.a n = (A182890 n : ℚ)

end A182890

/-! ## A182890.P150568697932450279

`round(A001906(n+1)/4)`
-/

namespace A182890.P150568697932450279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001906 (n + 1) : ℚ) / 4)

end

end A182890.P150568697932450279

namespace A182890

/-- `round(A001906(n+1)/4)` -/
def P150568697932450279.Spec : Prop :=
  ∀ n, P150568697932450279.a n = A182890 n

end A182890

/-! ## A182890.P13176357442610280777

`A293505(2*(n+1))/2`
-/

namespace A182890.P13176357442610280777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293505 (2 * (n + 1)) : ℚ) / 2

end

end A182890.P13176357442610280777

namespace A182890

/-- `A293505(2*(n+1))/2` -/
def P13176357442610280777.Spec : Prop :=
  ∀ n, P13176357442610280777.a n = (A182890 n : ℚ)

end A182890

/-! ## A182890.P8067155193052991023

`round(A000045(2*(n+1))/4)`
-/

namespace A182890.P8067155193052991023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (2 * (n + 1)) : ℚ) / 4)

end

end A182890.P8067155193052991023

namespace A182890

/-- `round(A000045(2*(n+1))/4)` -/
def P8067155193052991023.Spec : Prop :=
  ∀ n, P8067155193052991023.a n = A182890 n

end A182890

/-!
# A182892: Number of weighted lattice paths in L_n having no (1,0)-steps of weight 2 at level 0.

The programs for A182892, there is no canonical definition to state claims against.
-/

/-! ## A182892.P2293989566930377933

`A182891(∑[ceil(n/2)])`
-/

namespace A182892.P2293989566930377933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182891 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182892.P2293989566930377933

/-! ## A182892.P16096734870494623152

`or(1, A182891(A076921(n+1)))`
-/

namespace A182892.P16096734870494623152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A182891 (A076921 (n + 1)).toNat)

end

end A182892.P16096734870494623152

/-! ## A182892.P14034738540910163414

`A182891(A076921(n+1))%A081207(n+1)`
-/

namespace A182892.P14034738540910163414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182891 (A076921 (n + 1)).toNat) (A081207 (n + 1))

end

end A182892.P14034738540910163414

/-! ## A182892.P8991257456152618064

`A182891(A076921(n+1))+A000007(2*(n+2))`
-/

namespace A182892.P8991257456152618064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182891 (A076921 (n + 1)).toNat + A000007 (2 * (n + 2))

end

end A182892.P8991257456152618064

/-! ## A182892.P13839809353825031590

`A182891(A076921(n+1))+A033322(2*n+3)`
-/

namespace A182892.P13839809353825031590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182891 (A076921 (n + 1)).toNat + A033322 (2 * n + 3)

end

end A182892.P13839809353825031590

/-!
# A182893: Triangle read by rows: T(n,k) is the number of weighted lattice paths in L_n having k (1,0)-steps at level 0. The members of L_n are paths of weight n that start at (0,0) , end on the horizontal axis and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182893, there is no canonical definition to state claims against.
-/

/-! ## A182893.P12216412453526193242

`A030998(A126465(n)*A247299(n))`
-/

namespace A182893.P12216412453526193242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (A126465 n * A247299 n).toNat

end

end A182893.P12216412453526193242

/-! ## A182893.P8468549132890675334

`A296559(n)*A352517(A101894(n))`
-/

namespace A182893.P8468549132890675334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 n * A352517 (A101894 n).toNat

end

end A182893.P8468549132890675334

/-! ## A182893.P11901360613694024851

`A296559(n)*A352517(A193723(n))`
-/

namespace A182893.P11901360613694024851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296559 n * A352517 (A193723 n).toNat

end

end A182893.P11901360613694024851

/-! ## A182893.P11244454669945227684

`gcd(A026729(n), A125079(A022133(n)))`
-/

namespace A182893.P11244454669945227684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026729 n) (A125079 (A022133 n).toNat)

end

end A182893.P11244454669945227684

/-! ## A182893.P17171804501665014420

`and(A002034(n+1), A101894(A098539(n)))`
-/

namespace A182893.P17171804501665014420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002034 (n + 1)) (A101894 (A098539 n).toNat)

end

end A182893.P17171804501665014420

/-!
# A182894: Number of weighted lattice paths in L_n having no (1,0)-steps at level 0. The members of L_n are paths of weight n that start at (0,0) , end on the horizontal axis and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182894, there is no canonical definition to state claims against.
-/

/-! ## A182894.P15889025227951473144

`A182893(∑[n])`
-/

namespace A182894.P15889025227951473144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182893 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182894.P15889025227951473144

/-! ## A182894.P11124692592783373830

`A182893(A000217(n))+char[12]`
-/

namespace A182894.P11124692592783373830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182893 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182894.P11124692592783373830

/-! ## A182894.P16162667917384185981

`A184955(n)+A182893(A000217(n))`
-/

namespace A182894.P16162667917384185981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A182893 (A000217 n).toNat

end

end A182894.P16162667917384185981

/-! ## A182894.P11502384112970370864

`A185284(n)+A182893(A000217(n))`
-/

namespace A182894.P11502384112970370864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A182893 (A000217 n).toNat

end

end A182894.P11502384112970370864

/-! ## A182894.P4112100791594110002

`A182893(A000217(n))*A220122(n)`
-/

namespace A182894.P4112100791594110002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182893 (A000217 n).toNat * A220122 n

end

end A182894.P4112100791594110002

/-!
# A182895: Number of (1,0)-steps at level 0 in all weighted lattice paths in L_n.

The programs for A182895, the canonical program `A182895.P10123971015645176101` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182895 has offset 0).

The definition of A182895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182895.P10123971015645176101

`(A000032(2*n+1)-A010892(2*n))/4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A182895

/-- `(A000032(2*n+1)-A010892(2*n))/4` -/
def P10123971015645176101.Spec : Prop :=
  ∀ n, P10123971015645176101.a n = (A182895 n : ℚ)

end A182895

/-! ## A182895.P11211741426402877388

`ogf((x+x^2)/(1-2x-x^2-2x^3+x^4))`
-/

namespace A182895.P11211741426402877388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -2, -1, -2, 1] n

end

end A182895.P11211741426402877388

namespace A182895

/-- `ogf((x+x^2)/(1-2x-x^2-2x^3+x^4))` -/
def P11211741426402877388.Spec : Prop :=
  ∀ n, P11211741426402877388.a n = A182895 n

end A182895

/-! ## A182895.P18100996742724523301

`A227047(Δ[n²])`
-/

namespace A182895.P18100996742724523301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227047 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182895.P18100996742724523301

namespace A182895

/-- `A227047(Δ[n²])` -/
def P18100996742724523301.Spec : Prop :=
  ∀ n, P18100996742724523301.a n = A182895 n

end A182895

/-! ## A182895.P10632136380999034193

`∑[A227047(2*n)]`
-/

namespace A182895.P10632136380999034193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227047 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182895.P10632136380999034193

namespace A182895

/-- `∑[A227047(2*n)]` -/
def P10632136380999034193.Spec : Prop :=
  ∀ n, P10632136380999034193.a n = A182895 n

end A182895

/-! ## A182895.P3480572862714190553

`A293552(2*n)+A004697(2*(n+1))`
-/

namespace A182895.P3480572862714190553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (2 * n) + A004697 (2 * (n + 1))

end

end A182895.P3480572862714190553

namespace A182895

/-- `A293552(2*n)+A004697(2*(n+1))` -/
def P3480572862714190553.Spec : Prop :=
  ∀ n, P3480572862714190553.a n = A182895 n

end A182895

/-! ## A182895.P5663925526129539891

`A227047(2*n+1)+A134667(2*n)`
-/

namespace A182895.P5663925526129539891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227047 (2 * n + 1) + A134667 (2 * n)

end

end A182895.P5663925526129539891

namespace A182895

/-- `A227047(2*n+1)+A134667(2*n)` -/
def P5663925526129539891.Spec : Prop :=
  ∀ n, P5663925526129539891.a n = A182895 n

end A182895

/-! ## A182895.P9555078007782772154

`A293553(2*n+1)+A173173(2*n)`
-/

namespace A182895.P9555078007782772154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (2 * n + 1) + A173173 (2 * n)

end

end A182895.P9555078007782772154

namespace A182895

/-- `A293553(2*n+1)+A173173(2*n)` -/
def P9555078007782772154.Spec : Prop :=
  ∀ n, P9555078007782772154.a n = A182895 n

end A182895

/-! ## A182895.P7143506119777265369

`A293553(2*(n+1))+A293553(2*n)`
-/

namespace A182895.P7143506119777265369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (2 * (n + 1)) + A293553 (2 * n)

end

end A182895.P7143506119777265369

namespace A182895

/-- `A293553(2*(n+1))+A293553(2*n)` -/
def P7143506119777265369.Spec : Prop :=
  ∀ n, P7143506119777265369.a n = A182895 n

end A182895

/-! ## A182895.P10298222422150189219

`A000034(2*n)*A227047(2*n+1)`
-/

namespace A182895.P10298222422150189219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A227047 (2 * n + 1)

end

end A182895.P10298222422150189219

namespace A182895

/-- `A000034(2*n)*A227047(2*n+1)` -/
def P10298222422150189219.Spec : Prop :=
  ∀ n, P10298222422150189219.a n = A182895 n

end A182895

/-! ## A182895.P12713724367826797243

`A293552(2*n+1)+A173173(2*n)-1`
-/

namespace A182895.P12713724367826797243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (2 * n + 1) + (A173173 (2 * n) - 1)

end

end A182895.P12713724367826797243

namespace A182895

/-- `A293552(2*n+1)+A173173(2*n)-1` -/
def P12713724367826797243.Spec : Prop :=
  ∀ n, P12713724367826797243.a n = A182895 n

end A182895

/-! ## A182895.P10623790762688532906

`∑[A301773(n)/4]`
-/

namespace A182895.P10623790762688532906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301773 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182895.P10623790762688532906

namespace A182895

/-- `∑[A301773(n)/4]` -/
def P10623790762688532906.Spec : Prop :=
  ∀ n, P10623790762688532906.a n = (A182895 n : ℚ)

end A182895

/-! ## A182895.P8188947811017803342

`floor(∑[A000032(2*n)/4])`
-/

namespace A182895.P8188947811017803342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A182895.P8188947811017803342

namespace A182895

/-- `floor(∑[A000032(2*n)/4])` -/
def P8188947811017803342.Spec : Prop :=
  ∀ n, P8188947811017803342.a n = A182895 n

end A182895

/-! ## A182895.P17041299399480195267

`Δ[floor((A000032(n+1)/(2*ϕ))²)]`
-/

namespace A182895.P17041299399480195267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000032 (n + 1) : ℝ) / (2 * Real.goldenRatio)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182895.P17041299399480195267

namespace A182895

/-- `Δ[floor((A000032(n+1)/(2*ϕ))²)]` -/
def P17041299399480195267.Spec : Prop :=
  ∀ n, P17041299399480195267.a n = A182895 n

end A182895

/-! ## A182895.P2552146381348636008

`A182890(n+1)-A108479(n)`
-/

namespace A182895.P2552146381348636008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182890 (n + 1) - A108479 n

end

end A182895.P2552146381348636008

namespace A182895

/-- `A182890(n+1)-A108479(n)` -/
def P2552146381348636008.Spec : Prop :=
  ∀ n, P2552146381348636008.a n = A182895 n

end A182895

/-! ## A182895.P2179006045683392739

`A182890(n+1)-A005252(2*n)`
-/

namespace A182895.P2179006045683392739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182890 (n + 1) - A005252 (2 * n)

end

end A182895.P2179006045683392739

namespace A182895

/-- `A182890(n+1)-A005252(2*n)` -/
def P2179006045683392739.Spec : Prop :=
  ∀ n, P2179006045683392739.a n = A182895 n

end A182895

/-! ## A182895.P1092980593359678389

`A052952(2*n)-A131132(2*n)`
-/

namespace A182895.P1092980593359678389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n) - A131132 (2 * n)

end

end A182895.P1092980593359678389

namespace A182895

/-- `A052952(2*n)-A131132(2*n)` -/
def P1092980593359678389.Spec : Prop :=
  ∀ n, P1092980593359678389.a n = A182895 n

end A182895

/-! ## A182895.P18396387032646957246

`A087953(n+1)-A293632(2*n+1)`
-/

namespace A182895.P18396387032646957246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (n + 1) - A293632 (2 * n + 1)

end

end A182895.P18396387032646957246

namespace A182895

/-- `A087953(n+1)-A293632(2*n+1)` -/
def P18396387032646957246.Spec : Prop :=
  ∀ n, P18396387032646957246.a n = A182895 n

end A182895

/-! ## A182895.P1785700172827730682

`A087953(n+1)-A293633(2*n+1)`
-/

namespace A182895.P1785700172827730682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 (n + 1) - A293633 (2 * n + 1)

end

end A182895.P1785700172827730682

namespace A182895

/-- `A087953(n+1)-A293633(2*n+1)` -/
def P1785700172827730682.Spec : Prop :=
  ∀ n, P1785700172827730682.a n = A182895 n

end A182895

/-! ## A182895.P15907256741903376839

`A079962(2*n+1)-A005252(2*n)`
-/

namespace A182895.P15907256741903376839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (2 * n + 1) - A005252 (2 * n)

end

end A182895.P15907256741903376839

namespace A182895

/-- `A079962(2*n+1)-A005252(2*n)` -/
def P15907256741903376839.Spec : Prop :=
  ∀ n, P15907256741903376839.a n = A182895 n

end A182895

/-! ## A182895.P17629229717555969488

`A052952(2*n)-A079962(2*n+1)`
-/

namespace A182895.P17629229717555969488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n) - A079962 (2 * n + 1)

end

end A182895.P17629229717555969488

namespace A182895

/-- `A052952(2*n)-A079962(2*n+1)` -/
def P17629229717555969488.Spec : Prop :=
  ∀ n, P17629229717555969488.a n = A182895 n

end A182895

/-!
# A182897: Number of (1,-1)-returns to the horizontal axis in all weighted lattice paths in L_n. The members of L_n are paths of weight n that start at (0,0) , end on the horizontal axis and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182897, there is no canonical definition to state claims against.
-/

/-! ## A182897.P10617455045527789327

`A182899(n)/2`
-/

namespace A182897.P10617455045527789327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182899 n : ℚ) / 2

end

end A182897.P10617455045527789327

/-! ## A182897.P921418222973033245

`(A108479(n)-A051286(n))/2`
-/

namespace A182897.P921418222973033245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108479 n - A051286 n : ℚ) / 2

end

end A182897.P921418222973033245

/-! ## A182897.P8342930760472550625

`(A005252(2*n)-A051286(n))/2`
-/

namespace A182897.P8342930760472550625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005252 (2 * n) - A051286 n : ℚ) / 2

end

end A182897.P8342930760472550625

/-! ## A182897.P17098862778341143750

`(A094686(2*n)-A051286(n))/2`
-/

namespace A182897.P17098862778341143750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094686 (2 * n) - A051286 n : ℚ) / 2

end

end A182897.P17098862778341143750

/-! ## A182897.P17449474475172369440

`(A108479(n)-A077419(2*n))/2`
-/

namespace A182897.P17449474475172369440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108479 n - A077419 (2 * n) : ℚ) / 2

end

end A182897.P17449474475172369440

/-! ## A182897.P13131769216567480196

`floor((A005252(A008486(n)-n)-A051286(n))/2)`
-/

namespace A182897.P13131769216567480196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005252 (A008486 n - (n : ℤ)).toNat - A051286 n : ℚ) / 2⌋

end

end A182897.P13131769216567480196

/-!
# A182898: Triangle read by rows: T(n,k) is the number of weighted lattice paths in L_n having k returns to the horizontal axis (both from above and below). The members of L_n are paths of weight n that start at (0,0) , end on the horizontal axis and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182898, there is no canonical definition to state claims against.
-/

/-! ## A182898.P12475594705590360440

`or(A051765(A349862(n)), A182880(n))`
-/

namespace A182898.P12475594705590360440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051765 (A349862 n).toNat) (A182880 n)

end

end A182898.P12475594705590360440

/-! ## A182898.P2546410917002109915

`or(A035147(A244361(3*n+1)), A182880(n))`
-/

namespace A182898.P2546410917002109915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035147 (A244361 (3 * n + 1)).toNat) (A182880 n)

end

end A182898.P2546410917002109915

/-!
# A182899: Number of returns to the horizontal axis (both from above and below) in all weighted lattice paths in L_n.

The programs for A182899, there is no canonical definition to state claims against.
-/

/-! ## A182899.P8776411436169530501

`2*A182897(n)`
-/

namespace A182899.P8776411436169530501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182897 n

end

end A182899.P8776411436169530501

/-! ## A182899.P8633598639876170516

`A108479(n)-A051286(n)`
-/

namespace A182899.P8633598639876170516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 n - A051286 n

end

end A182899.P8633598639876170516

/-! ## A182899.P7805859951895254206

`A005252(2*n)-A051286(n)`
-/

namespace A182899.P7805859951895254206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (2 * n) - A051286 n

end

end A182899.P7805859951895254206

/-! ## A182899.P16314141089931338667

`A094686(2*n)-A051286(n)`
-/

namespace A182899.P16314141089931338667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n) - A051286 n

end

end A182899.P16314141089931338667

/-! ## A182899.P3255343248453240486

`A108479(n)-A077419(2*n)`
-/

namespace A182899.P3255343248453240486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 n - A077419 (2 * n)

end

end A182899.P3255343248453240486

/-! ## A182899.P1239223413214048211

`A005252(2*n)-A077419(2*n)`
-/

namespace A182899.P1239223413214048211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (2 * n) - A077419 (2 * n)

end

end A182899.P1239223413214048211

