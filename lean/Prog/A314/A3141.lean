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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A314100: Coordination sequence Gal.6.329.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314100, the canonical program `A314100.P5614151472611851930` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314100 has offset 0).

The definition of A314100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314100.P7246408700231486075

`A315672(n)-A330025(n)`
-/

namespace A314100.P7246408700231486075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315672 n - A330025 n

end

end A314100.P7246408700231486075

namespace A314100

/-- `A315672(n)-A330025(n)` -/
def P7246408700231486075.Spec : Prop :=
  ∀ n, P7246408700231486075.a n = A314100 n

end A314100

/-! ## A314100.P5614151472611851930

`abs(A008592(n)-A314943(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314100

/-- `abs(A008592(n)-A314943(n))` -/
def P5614151472611851930.Spec : Prop :=
  ∀ n, P5614151472611851930.a n = A314100 n

theorem P5614151472611851930.correct : P5614151472611851930.Spec := by
  intro n
  simp only [A314100]

end A314100

/-! ## A314100.P3443323712031370580

`2*A008706(n)-A314943(n)`
-/

namespace A314100.P3443323712031370580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314943 n

end

end A314100.P3443323712031370580

namespace A314100

/-- `2*A008706(n)-A314943(n)` -/
def P3443323712031370580.Spec : Prop :=
  ∀ n, P3443323712031370580.a n = A314100 n

end A314100

/-! ## A314100.P14144549557997816343

`2*A313752(n)-A314972(n)`
-/

namespace A314100.P14144549557997816343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313752 n - A314972 n

end

end A314100.P14144549557997816343

namespace A314100

/-- `2*A313752(n)-A314972(n)` -/
def P14144549557997816343.Spec : Prop :=
  ∀ n, P14144549557997816343.a n = A314100 n

end A314100

/-! ## A314100.P12192575505556304021

`A330025(A330025(n)+n)+A310464(n)`
-/

namespace A314100.P12192575505556304021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A310464 n

end

end A314100.P12192575505556304021

namespace A314100

/-- `A330025(A330025(n)+n)+A310464(n)` -/
def P12192575505556304021.Spec : Prop :=
  ∀ n, P12192575505556304021.a n = A314100 n

end A314100

/-! ## A314100.P883761277001507549

`A008458(n)+A008574(n)-A314943(n)`
-/

namespace A314100.P883761277001507549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314943 n)

end

end A314100.P883761277001507549

namespace A314100

/-- `A008458(n)+A008574(n)-A314943(n)` -/
def P883761277001507549.Spec : Prop :=
  ∀ n, P883761277001507549.a n = A314100 n

end A314100

/-! ## A314100.P12596336453399426115

`A314203(n)-A253262(n-A253262(n))`
-/

namespace A314100.P12596336453399426115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314203 n - A253262 ((n : ℤ) - A253262 n).toNat

end

end A314100.P12596336453399426115

namespace A314100

/-- `A314203(n)-A253262(n-A253262(n))` -/
def P12596336453399426115.Spec : Prop :=
  ∀ n, P12596336453399426115.a n = A314100 n

end A314100

/-! ## A314100.P8344097731192634211

`A314943(n)+A005843(A008706(n)-A314943(n))`
-/

namespace A314100.P8344097731192634211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n + A005843 (A008706 n - A314943 n).toNat

end

end A314100.P8344097731192634211

namespace A314100

/-- `A314943(n)+A005843(A008706(n)-A314943(n))` -/
def P8344097731192634211.Spec : Prop :=
  ∀ n, P8344097731192634211.a n = A314100 n

end A314100

/-! ## A314100.P7577610484857816519

`A315275(n)-A330033(n)`
-/

namespace A314100.P7577610484857816519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315275 n - A330033 n

end

end A314100.P7577610484857816519

namespace A314100

/-- `A315275(n)-A330033(n)` -/
def P7577610484857816519.Spec : Prop :=
  ∀ n, P7577610484857816519.a n = A314100 n

end A314100

/-! ## A314100.P10912786023324421751

`A314191(n)-A004526(A194222(n+1))`
-/

namespace A314100.P10912786023324421751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314191 n - A004526 (A194222 (n + 1)).toNat

end

end A314100.P10912786023324421751

namespace A314100

/-- `A314191(n)-A004526(A194222(n+1))` -/
def P10912786023324421751.Spec : Prop :=
  ∀ n, P10912786023324421751.a n = A314100 n

end A314100

/-! ## A314100.P3415485527581661677

`A005843(A008706(n))-A314943(n)`
-/

namespace A314100.P3415485527581661677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314943 n

end

end A314100.P3415485527581661677

namespace A314100

/-- `A005843(A008706(n))-A314943(n)` -/
def P3415485527581661677.Spec : Prop :=
  ∀ n, P3415485527581661677.a n = A314100 n

end A314100

/-! ## A314100.P2448692970676011417

`2*A301726(n)-A314164(n)`
-/

namespace A314100.P2448692970676011417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301726 n - A314164 n

end

end A314100.P2448692970676011417

namespace A314100

/-- `2*A301726(n)-A314164(n)` -/
def P2448692970676011417.Spec : Prop :=
  ∀ n, P2448692970676011417.a n = A314100 n

end A314100

/-! ## A314100.P6263427478771947118

`A314164(n)-A005843(A314164(n)-A301726(n))`
-/

namespace A314100.P6263427478771947118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n - A005843 (A314164 n - A301726 n).toNat

end

end A314100.P6263427478771947118

namespace A314100

/-- `A314164(n)-A005843(A314164(n)-A301726(n))` -/
def P6263427478771947118.Spec : Prop :=
  ∀ n, P6263427478771947118.a n = A314100 n

end A314100

/-! ## A314100.P3235556894394541727

`A005843(A313752(n))-A314972(n)`
-/

namespace A314100.P3235556894394541727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313752 n).toNat - A314972 n

end

end A314100.P3235556894394541727

namespace A314100

/-- `A005843(A313752(n))-A314972(n)` -/
def P3235556894394541727.Spec : Prop :=
  ∀ n, P3235556894394541727.a n = A314100 n

end A314100

/-! ## A314100.P16175532628246851544

`A005843(A301726(n))-A314164(n)`
-/

namespace A314100.P16175532628246851544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A301726 n).toNat - A314164 n

end

end A314100.P16175532628246851544

namespace A314100

/-- `A005843(A301726(n))-A314164(n)` -/
def P16175532628246851544.Spec : Prop :=
  ∀ n, P16175532628246851544.a n = A314100 n

end A314100

/-!
# A314101: Coordination sequence Gal.4.101.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314101, there is no canonical definition to state claims against.
-/

/-! ## A314101.P8351280536258101032

`A314164(n)-A278922(A291782(n+1))`
-/

namespace A314101.P8351280536258101032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n - A278922 (A291782 (n + 1)).toNat

end

end A314101.P8351280536258101032

/-! ## A314101.P2158831523267444519

`A301726(n)-A020987(A005043(n))`
-/

namespace A314101.P2158831523267444519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A020987 (A005043 n).toNat

end

end A314101.P2158831523267444519

/-! ## A314101.P964940585916692678

`A314164(n)-A278922(A080878(n))`
-/

namespace A314101.P964940585916692678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n - A278922 (A080878 n).toNat

end

end A314101.P964940585916692678

/-! ## A314101.P89363369389264843

`xor(A178181(n), A286804(A057114(n+1)))`
-/

namespace A314101.P89363369389264843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178181 n) (A286804 (A057114 (n + 1)).toNat)

end

end A314101.P89363369389264843

/-! ## A314101.P8841282354041969261

`A301726(n)-A159684(A070050(n+1))`
-/

namespace A314101.P8841282354041969261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A159684 (A070050 (n + 1)).toNat

end

end A314101.P8841282354041969261

/-!
# A314102: Coordination sequence Gal.5.214.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314102, there is no canonical definition to state claims against.
-/

/-! ## A314102.P3757172448867012628

`A004396(A005843(n))+A311211(n)-A298428(n+1)%2`
-/

namespace A314102.P3757172448867012628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 n).toNat + (A311211 n - Int.tmod (A298428 (n + 1)) 2)

end

end A314102.P3757172448867012628

/-! ## A314102.P716398793033524480

`A313710(n)+A051903(A189485(n))`
-/

namespace A314102.P716398793033524480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313710 n + A051903 (A189485 n).toNat

end

end A314102.P716398793033524480

/-! ## A314102.P17864324284447793500

`xor(A116178(A249572(n)), A313898(n))`
-/

namespace A314102.P17864324284447793500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116178 (A249572 n).toNat) (A313898 n)

end

end A314102.P17864324284447793500

/-! ## A314102.P17832552602058126737

`A314100(n)+∑[A210713(A171717(n))]`
-/

namespace A314102.P17832552602058126737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A171717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314100 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314102.P17832552602058126737

/-! ## A314102.P14516311891554464468

`A313754(n)+A007814(A038392(n+1))`
-/

namespace A314102.P14516311891554464468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n + A007814 (A038392 (n + 1)).toNat

end

end A314102.P14516311891554464468

/-!
# A314103: Coordination sequence Gal.5.212.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314103, there is no canonical definition to state claims against.
-/

/-! ## A314103.P17413918154628110178

`xor(A007814(A000108(n)), A313893(n))`
-/

namespace A314103.P17413918154628110178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A000108 n).toNat) (A313893 n)

end

end A314103.P17413918154628110178

/-! ## A314103.P9954967513501740220

`A141070(A003242(n))+A056911(2*n+1)`
-/

namespace A314103.P9954967513501740220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141070 (A003242 n).toNat + A056911 (2 * n + 1)

end

end A314103.P9954967513501740220

/-! ## A314103.P545801854948243756

`A314104(A228912(n)+n)`
-/

namespace A314103.P545801854948243756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314104 (A228912 n + (n : ℤ)).toNat

end

end A314103.P545801854948243756

/-! ## A314103.P13439377043133965333

`A314104(n^A229888(n))`
-/

namespace A314103.P13439377043133965333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314104 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A229888 n : ℤ))).toNat

end

end A314103.P13439377043133965333

/-! ## A314103.P8462318426164386373

`A314104(n)+A000007(A328433(n))`
-/

namespace A314103.P8462318426164386373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314104 n + A000007 (A328433 n).toNat

end

end A314103.P8462318426164386373

/-!
# A314104: Coordination sequence Gal.5.297.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314104, there is no canonical definition to state claims against.
-/

/-! ## A314104.P16687262855204749970

`A310459(A087051(n))+A004525(n)%A140635(2*n+3)`
-/

namespace A314104.P16687262855204749970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310459 (A087051 n).toNat + Int.tmod (A004525 n) (A140635 (2 * n + 3))

end

end A314104.P16687262855204749970

/-!
# A314105: Coordination sequence Gal.6.369.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314105, there is no canonical definition to state claims against.
-/

/-! ## A314105.P10934163378502745646

`A304096(A235791(2*n+1))+A315033(n)+A001221(A348534(n))`
-/

namespace A314105.P10934163378502745646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (A235791 (2 * n + 1)).toNat + (A315033 n + A001221 (A348534 n).toNat)

end

end A314105.P10934163378502745646

/-! ## A314105.P18105246144569078724

`A310398(n)+A001221(A007482(n))`
-/

namespace A314105.P18105246144569078724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A001221 (A007482 n).toNat

end

end A314105.P18105246144569078724

/-! ## A314105.P13120647932913098574

`A313571(n)+A001221(A264927(n))`
-/

namespace A314105.P13120647932913098574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313571 n + A001221 (A264927 n).toNat

end

end A314105.P13120647932913098574

/-! ## A314105.P863449846744673850

`A314131(n)-A188170(A000110(n))`
-/

namespace A314105.P863449846744673850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314131 n - A188170 (A000110 n).toNat

end

end A314105.P863449846744673850

/-! ## A314105.P12883555031696524079

`A314128(n)-A011656(A050383(n+1))`
-/

namespace A314105.P12883555031696524079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314128 n - A011656 (A050383 (n + 1)).toNat

end

end A314105.P12883555031696524079

/-!
# A314106: Coordination sequence Gal.6.199.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314106, the canonical program `A314106.P7807750276630759076` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314106 has offset 0).

The definition of A314106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314106.P1131998176869431383

`abs(10*n-A314915(n))`
-/

namespace A314106.P1131998176869431383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314915 n|

end

end A314106.P1131998176869431383

namespace A314106

/-- `abs(10*n-A314915(n))` -/
def P1131998176869431383.Spec : Prop :=
  ∀ n, P1131998176869431383.a n = A314106 n

end A314106

/-! ## A314106.P7807750276630759076

`A047486(A312891(n)+1-n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A314106

/-- `A047486(A312891(n)+1-n)` -/
def P7807750276630759076.Spec : Prop :=
  ∀ n, P7807750276630759076.a n = A314106 n

theorem P7807750276630759076.correct : P7807750276630759076.Spec := by
  intro n
  simp only [A314106]

end A314106

/-! ## A314106.P3391195538156587576

`A047486(1-(n-A312891(n)))`
-/

namespace A314106.P3391195538156587576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (1 - ((n : ℤ) - A312891 n)).toNat

end

end A314106.P3391195538156587576

namespace A314106

/-- `A047486(1-(n-A312891(n)))` -/
def P3391195538156587576.Spec : Prop :=
  ∀ n, P3391195538156587576.a n = A314106 n

theorem P3391195538156587576.correct : P3391195538156587576.Spec := by
  intro n
  simp only [A314106, Nat.add_sub_cancel, A314106.P3391195538156587576.a, A314106.P7807750276630759076.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A314106

/-! ## A314106.P4730127560123116683

`A008458(n)+A008574(n)-A314915(n)`
-/

namespace A314106.P4730127560123116683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314915 n)

end

end A314106.P4730127560123116683

namespace A314106

/-- `A008458(n)+A008574(n)-A314915(n)` -/
def P4730127560123116683.Spec : Prop :=
  ∀ n, P4730127560123116683.a n = A314106 n

end A314106

/-! ## A314106.P17105536168581241540

`A314186(n)-Δ[A011864(n)]`
-/

namespace A314106.P17105536168581241540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314186 n - (f1 (n + 1) - f1 n)

end

end A314106.P17105536168581241540

namespace A314106

/-- `A314186(n)-Δ[A011864(n)]` -/
def P17105536168581241540.Spec : Prop :=
  ∀ n, P17105536168581241540.a n = A314106 n

end A314106

/-! ## A314106.P5006765889450736409

`A004396(A315743(n)+2*n)`
-/

namespace A314106.P5006765889450736409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315743 n + (2 * n : ℤ)).toNat

end

end A314106.P5006765889450736409

namespace A314106

/-- `A004396(A315743(n)+2*n)` -/
def P5006765889450736409.Spec : Prop :=
  ∀ n, P5006765889450736409.a n = A314106 n

end A314106

/-! ## A314106.P7802867677183199001

`A004396(A315756(n)+2*n)`
-/

namespace A314106.P7802867677183199001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315756 n + (2 * n : ℤ)).toNat

end

end A314106.P7802867677183199001

namespace A314106

/-- `A004396(A315756(n)+2*n)` -/
def P7802867677183199001.Spec : Prop :=
  ∀ n, P7802867677183199001.a n = A314106 n

end A314106

/-! ## A314106.P15304225858599295346

`A004396(A315743(n)+n+n)`
-/

namespace A314106.P15304225858599295346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315743 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314106.P15304225858599295346

namespace A314106

/-- `A004396(A315743(n)+n+n)` -/
def P15304225858599295346.Spec : Prop :=
  ∀ n, P15304225858599295346.a n = A314106 n

end A314106

/-! ## A314106.P8694607330397735950

`A004396(A315756(n)+n+n)`
-/

namespace A314106.P8694607330397735950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315756 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314106.P8694607330397735950

namespace A314106

/-- `A004396(A315756(n)+n+n)` -/
def P8694607330397735950.Spec : Prop :=
  ∀ n, P8694607330397735950.a n = A314106 n

end A314106

/-!
# A314107: Coordination sequence Gal.6.205.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314107, the canonical program `A314107.P2990438990150127076` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314107 has offset 0).

The definition of A314107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314107.P11280229221691071006

`abs(A008592(n)-A314912(n))`
-/

namespace A314107.P11280229221691071006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314912 n|

end

end A314107.P11280229221691071006

namespace A314107

/-- `abs(A008592(n)-A314912(n))` -/
def P11280229221691071006.Spec : Prop :=
  ∀ n, P11280229221691071006.a n = A314107 n

end A314107

/-! ## A314107.P16702001872358354524

`A313540(n)+∑[A021913(n)]`
-/

namespace A314107.P16702001872358354524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314107.P16702001872358354524

namespace A314107

/-- `A313540(n)+∑[A021913(n)]` -/
def P16702001872358354524.Spec : Prop :=
  ∀ n, P16702001872358354524.a n = A314107 n

end A314107

/-! ## A314107.P9167416662868210544

`A313540(n)+Δ[A011848(n)]`
-/

namespace A314107.P9167416662868210544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + (f1 (n + 1) - f1 n)

end

end A314107.P9167416662868210544

namespace A314107

/-- `A313540(n)+Δ[A011848(n)]` -/
def P9167416662868210544.Spec : Prop :=
  ∀ n, P9167416662868210544.a n = A314107 n

end A314107

/-! ## A314107.P18362152564583569322

`A313540(n)+A004524(n+1)`
-/

namespace A314107.P18362152564583569322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + A004524 (n + 1)

end

end A314107.P18362152564583569322

namespace A314107

/-- `A313540(n)+A004524(n+1)` -/
def P18362152564583569322.Spec : Prop :=
  ∀ n, P18362152564583569322.a n = A314107 n

end A314107

/-! ## A314107.P7368741180043110098

`A313540(n)+n-A004525(n)`
-/

namespace A314107.P7368741180043110098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + ((n : ℤ) - A004525 n)

end

end A314107.P7368741180043110098

namespace A314107

/-- `A313540(n)+n-A004525(n)` -/
def P7368741180043110098.Spec : Prop :=
  ∀ n, P7368741180043110098.a n = A314107 n

end A314107

/-! ## A314107.P3383620299507640091

`A313540(n)+n-Δ[A054925(n)]`
-/

namespace A314107.P3383620299507640091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314107.P3383620299507640091

namespace A314107

/-- `A313540(n)+n-Δ[A054925(n)]` -/
def P3383620299507640091.Spec : Prop :=
  ∀ n, P3383620299507640091.a n = A314107 n

end A314107

/-! ## A314107.P9033072743455884704

`A310452(n)+A004525(A004396(n))`
-/

namespace A314107.P9033072743455884704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310452 n + A004525 (A004396 n).toNat

end

end A314107.P9033072743455884704

namespace A314107

/-- `A310452(n)+A004525(A004396(n))` -/
def P9033072743455884704.Spec : Prop :=
  ∀ n, P9033072743455884704.a n = A314107 n

end A314107

/-! ## A314107.P2990438990150127076

`A313485(n)+n-A004396(A004525(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314107

/-- `A313485(n)+n-A004396(A004525(n))` -/
def P2990438990150127076.Spec : Prop :=
  ∀ n, P2990438990150127076.a n = A314107 n

theorem P2990438990150127076.correct : P2990438990150127076.Spec := by
  intro n
  simp only [A314107]

end A314107

/-! ## A314107.P16260629322159363657

`A004396(n)+A314028(n)-A004525(n)`
-/

namespace A314107.P16260629322159363657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314028 n - A004525 n)

end

end A314107.P16260629322159363657

namespace A314107

/-- `A004396(n)+A314028(n)-A004525(n)` -/
def P16260629322159363657.Spec : Prop :=
  ∀ n, P16260629322159363657.a n = A314107 n

end A314107

/-! ## A314107.P2414422108855621439

`A008458(n)+A008574(n)-A314912(n)`
-/

namespace A314107.P2414422108855621439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314912 n)

end

end A314107.P2414422108855621439

namespace A314107

/-- `A008458(n)+A008574(n)-A314912(n)` -/
def P2414422108855621439.Spec : Prop :=
  ∀ n, P2414422108855621439.a n = A314107 n

end A314107

/-! ## A314107.P7294408029467434257

`A315425(n)-A101455(n)`
-/

namespace A314107.P7294408029467434257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n - A101455 n

end

end A314107.P7294408029467434257

namespace A314107

/-- `A315425(n)-A101455(n)` -/
def P7294408029467434257.Spec : Prop :=
  ∀ n, P7294408029467434257.a n = A314107 n

end A314107

/-! ## A314107.P17329195272669438246

`A004396(A004525(n))+A314142(n)-A004525(n)`
-/

namespace A314107.P17329195272669438246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314142 n - A004525 n)

end

end A314107.P17329195272669438246

namespace A314107

/-- `A004396(A004525(n))+A314142(n)-A004525(n)` -/
def P17329195272669438246.Spec : Prop :=
  ∀ n, P17329195272669438246.a n = A314107 n

end A314107

/-! ## A314107.P14821851415954071545

`A315700(n)-A004525(n)`
-/

namespace A314107.P14821851415954071545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A004525 n

end

end A314107.P14821851415954071545

namespace A314107

/-- `A315700(n)-A004525(n)` -/
def P14821851415954071545.Spec : Prop :=
  ∀ n, P14821851415954071545.a n = A314107 n

end A314107

/-! ## A314107.P9661259764347703469

`A315700(n)-Δ[A054925(n)]`
-/

namespace A314107.P9661259764347703469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - (f1 (n + 1) - f1 n)

end

end A314107.P9661259764347703469

namespace A314107

/-- `A315700(n)-Δ[A054925(n)]` -/
def P9661259764347703469.Spec : Prop :=
  ∀ n, P9661259764347703469.a n = A314107 n

end A314107

/-! ## A314107.P16674752754399063110

`∑[A021913(n)]+A315700(n)-n`
-/

namespace A314107.P16674752754399063110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315700 n - (n : ℤ))

end

end A314107.P16674752754399063110

namespace A314107

/-- `∑[A021913(n)]+A315700(n)-n` -/
def P16674752754399063110.Spec : Prop :=
  ∀ n, P16674752754399063110.a n = A314107 n

end A314107

/-! ## A314107.P1824992466488991743

`Δ[A011848(n)]+A315700(n)-n`
-/

namespace A314107.P1824992466488991743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315700 n - (n : ℤ))

end

end A314107.P1824992466488991743

namespace A314107

/-- `Δ[A011848(n)]+A315700(n)-n` -/
def P1824992466488991743.Spec : Prop :=
  ∀ n, P1824992466488991743.a n = A314107 n

end A314107

/-! ## A314107.P11883465820954386318

`A002265(A003485(n))+A315700(n)-n`
-/

namespace A314107.P11883465820954386318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003485 n).toNat + (A315700 n - (n : ℤ))

end

end A314107.P11883465820954386318

namespace A314107

/-- `A002265(A003485(n))+A315700(n)-n` -/
def P11883465820954386318.Spec : Prop :=
  ∀ n, P11883465820954386318.a n = A314107 n

end A314107

/-! ## A314107.P15657488167969465129

`A004525(A004396(n)+2*A313687(n))`
-/

namespace A314107.P15657488167969465129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n + 2 * A313687 n).toNat

end

end A314107.P15657488167969465129

namespace A314107

/-- `A004525(A004396(n)+2*A313687(n))` -/
def P15657488167969465129.Spec : Prop :=
  ∀ n, P15657488167969465129.a n = A314107 n

end A314107

/-! ## A314107.P5889024187834891626

`A004525(A004396(n)+2*A313693(n))`
-/

namespace A314107.P5889024187834891626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n + 2 * A313693 n).toNat

end

end A314107.P5889024187834891626

namespace A314107

/-- `A004525(A004396(n)+2*A313693(n))` -/
def P5889024187834891626.Spec : Prop :=
  ∀ n, P5889024187834891626.a n = A314107 n

end A314107

/-! ## A314107.P10491529140644579366

`A004525(A134667(n)+2*A314110(n))`
-/

namespace A314107.P10491529140644579366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A134667 n + 2 * A314110 n).toNat

end

end A314107.P10491529140644579366

namespace A314107

/-- `A004525(A134667(n)+2*A314110(n))` -/
def P10491529140644579366.Spec : Prop :=
  ∀ n, P10491529140644579366.a n = A314107 n

end A314107

/-!
# A314108: Coordination sequence Gal.6.198.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314108, the canonical program `A314108.P14678985322811750842` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314108 has offset 0).

The definition of A314108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314108.P5827280658432120958

`A315462(n)-A134667(n)`
-/

namespace A314108.P5827280658432120958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315462 n - A134667 n

end

end A314108.P5827280658432120958

namespace A314108

/-- `A315462(n)-A134667(n)` -/
def P5827280658432120958.Spec : Prop :=
  ∀ n, P5827280658432120958.a n = A314108 n

end A314108

/-! ## A314108.P16185582525689663504

`abs(A008592(n)-A314903(n))`
-/

namespace A314108.P16185582525689663504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314903 n|

end

end A314108.P16185582525689663504

namespace A314108

/-- `abs(A008592(n)-A314903(n))` -/
def P16185582525689663504.Spec : Prop :=
  ∀ n, P16185582525689663504.a n = A314108 n

end A314108

/-! ## A314108.P10894426933082065606

`floor(A010015(n)/A314903(n))`
-/

namespace A314108.P10894426933082065606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314903 n : ℚ)⌋

end

end A314108.P10894426933082065606

namespace A314108

/-- `floor(A010015(n)/A314903(n))` -/
def P10894426933082065606.Spec : Prop :=
  ∀ n, P10894426933082065606.a n = A314108 n

end A314108

/-! ## A314108.P2676460455119944959

`A313717(n)+∑[A022003(n)]`
-/

namespace A314108.P2676460455119944959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314108.P2676460455119944959

namespace A314108

/-- `A313717(n)+∑[A022003(n)]` -/
def P2676460455119944959.Spec : Prop :=
  ∀ n, P2676460455119944959.a n = A314108 n

end A314108

/-! ## A314108.P14754524605767288057

`A313474(n)+∑[A131735(n)]`
-/

namespace A314108.P14754524605767288057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314108.P14754524605767288057

namespace A314108

/-- `A313474(n)+∑[A131735(n)]` -/
def P14754524605767288057.Spec : Prop :=
  ∀ n, P14754524605767288057.a n = A314108 n

end A314108

/-! ## A314108.P44249333059630191

`A313717(n)+A002264(n+1)`
-/

namespace A314108.P44249333059630191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + A002264 (n + 1)

end

end A314108.P44249333059630191

namespace A314108

/-- `A313717(n)+A002264(n+1)` -/
def P44249333059630191.Spec : Prop :=
  ∀ n, P44249333059630191.a n = A314108 n

end A314108

/-! ## A314108.P2923791976451164392

`A313717(n)+n-A004396(n)`
-/

namespace A314108.P2923791976451164392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ((n : ℤ) - A004396 n)

end

end A314108.P2923791976451164392

namespace A314108

/-- `A313717(n)+n-A004396(n)` -/
def P2923791976451164392.Spec : Prop :=
  ∀ n, P2923791976451164392.a n = A314108 n

end A314108

/-! ## A314108.P6088530487978705001

`∑[A131735(n)]+A315683(n)-n`
-/

namespace A314108.P6088530487978705001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315683 n - (n : ℤ))

end

end A314108.P6088530487978705001

namespace A314108

/-- `∑[A131735(n)]+A315683(n)-n` -/
def P6088530487978705001.Spec : Prop :=
  ∀ n, P6088530487978705001.a n = A314108 n

end A314108

/-! ## A314108.P1361329559786164089

`A315683(n)-A004525(A004396(n))`
-/

namespace A314108.P1361329559786164089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - A004525 (A004396 n).toNat

end

end A314108.P1361329559786164089

namespace A314108

/-- `A315683(n)-A004525(A004396(n))` -/
def P1361329559786164089.Spec : Prop :=
  ∀ n, P1361329559786164089.a n = A314108 n

end A314108

/-! ## A314108.P14678985322811750842

`A128834(n-A004525(n))+A008706(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314108

/-- `A128834(n-A004525(n))+A008706(n)` -/
def P14678985322811750842.Spec : Prop :=
  ∀ n, P14678985322811750842.a n = A314108 n

theorem P14678985322811750842.correct : P14678985322811750842.Spec := by
  intro n
  simp only [A314108]

end A314108

/-! ## A314108.P15264245470533663204

`A313474(n)+n-A004525(A004396(n))`
-/

namespace A314108.P15264245470533663204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A314108.P15264245470533663204

namespace A314108

/-- `A313474(n)+n-A004525(A004396(n))` -/
def P15264245470533663204.Spec : Prop :=
  ∀ n, P15264245470533663204.a n = A314108 n

end A314108

/-! ## A314108.P14396396588314563330

`A008486(n)+A313717(n)-A008576(n)`
-/

namespace A314108.P14396396588314563330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313717 n - A008576 n)

end

end A314108.P14396396588314563330

namespace A314108

/-- `A008486(n)+A313717(n)-A008576(n)` -/
def P14396396588314563330.Spec : Prop :=
  ∀ n, P14396396588314563330.a n = A314108 n

end A314108

/-! ## A314108.P13308633118187164996

`A008458(n)+A008574(n)-A314903(n)`
-/

namespace A314108.P13308633118187164996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314903 n)

end

end A314108.P13308633118187164996

namespace A314108

/-- `A008458(n)+A008574(n)-A314903(n)` -/
def P13308633118187164996.Spec : Prop :=
  ∀ n, P13308633118187164996.a n = A314108 n

end A314108

/-! ## A314108.P17244564026569309626

`A004525(n)+A314089(n)-A004525(A004396(n))`
-/

namespace A314108.P17244564026569309626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314089 n - A004525 (A004396 n).toNat)

end

end A314108.P17244564026569309626

namespace A314108

/-- `A004525(n)+A314089(n)-A004525(A004396(n))` -/
def P17244564026569309626.Spec : Prop :=
  ∀ n, P17244564026569309626.a n = A314108 n

end A314108

/-! ## A314108.P13685948599575327004

`A004525(n)+A314091(n)-A004396(A004525(n))`
-/

namespace A314108.P13685948599575327004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314091 n - A004396 (A004525 n).toNat)

end

end A314108.P13685948599575327004

namespace A314108

/-- `A004525(n)+A314091(n)-A004396(A004525(n))` -/
def P13685948599575327004.Spec : Prop :=
  ∀ n, P13685948599575327004.a n = A314108 n

end A314108

/-! ## A314108.P8835172352887105383

`A315760(n)-A004396(n)`
-/

namespace A314108.P8835172352887105383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - A004396 n

end

end A314108.P8835172352887105383

namespace A314108

/-- `A315760(n)-A004396(n)` -/
def P8835172352887105383.Spec : Prop :=
  ∀ n, P8835172352887105383.a n = A314108 n

end A314108

/-! ## A314108.P9861752132253129846

`A074067(A314903(n))`
-/

namespace A314108.P9861752132253129846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314903 n).toNat

end

end A314108.P9861752132253129846

namespace A314108

/-- `A074067(A314903(n))` -/
def P9861752132253129846.Spec : Prop :=
  ∀ n, P9861752132253129846.a n = A314108 n

end A314108

/-! ## A314108.P11334480532859031357

`A163810(A008587(n)+A004525(n))+A008587(n)`
-/

namespace A314108.P11334480532859031357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A008587 n + A004525 n).toNat + A008587 n

end

end A314108.P11334480532859031357

namespace A314108

/-- `A163810(A008587(n)+A004525(n))+A008587(n)` -/
def P11334480532859031357.Spec : Prop :=
  ∀ n, P11334480532859031357.a n = A314108 n

end A314108

/-! ## A314108.P12408999810496448147

`A004396(A314201(n)+n)+n`
-/

namespace A314108.P12408999810496448147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314201 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314108.P12408999810496448147

namespace A314108

/-- `A004396(A314201(n)+n)+n` -/
def P12408999810496448147.Spec : Prop :=
  ∀ n, P12408999810496448147.a n = A314108 n

end A314108

/-!
# A314109: Coordination sequence Gal.6.204.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314109, the canonical program `A314109.P12936673462288876890` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314109 has offset 0).

The definition of A314109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314109.P16420250305940530333

`abs(A008592(n)-A314902(n))`
-/

namespace A314109.P16420250305940530333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314902 n|

end

end A314109.P16420250305940530333

namespace A314109

/-- `abs(A008592(n)-A314902(n))` -/
def P16420250305940530333.Spec : Prop :=
  ∀ n, P16420250305940530333.a n = A314109 n

end A314109

/-! ## A314109.P3529048801028065314

`2*A008706(n)-A314902(n)`
-/

namespace A314109.P3529048801028065314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314902 n

end

end A314109.P3529048801028065314

namespace A314109

/-- `2*A008706(n)-A314902(n)` -/
def P3529048801028065314.Spec : Prop :=
  ∀ n, P3529048801028065314.a n = A314109 n

end A314109

/-! ## A314109.P16891394388075941149

`A135042(2*n+1)-A314902(n)`
-/

namespace A314109.P16891394388075941149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A314902 n

end

end A314109.P16891394388075941149

namespace A314109

/-- `A135042(2*n+1)-A314902(n)` -/
def P16891394388075941149.Spec : Prop :=
  ∀ n, P16891394388075941149.a n = A314109 n

end A314109

/-! ## A314109.P1904015811995685499

`A008458(n)+A008574(n)-A314902(n)`
-/

namespace A314109.P1904015811995685499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314902 n)

end

end A314109.P1904015811995685499

namespace A314109

/-- `A008458(n)+A008574(n)-A314902(n)` -/
def P1904015811995685499.Spec : Prop :=
  ∀ n, P1904015811995685499.a n = A314109 n

end A314109

/-! ## A314109.P7681295059309573828

`A314902(n)+A005843(A008706(n)-A314902(n))`
-/

namespace A314109.P7681295059309573828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314902 n + A005843 (A008706 n - A314902 n).toNat

end

end A314109.P7681295059309573828

namespace A314109

/-- `A314902(n)+A005843(A008706(n)-A314902(n))` -/
def P7681295059309573828.Spec : Prop :=
  ∀ n, P7681295059309573828.a n = A314109 n

end A314109

/-! ## A314109.P12509678208384331891

`A005843(A008706(n))-A314902(n)`
-/

namespace A314109.P12509678208384331891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314902 n

end

end A314109.P12509678208384331891

namespace A314109

/-- `A005843(A008706(n))-A314902(n)` -/
def P12509678208384331891.Spec : Prop :=
  ∀ n, P12509678208384331891.a n = A314109 n

end A314109

/-! ## A314109.P12936673462288876890

`A004396(A315746(n)+2*n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A314109

/-- `A004396(A315746(n)+2*n)` -/
def P12936673462288876890.Spec : Prop :=
  ∀ n, P12936673462288876890.a n = A314109 n

theorem P12936673462288876890.correct : P12936673462288876890.Spec := by
  intro n
  simp only [A314109]

end A314109

/-! ## A314109.P9665962986839137566

`A004396(A315759(n)+2*n)`
-/

namespace A314109.P9665962986839137566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315759 n + (2 * n : ℤ)).toNat

end

end A314109.P9665962986839137566

namespace A314109

/-- `A004396(A315759(n)+2*n)` -/
def P9665962986839137566.Spec : Prop :=
  ∀ n, P9665962986839137566.a n = A314109 n

end A314109

/-! ## A314109.P12589170990310957961

`A004396(A315746(n)+n+n)`
-/

namespace A314109.P12589170990310957961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315746 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314109.P12589170990310957961

namespace A314109

/-- `A004396(A315746(n)+n+n)` -/
def P12589170990310957961.Spec : Prop :=
  ∀ n, P12589170990310957961.a n = A314109 n

theorem P12589170990310957961.correct : P12589170990310957961.Spec := by
  intro n
  simp only [A314109, Nat.add_sub_cancel, A314109.P12589170990310957961.a, A314109.P12936673462288876890.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A314109

/-! ## A314109.P13720110657065824186

`A004396(A315759(n)+n+n)`
-/

namespace A314109.P13720110657065824186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315759 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314109.P13720110657065824186

namespace A314109

/-- `A004396(A315759(n)+n+n)` -/
def P13720110657065824186.Spec : Prop :=
  ∀ n, P13720110657065824186.a n = A314109 n

end A314109

/-!
# A314110: Coordination sequence Gal.6.200.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314110, the canonical program `A314110.P11829887775557874322` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314110 has offset 0).

The definition of A314110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314110.P11829887775557874322

`A312890(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314110

/-- `A312890(n)+n` -/
def P11829887775557874322.Spec : Prop :=
  ∀ n, P11829887775557874322.a n = A314110 n

theorem P11829887775557874322.correct : P11829887775557874322.Spec := by
  intro n
  simp only [A314110]

end A314110

/-! ## A314110.P3596024827984832574

`A310373(n)+A004396(n)`
-/

namespace A314110.P3596024827984832574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310373 n + A004396 n

end

end A314110.P3596024827984832574

namespace A314110

/-- `A310373(n)+A004396(n)` -/
def P3596024827984832574.Spec : Prop :=
  ∀ n, P3596024827984832574.a n = A314110 n

end A314110

/-! ## A314110.P4767075600475304947

`abs(A008592(n)-A314899(n))`
-/

namespace A314110.P4767075600475304947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314899 n|

end

end A314110.P4767075600475304947

namespace A314110

/-- `abs(A008592(n)-A314899(n))` -/
def P4767075600475304947.Spec : Prop :=
  ∀ n, P4767075600475304947.a n = A314110 n

end A314110

/-! ## A314110.P11914633111670916345

`A313720(n)+A002264(n+1)`
-/

namespace A314110.P11914633111670916345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + A002264 (n + 1)

end

end A314110.P11914633111670916345

namespace A314110

/-- `A313720(n)+A002264(n+1)` -/
def P11914633111670916345.Spec : Prop :=
  ∀ n, P11914633111670916345.a n = A314110 n

end A314110

/-! ## A314110.P15640776456903835306

`A313556(n)+n-A004525(n)`
-/

namespace A314110.P15640776456903835306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + ((n : ℤ) - A004525 n)

end

end A314110.P15640776456903835306

namespace A314110

/-- `A313556(n)+n-A004525(n)` -/
def P15640776456903835306.Spec : Prop :=
  ∀ n, P15640776456903835306.a n = A314110 n

end A314110

/-! ## A314110.P13885490645914143622

`A313720(n)+n-A004396(n)`
-/

namespace A314110.P13885490645914143622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + ((n : ℤ) - A004396 n)

end

end A314110.P13885490645914143622

namespace A314110

/-- `A313720(n)+n-A004396(n)` -/
def P13885490645914143622.Spec : Prop :=
  ∀ n, P13885490645914143622.a n = A314110 n

end A314110

/-! ## A314110.P13526702352124401496

`A310373(n)+A002264(2*n+1)`
-/

namespace A314110.P13526702352124401496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310373 n + A002264 (2 * n + 1)

end

end A314110.P13526702352124401496

namespace A314110

/-- `A310373(n)+A002264(2*n+1)` -/
def P13526702352124401496.Spec : Prop :=
  ∀ n, P13526702352124401496.a n = A314110 n

end A314110

/-! ## A314110.P2520758452944050333

`A315687(n)-A047424(n+1)+n`
-/

namespace A314110.P2520758452944050333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - A047424 (n + 1) + (n : ℤ)

end

end A314110.P2520758452944050333

namespace A314110

/-- `A315687(n)-A047424(n+1)+n` -/
def P2520758452944050333.Spec : Prop :=
  ∀ n, P2520758452944050333.a n = A314110 n

end A314110

/-! ## A314110.P13711102438915864144

`A310452(n)+A004396(A004525(n))`
-/

namespace A314110.P13711102438915864144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310452 n + A004396 (A004525 n).toNat

end

end A314110.P13711102438915864144

namespace A314110

/-- `A310452(n)+A004396(A004525(n))` -/
def P13711102438915864144.Spec : Prop :=
  ∀ n, P13711102438915864144.a n = A314110 n

end A314110

/-! ## A314110.P14980734844782892922

`A313474(n)+∑[A021913(A313474(n))]`
-/

namespace A314110.P14980734844782892922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314110.P14980734844782892922

namespace A314110

/-- `A313474(n)+∑[A021913(A313474(n))]` -/
def P14980734844782892922.Spec : Prop :=
  ∀ n, P14980734844782892922.a n = A314110 n

end A314110

/-! ## A314110.P5799231185806290631

`A313485(n)+n-A004525(A004396(n))`
-/

namespace A314110.P5799231185806290631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A314110.P5799231185806290631

namespace A314110

/-- `A313485(n)+n-A004525(A004396(n))` -/
def P5799231185806290631.Spec : Prop :=
  ∀ n, P5799231185806290631.a n = A314110 n

end A314110

/-! ## A314110.P5329055183238529185

`A008486(n)+A313720(n)-A008576(n)`
-/

namespace A314110.P5329055183238529185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313720 n - A008576 n)

end

end A314110.P5329055183238529185

namespace A314110

/-- `A008486(n)+A313720(n)-A008576(n)` -/
def P5329055183238529185.Spec : Prop :=
  ∀ n, P5329055183238529185.a n = A314110 n

end A314110

/-! ## A314110.P16845575603712416592

`A008458(n)+A008574(n)-A314899(n)`
-/

namespace A314110.P16845575603712416592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314899 n)

end

end A314110.P16845575603712416592

namespace A314110

/-- `A008458(n)+A008574(n)-A314899(n)` -/
def P16845575603712416592.Spec : Prop :=
  ∀ n, P16845575603712416592.a n = A314110 n

end A314110

/-! ## A314110.P3340637684239715952

`A314144(n)-comp[A113804(n+1)]+n`
-/

namespace A314110.P3340637684239715952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (n : ℤ)

end

end A314110.P3340637684239715952

namespace A314110

/-- `A314144(n)-comp[A113804(n+1)]+n` -/
def P3340637684239715952.Spec : Prop :=
  ∀ n, P3340637684239715952.a n = A314110 n

end A314110

/-! ## A314110.P16494149899456223889

`A315703(n)-A004525(n)`
-/

namespace A314110.P16494149899456223889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A004525 n

end

end A314110.P16494149899456223889

namespace A314110

/-- `A315703(n)-A004525(n)` -/
def P16494149899456223889.Spec : Prop :=
  ∀ n, P16494149899456223889.a n = A314110 n

end A314110

/-! ## A314110.P1957632191834985061

`A315703(n)-A047229(n+1)+n`
-/

namespace A314110.P1957632191834985061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A047229 (n + 1) + (n : ℤ)

end

end A314110.P1957632191834985061

namespace A314110

/-- `A315703(n)-A047229(n+1)+n` -/
def P1957632191834985061.Spec : Prop :=
  ∀ n, P1957632191834985061.a n = A314110 n

end A314110

/-! ## A314110.P6052421026899366753

`A314236(n)-A047513(n+1)+n`
-/

namespace A314110.P6052421026899366753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n - A047513 (n + 1) + (n : ℤ)

end

end A314110.P6052421026899366753

namespace A314110

/-- `A314236(n)-A047513(n+1)+n` -/
def P6052421026899366753.Spec : Prop :=
  ∀ n, P6052421026899366753.a n = A314110 n

end A314110

/-! ## A314110.P18401804541806300471

`A315763(n)-A004396(n)`
-/

namespace A314110.P18401804541806300471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A004396 n

end

end A314110.P18401804541806300471

namespace A314110

/-- `A315763(n)-A004396(n)` -/
def P18401804541806300471.Spec : Prop :=
  ∀ n, P18401804541806300471.a n = A314110 n

end A314110

/-! ## A314110.P12125140129067634441

`A315763(n)-A002264(2*n+1)`
-/

namespace A314110.P12125140129067634441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A002264 (2 * n + 1)

end

end A314110.P12125140129067634441

namespace A314110

/-- `A315763(n)-A002264(2*n+1)` -/
def P12125140129067634441.Spec : Prop :=
  ∀ n, P12125140129067634441.a n = A314110 n

end A314110

/-! ## A314110.P14464593409626882319

`A315763(n)-A047222(n+1)+n`
-/

namespace A314110.P14464593409626882319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A047222 (n + 1) + (n : ℤ)

end

end A314110.P14464593409626882319

namespace A314110

/-- `A315763(n)-A047222(n+1)+n` -/
def P14464593409626882319.Spec : Prop :=
  ∀ n, P14464593409626882319.a n = A314110 n

end A314110

/-!
# A314111: Coordination sequence Gal.5.289.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314111, the canonical program `A314111.P2022816928026981768` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314111 has offset 0).

The definition of A314111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314111.P2022816928026981768

`A312892(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314111

/-- `A312892(n)+n` -/
def P2022816928026981768.Spec : Prop :=
  ∀ n, P2022816928026981768.a n = A314111 n

theorem P2022816928026981768.correct : P2022816928026981768.Spec := by
  intro n
  simp only [A314111]

end A314111

/-! ## A314111.P12355742773302823590

`A004277(2*n)+comp[or(2, 6*n+2)]`
-/

namespace A314111.P12355742773302823590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (6 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A314111.P12355742773302823590

namespace A314111

/-- `A004277(2*n)+comp[or(2, 6*n+2)]` -/
def P12355742773302823590.Spec : Prop :=
  ∀ n, P12355742773302823590.a n = A314111 n

end A314111

/-! ## A314111.P4722160102972566416

`A315679(n)-A330025(n)`
-/

namespace A314111.P4722160102972566416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - A330025 n

end

end A314111.P4722160102972566416

namespace A314111

/-- `A315679(n)-A330025(n)` -/
def P4722160102972566416.Spec : Prop :=
  ∀ n, P4722160102972566416.a n = A314111 n

end A314111

/-! ## A314111.P3572140958902227574

`A313692(n)+A057354(n+1)`
-/

namespace A314111.P3572140958902227574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n + A057354 (n + 1)

end

end A314111.P3572140958902227574

namespace A314111

/-- `A313692(n)+A057354(n+1)` -/
def P3572140958902227574.Spec : Prop :=
  ∀ n, P3572140958902227574.a n = A314111 n

end A314111

/-! ## A314111.P11341097191253209252

`(A310368(n)+A008458(n))/2`
-/

namespace A314111.P11341097191253209252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310368 n + A008458 n : ℚ) / 2

end

end A314111.P11341097191253209252

namespace A314111

/-- `(A310368(n)+A008458(n))/2` -/
def P11341097191253209252.Spec : Prop :=
  ∀ n, P11341097191253209252.a n = (A314111 n : ℚ)

end A314111

/-! ## A314111.P4404179725300676255

`A301726(n)+n-A151988(n)`
-/

namespace A314111.P4404179725300676255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + ((n : ℤ) - A151988 n)

end

end A314111.P4404179725300676255

namespace A314111

/-- `A301726(n)+n-A151988(n)` -/
def P4404179725300676255.Spec : Prop :=
  ∀ n, P4404179725300676255.a n = A314111 n

end A314111

/-! ## A314111.P11478403408216002065

`A005843(n)-(n-A312892(n))`
-/

namespace A314111.P11478403408216002065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312892 n)

end

end A314111.P11478403408216002065

namespace A314111

/-- `A005843(n)-(n-A312892(n))` -/
def P11478403408216002065.Spec : Prop :=
  ∀ n, P11478403408216002065.a n = A314111 n

end A314111

/-! ## A314111.P15605335375487183241

`A047263(n+1)+A314027(n)-n`
-/

namespace A314111.P15605335375487183241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A314027 n - (n : ℤ))

end

end A314111.P15605335375487183241

namespace A314111

/-- `A047263(n+1)+A314027(n)-n` -/
def P15605335375487183241.Spec : Prop :=
  ∀ n, P15605335375487183241.a n = A314111 n

end A314111

/-! ## A314111.P9843656866468199206

`A315691(n)-A047363(n+1)+n`
-/

namespace A314111.P9843656866468199206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n - A047363 (n + 1) + (n : ℤ)

end

end A314111.P9843656866468199206

namespace A314111

/-- `A315691(n)-A047363(n+1)+n` -/
def P9843656866468199206.Spec : Prop :=
  ∀ n, P9843656866468199206.a n = A314111 n

end A314111

/-! ## A314111.P9477547169194019283

`A008574(n)+comp[2*A007310(n+1)]`
-/

namespace A314111.P9477547169194019283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007310 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314111.P9477547169194019283

namespace A314111

/-- `A008574(n)+comp[2*A007310(n+1)]` -/
def P9477547169194019283.Spec : Prop :=
  ∀ n, P9477547169194019283.a n = A314111 n

end A314111

/-! ## A314111.P12466567324035401136

`A008458(n)-A004396(A151988(n))`
-/

namespace A314111.P12466567324035401136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (A151988 n).toNat

end

end A314111.P12466567324035401136

namespace A314111

/-- `A008458(n)-A004396(A151988(n))` -/
def P12466567324035401136.Spec : Prop :=
  ∀ n, P12466567324035401136.a n = A314111 n

end A314111

/-! ## A314111.P14965065960991636291

`A008486(2*n)-A004396(A151988(n))`
-/

namespace A314111.P14965065960991636291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004396 (A151988 n).toNat

end

end A314111.P14965065960991636291

namespace A314111

/-- `A008486(2*n)-A004396(A151988(n))` -/
def P14965065960991636291.Spec : Prop :=
  ∀ n, P14965065960991636291.a n = A314111 n

end A314111

/-! ## A314111.P9169951327163426155

`A008706(n)+n-A004396(A151988(n))`
-/

namespace A314111.P9169951327163426155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n : ℤ) - A004396 (A151988 n).toNat)

end

end A314111.P9169951327163426155

namespace A314111

/-- `A008706(n)+n-A004396(A151988(n))` -/
def P9169951327163426155.Spec : Prop :=
  ∀ n, P9169951327163426155.a n = A314111 n

end A314111

/-! ## A314111.P14180489113277437736

`A008458(n)+A008574(n)-A314898(n)`
-/

namespace A314111.P14180489113277437736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314898 n)

end

end A314111.P14180489113277437736

namespace A314111

/-- `A008458(n)+A008574(n)-A314898(n)` -/
def P14180489113277437736.Spec : Prop :=
  ∀ n, P14180489113277437736.a n = A314111 n

end A314111

/-! ## A314111.P8981227904462987996

`A315672(n)-A330025(A330025(n)+n)`
-/

namespace A314111.P8981227904462987996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315672 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A314111.P8981227904462987996

namespace A314111

/-- `A315672(n)-A330025(A330025(n)+n)` -/
def P8981227904462987996.Spec : Prop :=
  ∀ n, P8981227904462987996.a n = A314111 n

end A314111

/-! ## A314111.P1135198683298643551

`A313154(n)+A253262(n)`
-/

namespace A314111.P1135198683298643551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + A253262 n

end

end A314111.P1135198683298643551

namespace A314111

/-- `A313154(n)+A253262(n)` -/
def P1135198683298643551.Spec : Prop :=
  ∀ n, P1135198683298643551.a n = A314111 n

end A314111

/-! ## A314111.P3375101609957170004

`A330025(n)+A310464(n)`
-/

namespace A314111.P3375101609957170004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A310464 n

end

end A314111.P3375101609957170004

namespace A314111

/-- `A330025(n)+A310464(n)` -/
def P3375101609957170004.Spec : Prop :=
  ∀ n, P3375101609957170004.a n = A314111 n

end A314111

/-! ## A314111.P14761865238637661687

`A314209(n)-A047263(n+1)+n`
-/

namespace A314111.P14761865238637661687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314209 n - A047263 (n + 1) + (n : ℤ)

end

end A314111.P14761865238637661687

namespace A314111

/-- `A314209(n)-A047263(n+1)+n` -/
def P14761865238637661687.Spec : Prop :=
  ∀ n, P14761865238637661687.a n = A314111 n

end A314111

/-! ## A314111.P12726476368317224154

`A315749(n)-A047448(n+1)+n`
-/

namespace A314111.P12726476368317224154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n - A047448 (n + 1) + (n : ℤ)

end

end A314111.P12726476368317224154

namespace A314111

/-- `A315749(n)-A047448(n+1)+n` -/
def P12726476368317224154.Spec : Prop :=
  ∀ n, P12726476368317224154.a n = A314111 n

end A314111

/-! ## A314111.P9959059750458064131

`A004396(A310439(n))+2*n`
-/

namespace A314111.P9959059750458064131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310439 n).toNat + (2 * n : ℤ)

end

end A314111.P9959059750458064131

namespace A314111

/-- `A004396(A310439(n))+2*n` -/
def P9959059750458064131.Spec : Prop :=
  ∀ n, P9959059750458064131.a n = A314111 n

end A314111

/-!
# A314112: Coordination sequence Gal.4.134.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314112, the canonical program `A314112.P8835196921211282987` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314112 has offset 0).

The definition of A314112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314112.P8835196921211282987

`A312894(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314112

/-- `A312894(n)+n` -/
def P8835196921211282987.Spec : Prop :=
  ∀ n, P8835196921211282987.a n = A314112 n

theorem P8835196921211282987.correct : P8835196921211282987.Spec := by
  intro n
  simp only [A314112]

end A314112

/-! ## A314112.P4974881701141084663

`A313561(n)+∑[A021913(n)]`
-/

namespace A314112.P4974881701141084663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314112.P4974881701141084663

namespace A314112

/-- `A313561(n)+∑[A021913(n)]` -/
def P4974881701141084663.Spec : Prop :=
  ∀ n, P4974881701141084663.a n = A314112 n

end A314112

/-! ## A314112.P2067107103630883698

`(A310370(n)+A008458(n))/2`
-/

namespace A314112.P2067107103630883698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310370 n + A008458 n : ℚ) / 2

end

end A314112.P2067107103630883698

namespace A314112

/-- `(A310370(n)+A008458(n))/2` -/
def P2067107103630883698.Spec : Prop :=
  ∀ n, P2067107103630883698.a n = (A314112 n : ℚ)

end A314112

/-! ## A314112.P3364957286729802570

`A313561(n)+n-A004525(n)`
-/

namespace A314112.P3364957286729802570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + ((n : ℤ) - A004525 n)

end

end A314112.P3364957286729802570

namespace A314112

/-- `A313561(n)+n-A004525(n)` -/
def P3364957286729802570.Spec : Prop :=
  ∀ n, P3364957286729802570.a n = A314112 n

end A314112

/-! ## A314112.P17507132810438787559

`A301293(n)+n-Δ[A011861(n)]`
-/

namespace A314112.P17507132810438787559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314112.P17507132810438787559

namespace A314112

/-- `A301293(n)+n-Δ[A011861(n)]` -/
def P17507132810438787559.Spec : Prop :=
  ∀ n, P17507132810438787559.a n = A314112 n

end A314112

/-! ## A314112.P15381021030618266068

`A310458(n)+A004525(A004525(n))`
-/

namespace A314112.P15381021030618266068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + A004525 (A004525 n).toNat

end

end A314112.P15381021030618266068

namespace A314112

/-- `A310458(n)+A004525(A004525(n))` -/
def P15381021030618266068.Spec : Prop :=
  ∀ n, P15381021030618266068.a n = A314112 n

end A314112

/-! ## A314112.P13129535587895190449

`A315685(n)-A004525(A004525(n))`
-/

namespace A314112.P13129535587895190449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - A004525 (A004525 n).toNat

end

end A314112.P13129535587895190449

namespace A314112

/-- `A315685(n)-A004525(A004525(n))` -/
def P13129535587895190449.Spec : Prop :=
  ∀ n, P13129535587895190449.a n = A314112 n

end A314112

/-! ## A314112.P11613727754491864232

`A310370(n)+A004525(A004525(n)+n)`
-/

namespace A314112.P11613727754491864232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A314112.P11613727754491864232

namespace A314112

/-- `A310370(n)+A004525(A004525(n)+n)` -/
def P11613727754491864232.Spec : Prop :=
  ∀ n, P11613727754491864232.a n = A314112 n

end A314112

/-! ## A314112.P17578828216846900800

`A008458(n)-A004525(A004525(n)+n)`
-/

namespace A314112.P17578828216846900800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A314112.P17578828216846900800

namespace A314112

/-- `A008458(n)-A004525(A004525(n)+n)` -/
def P17578828216846900800.Spec : Prop :=
  ∀ n, P17578828216846900800.a n = A314112 n

end A314112

/-! ## A314112.P17315018422249609202

`A008706(n)+A004525(n-A004525(n))`
-/

namespace A314112.P17315018422249609202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A314112.P17315018422249609202

namespace A314112

/-- `A008706(n)+A004525(n-A004525(n))` -/
def P17315018422249609202.Spec : Prop :=
  ∀ n, P17315018422249609202.a n = A314112 n

end A314112

/-! ## A314112.P17702679257040390571

`A313480(n)+n-A004525(A004525(n))`
-/

namespace A314112.P17702679257040390571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A314112.P17702679257040390571

namespace A314112

/-- `A313480(n)+n-A004525(A004525(n))` -/
def P17702679257040390571.Spec : Prop :=
  ∀ n, P17702679257040390571.a n = A314112 n

end A314112

/-! ## A314112.P11376126509119190872

`A008458(n)+A008574(n)-A314896(n)`
-/

namespace A314112.P11376126509119190872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314896 n)

end

end A314112.P11376126509119190872

namespace A314112

/-- `A008458(n)+A008574(n)-A314896(n)` -/
def P11376126509119190872.Spec : Prop :=
  ∀ n, P11376126509119190872.a n = A314112 n

end A314112

/-! ## A314112.P775479528561716084

`A315671(n)-A046978(n)`
-/

namespace A314112.P775479528561716084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - A046978 n

end

end A314112.P775479528561716084

namespace A314112

/-- `A315671(n)-A046978(n)` -/
def P775479528561716084.Spec : Prop :=
  ∀ n, P775479528561716084.a n = A314112 n

end A314112

/-! ## A314112.P11465529272762497456

`(A314161(n)+A314090(n))/2`
-/

namespace A314112.P11465529272762497456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314161 n + A314090 n : ℚ) / 2

end

end A314112.P11465529272762497456

namespace A314112

/-- `(A314161(n)+A314090(n))/2` -/
def P11465529272762497456.Spec : Prop :=
  ∀ n, P11465529272762497456.a n = (A314112 n : ℚ)

end A314112

/-! ## A314112.P4105412110488317137

`A313480(n)+∑[A021913(A313480(n))]`
-/

namespace A314112.P4105412110488317137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314112.P4105412110488317137

namespace A314112

/-- `A313480(n)+∑[A021913(A313480(n))]` -/
def P4105412110488317137.Spec : Prop :=
  ∀ n, P4105412110488317137.a n = A314112 n

end A314112

/-! ## A314112.P3173634756782602221

`A315704(n)-A004525(n)`
-/

namespace A314112.P3173634756782602221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - A004525 n

end

end A314112.P3173634756782602221

namespace A314112

/-- `A315704(n)-A004525(n)` -/
def P3173634756782602221.Spec : Prop :=
  ∀ n, P3173634756782602221.a n = A314112 n

end A314112

/-! ## A314112.P18286612552901393484

`A315704(n)-A047229(n+1)+n`
-/

namespace A314112.P18286612552901393484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - A047229 (n + 1) + (n : ℤ)

end

end A314112.P18286612552901393484

namespace A314112

/-- `A315704(n)-A047229(n+1)+n` -/
def P18286612552901393484.Spec : Prop :=
  ∀ n, P18286612552901393484.a n = A314112 n

end A314112

/-! ## A314112.P7270934177192418641

`A004525(A301710(n)+n)+2*n`
-/

namespace A314112.P7270934177192418641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301710 n + (n : ℤ)).toNat + (2 * n : ℤ)

end

end A314112.P7270934177192418641

namespace A314112

/-- `A004525(A301710(n)+n)+2*n` -/
def P7270934177192418641.Spec : Prop :=
  ∀ n, P7270934177192418641.a n = A314112 n

end A314112

/-! ## A314112.P11187114135865303919

`A004525(A311501(2*n))+n`
-/

namespace A314112.P11187114135865303919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311501 (2 * n)).toNat + (n : ℤ)

end

end A314112.P11187114135865303919

namespace A314112

/-- `A004525(A311501(2*n))+n` -/
def P11187114135865303919.Spec : Prop :=
  ∀ n, P11187114135865303919.a n = A314112 n

end A314112

/-! ## A314112.P10835979870552437829

`A004525(A311843(2*n))+n`
-/

namespace A314112.P10835979870552437829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311843 (2 * n)).toNat + (n : ℤ)

end

end A314112.P10835979870552437829

namespace A314112

/-- `A004525(A311843(2*n))+n` -/
def P10835979870552437829.Spec : Prop :=
  ∀ n, P10835979870552437829.a n = A314112 n

end A314112

/-!
# A314113: Coordination sequence Gal.6.369.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314113, there is no canonical definition to state claims against.
-/

/-! ## A314113.P11948525729090243704

`A102677(∏[n%2+2]/2)+A008706(n)`
-/

namespace A314113.P11948525729090243704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)).toNat + A008706 n

end

end A314113.P11948525729090243704

/-! ## A314113.P2229846885078278266

`A102677(∏[4-gcd(2, n)]/2)+A008706(n)`
-/

namespace A314113.P2229846885078278266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)).toNat + A008706 n

end

end A314113.P2229846885078278266

/-! ## A314113.P10976594314939679550

`A102677(∏[and(1, n)+2]/2)+A008706(n)`
-/

namespace A314113.P10976594314939679550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)).toNat + A008706 n

end

end A314113.P10976594314939679550

/-! ## A314113.P14745774231552645432

`A314209(n)-A268310(A035313(n))`
-/

namespace A314113.P14745774231552645432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314209 n - A268310 (A035313 n).toNat

end

end A314113.P14745774231552645432

/-! ## A314113.P6896876817197661251

`A314112(n)+A008683(A135290(n+1))`
-/

namespace A314113.P6896876817197661251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314112 n + A008683 (A135290 (n + 1)).toNat

end

end A314113.P6896876817197661251

/-!
# A314114: Coordination sequence Gal.6.648.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314114, there is no canonical definition to state claims against.
-/

/-! ## A314114.P4904592139681322092

`A008574(n)+record[n-A005872(n+1)]`
-/

namespace A314114.P4904592139681322092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314114.P4904592139681322092

/-! ## A314114.P1275712054533600495

`A004277(2*n)+record[n-A005872(n+1)]`
-/

namespace A314114.P1275712054533600495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314114.P1275712054533600495

/-! ## A314114.P3911446362086401975

`A028310(4*n)+record[n-A005872(n+1)]`
-/

namespace A314114.P3911446362086401975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (4 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314114.P3911446362086401975

/-! ## A314114.P10144743735167716964

`record[A022998(n+1)]+record[n-A005872(n+1)]`
-/

namespace A314114.P10144743735167716964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A314114.P10144743735167716964

/-! ## A314114.P13884213567656163768

`A068962(A313914(n)+A022144(n))`
-/

namespace A314114.P13884213567656163768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313914 n + A022144 n).toNat

end

end A314114.P13884213567656163768

/-!
# A314115: Coordination sequence Gal.6.647.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314115, the canonical program `A314115.P2870737139798386552` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314115 has offset 0).

The definition of A314115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314115.P2870737139798386552

`A313878(n)+A046978(A201629(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A314115

/-- `A313878(n)+A046978(A201629(n))` -/
def P2870737139798386552.Spec : Prop :=
  ∀ n, P2870737139798386552.a n = A314115 n

theorem P2870737139798386552.correct : P2870737139798386552.Spec := by
  intro n
  simp only [A314115]

end A314115

/-! ## A314115.P4990495579694234363

`A313878(n)+A046978(A237420(n))`
-/

namespace A314115.P4990495579694234363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313878 n + A046978 (A237420 n).toNat

end

end A314115.P4990495579694234363

namespace A314115

/-- `A313878(n)+A046978(A237420(n))` -/
def P4990495579694234363.Spec : Prop :=
  ∀ n, P4990495579694234363.a n = A314115 n

end A314115

/-! ## A314115.P17519813245831537083

`A314116(n)+A314118(n)-A314120(n)`
-/

namespace A314115.P17519813245831537083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314116 n + (A314118 n - A314120 n)

end

end A314115.P17519813245831537083

namespace A314115

/-- `A314116(n)+A314118(n)-A314120(n)` -/
def P17519813245831537083.Spec : Prop :=
  ∀ n, P17519813245831537083.a n = A314115 n

end A314115

/-! ## A314115.P6432435341699063468

`A301718(n)+A313752(n)-A313926(n)`
-/

namespace A314115.P6432435341699063468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A313752 n - A313926 n)

end

end A314115.P6432435341699063468

namespace A314115

/-- `A301718(n)+A313752(n)-A313926(n)` -/
def P6432435341699063468.Spec : Prop :=
  ∀ n, P6432435341699063468.a n = A314115 n

end A314115

/-! ## A314115.P10966476742109024579

`A004525(A008458(n)+A313491(n)-A185284(3*n+1))`
-/

namespace A314115.P10966476742109024579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008458 n + (A313491 n - A185284 (3 * n + 1))).toNat

end

end A314115.P10966476742109024579

namespace A314115

/-- `A004525(A008458(n)+A313491(n)-A185284(3*n+1))` -/
def P10966476742109024579.Spec : Prop :=
  ∀ n, P10966476742109024579.a n = A314115 n

end A314115

/-!
# A314116: Coordination sequence Gal.6.652.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314116, the canonical program `A314116.P3477874341695128704` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314116 has offset 0).

The definition of A314116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314116.P3477874341695128704

`2*A314112(n)-A314111(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314116

/-- `2*A314112(n)-A314111(n)` -/
def P3477874341695128704.Spec : Prop :=
  ∀ n, P3477874341695128704.a n = A314116 n

theorem P3477874341695128704.correct : P3477874341695128704.Spec := by
  intro n
  simp only [A314116]

end A314116

/-! ## A314116.P1412477708077396306

`A314115(n)+A314120(n)-A314118(n)`
-/

namespace A314116.P1412477708077396306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314115 n + (A314120 n - A314118 n)

end

end A314116.P1412477708077396306

namespace A314116

/-- `A314115(n)+A314120(n)-A314118(n)` -/
def P1412477708077396306.Spec : Prop :=
  ∀ n, P1412477708077396306.a n = A314116 n

end A314116

/-! ## A314116.P10338979583347737698

`A314111(n)+A005843(A314112(n)-A314111(n))`
-/

namespace A314116.P10338979583347737698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n + A005843 (A314112 n - A314111 n).toNat

end

end A314116.P10338979583347737698

namespace A314116

/-- `A314111(n)+A005843(A314112(n)-A314111(n))` -/
def P10338979583347737698.Spec : Prop :=
  ∀ n, P10338979583347737698.a n = A314116 n

end A314116

/-! ## A314116.P11863886749130342898

`A314090(n)+A314161(n)-A314111(n)`
-/

namespace A314116.P11863886749130342898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n + (A314161 n - A314111 n)

end

end A314116.P11863886749130342898

namespace A314116

/-- `A314090(n)+A314161(n)-A314111(n)` -/
def P11863886749130342898.Spec : Prop :=
  ∀ n, P11863886749130342898.a n = A314116 n

end A314116

/-! ## A314116.P3818007238940394813

`A314090(n)+A314161(n)%(A314111(n)%A016791(n))`
-/

namespace A314116.P3818007238940394813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n + Int.tmod (A314161 n) (Int.tmod (A314111 n) (A016791 n))

end

end A314116.P3818007238940394813

namespace A314116

/-- `A314090(n)+A314161(n)%(A314111(n)%A016791(n))` -/
def P3818007238940394813.Spec : Prop :=
  ∀ n, P3818007238940394813.a n = A314116 n

end A314116

/-! ## A314116.P7556721881020787125

`A310370(n)-(A008574(n)-A315547(n)+n)`
-/

namespace A314116.P7556721881020787125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n - (A008574 n - A315547 n + (n : ℤ))

end

end A314116.P7556721881020787125

namespace A314116

/-- `A310370(n)-(A008574(n)-A315547(n)+n)` -/
def P7556721881020787125.Spec : Prop :=
  ∀ n, P7556721881020787125.a n = A314116 n

end A314116

/-! ## A314116.P654049987484483375

`A005843(A314112(n))-A314111(n)`
-/

namespace A314116.P654049987484483375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314112 n).toNat - A314111 n

end

end A314116.P654049987484483375

namespace A314116

/-- `A005843(A314112(n))-A314111(n)` -/
def P654049987484483375.Spec : Prop :=
  ∀ n, P654049987484483375.a n = A314116 n

end A314116

/-!
# A314117: Coordination sequence Gal.6.330.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314117, the canonical program `A314117.P6288149183709967192` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314117 has offset 0).

The definition of A314117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314117.P6123725609073778527

`abs(A008592(n)-A314894(n))`
-/

namespace A314117.P6123725609073778527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314894 n|

end

end A314117.P6123725609073778527

namespace A314117

/-- `abs(A008592(n)-A314894(n))` -/
def P6123725609073778527.Spec : Prop :=
  ∀ n, P6123725609073778527.a n = A314117 n

end A314117

/-! ## A314117.P6288149183709967192

`ceil(A158666(n)/A017401(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314117

/-- `ceil(A158666(n)/A017401(n))` -/
def P6288149183709967192.Spec : Prop :=
  ∀ n, P6288149183709967192.a n = A314117 n

theorem P6288149183709967192.correct : P6288149183709967192.Spec := by
  intro n
  simp only [A314117]

end A314117

/-! ## A314117.P6537937433226325030

`(A310371(n)+A008458(n))/2`
-/

namespace A314117.P6537937433226325030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310371 n + A008458 n : ℚ) / 2

end

end A314117.P6537937433226325030

namespace A314117

/-- `(A310371(n)+A008458(n))/2` -/
def P6537937433226325030.Spec : Prop :=
  ∀ n, P6537937433226325030.a n = (A314117 n : ℚ)

end A314117

/-! ## A314117.P9831244725343112388

`A008458(n)+A008574(n)-A314894(n)`
-/

namespace A314117.P9831244725343112388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314894 n)

end

end A314117.P9831244725343112388

namespace A314117

/-- `A008458(n)+A008574(n)-A314894(n)` -/
def P9831244725343112388.Spec : Prop :=
  ∀ n, P9831244725343112388.a n = A314117 n

end A314117

/-! ## A314117.P77722254360615052

`∑{d}[A008592(n)-A314894(n), A000010(#)]`
-/

namespace A314117.P77722254360615052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314117.P77722254360615052

namespace A314117

/-- `∑{d}[A008592(n)-A314894(n), A000010(#)]` -/
def P77722254360615052.Spec : Prop :=
  ∀ n, P77722254360615052.a n = A314117 n

end A314117

/-! ## A314117.P15058898325366638407

`A005843(n)+A005843(A008574(n))-A314894(n)`
-/

namespace A314117.P15058898325366638407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314894 n)

end

end A314117.P15058898325366638407

namespace A314117

/-- `A005843(n)+A005843(A008574(n))-A314894(n)` -/
def P15058898325366638407.Spec : Prop :=
  ∀ n, P15058898325366638407.a n = A314117 n

end A314117

/-! ## A314117.P7277019515239589438

`A310374(n)+A004525(A008458(n)-A310374(n))`
-/

namespace A314117.P7277019515239589438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310374 n + A004525 (A008458 n - A310374 n).toNat

end

end A314117.P7277019515239589438

namespace A314117

/-- `A310374(n)+A004525(A008458(n)-A310374(n))` -/
def P7277019515239589438.Spec : Prop :=
  ∀ n, P7277019515239589438.a n = A314117 n

end A314117

/-! ## A314117.P1754096706944923034

`A004396(A310442(n))+2*n`
-/

namespace A314117.P1754096706944923034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310442 n).toNat + (2 * n : ℤ)

end

end A314117.P1754096706944923034

namespace A314117

/-- `A004396(A310442(n))+2*n` -/
def P1754096706944923034.Spec : Prop :=
  ∀ n, P1754096706944923034.a n = A314117 n

end A314117

/-! ## A314117.P4633343381480979560

`A004396(A310455(n))+2*n`
-/

namespace A314117.P4633343381480979560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310455 n).toNat + (2 * n : ℤ)

end

end A314117.P4633343381480979560

namespace A314117

/-- `A004396(A310455(n))+2*n` -/
def P4633343381480979560.Spec : Prop :=
  ∀ n, P4633343381480979560.a n = A314117 n

end A314117

/-! ## A314117.P4868705891227747981

`A004396(A313696(n))+2*n`
-/

namespace A314117.P4868705891227747981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313696 n).toNat + (2 * n : ℤ)

end

end A314117.P4868705891227747981

namespace A314117

/-- `A004396(A313696(n))+2*n` -/
def P4868705891227747981.Spec : Prop :=
  ∀ n, P4868705891227747981.a n = A314117 n

end A314117

/-! ## A314117.P15763740397488941940

`A004396(A313722(n))+2*n`
-/

namespace A314117.P15763740397488941940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313722 n).toNat + (2 * n : ℤ)

end

end A314117.P15763740397488941940

namespace A314117

/-- `A004396(A313722(n))+2*n` -/
def P15763740397488941940.Spec : Prop :=
  ∀ n, P15763740397488941940.a n = A314117 n

end A314117

/-! ## A314117.P7092422385992017348

`A005843(n)+A004396(A310442(n))`
-/

namespace A314117.P7092422385992017348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A310442 n).toNat

end

end A314117.P7092422385992017348

namespace A314117

/-- `A005843(n)+A004396(A310442(n))` -/
def P7092422385992017348.Spec : Prop :=
  ∀ n, P7092422385992017348.a n = A314117 n

end A314117

/-! ## A314117.P1057527321224277649

`A005843(n)+A004396(A310455(n))`
-/

namespace A314117.P1057527321224277649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A310455 n).toNat

end

end A314117.P1057527321224277649

namespace A314117

/-- `A005843(n)+A004396(A310455(n))` -/
def P1057527321224277649.Spec : Prop :=
  ∀ n, P1057527321224277649.a n = A314117 n

end A314117

/-! ## A314117.P8409317672464645847

`A005843(A008574(n)+n)-A314894(n)`
-/

namespace A314117.P8409317672464645847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314894 n

end

end A314117.P8409317672464645847

namespace A314117

/-- `A005843(A008574(n)+n)-A314894(n)` -/
def P8409317672464645847.Spec : Prop :=
  ∀ n, P8409317672464645847.a n = A314117 n

end A314117

/-! ## A314117.P16470646532058684410

`lcm(2, A315329(2*n))/2`
-/

namespace A314117.P16470646532058684410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A315329 (2 * n)) : ℚ) / 2

end

end A314117.P16470646532058684410

namespace A314117

/-- `lcm(2, A315329(2*n))/2` -/
def P16470646532058684410.Spec : Prop :=
  ∀ n, P16470646532058684410.a n = (A314117 n : ℚ)

end A314117

/-! ## A314117.P6304167292849592530

`A315537(2*n)+n-7*n`
-/

namespace A314117.P6304167292849592530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315537 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A314117.P6304167292849592530

namespace A314117

/-- `A315537(2*n)+n-7*n` -/
def P6304167292849592530.Spec : Prop :=
  ∀ n, P6304167292849592530.a n = A314117 n

end A314117

/-! ## A314117.P16893804285984073615

`A004525(A315329(2*n))`
-/

namespace A314117.P16893804285984073615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315329 (2 * n)).toNat

end

end A314117.P16893804285984073615

namespace A314117

/-- `A004525(A315329(2*n))` -/
def P16893804285984073615.Spec : Prop :=
  ∀ n, P16893804285984073615.a n = A314117 n

end A314117

/-! ## A314117.P424565892235538221

`A004525(A315470(2*n))`
-/

namespace A314117.P424565892235538221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315470 (2 * n)).toNat

end

end A314117.P424565892235538221

namespace A314117

/-- `A004525(A315470(2*n))` -/
def P424565892235538221.Spec : Prop :=
  ∀ n, P424565892235538221.a n = A314117 n

end A314117

/-! ## A314117.P8724873076499179040

`A004396(A315334(2*n))-A005843(n)`
-/

namespace A314117.P8724873076499179040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315334 (2 * n)).toNat - A005843 n

end

end A314117.P8724873076499179040

namespace A314117

/-- `A004396(A315334(2*n))-A005843(n)` -/
def P8724873076499179040.Spec : Prop :=
  ∀ n, P8724873076499179040.a n = A314117 n

end A314117

/-! ## A314117.P17774800447019648522

`A004396(A315491(2*n))-A005843(n)`
-/

namespace A314117.P17774800447019648522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315491 (2 * n)).toNat - A005843 n

end

end A314117.P17774800447019648522

namespace A314117

/-- `A004396(A315491(2*n))-A005843(n)` -/
def P17774800447019648522.Spec : Prop :=
  ∀ n, P17774800447019648522.a n = A314117 n

end A314117

/-!
# A314118: Coordination sequence Gal.6.652.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314118, the canonical program `A314118.P650591932633737003` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314118 has offset 0).

The definition of A314118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314118.P1035014591115612133

`A008706(n)+A310398(n)-A312943(n)`
-/

namespace A314118.P1035014591115612133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A310398 n - A312943 n)

end

end A314118.P1035014591115612133

namespace A314118

/-- `A008706(n)+A310398(n)-A312943(n)` -/
def P1035014591115612133.Spec : Prop :=
  ∀ n, P1035014591115612133.a n = A314118 n

end A314118

/-! ## A314118.P650591932633737003

`A310398(n)+A314829(n)-A008574(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314118

/-- `A310398(n)+A314829(n)-A008574(n)` -/
def P650591932633737003.Spec : Prop :=
  ∀ n, P650591932633737003.a n = A314118 n

theorem P650591932633737003.correct : P650591932633737003.Spec := by
  intro n
  simp only [A314118]

end A314118

/-! ## A314118.P2327307798470250827

`A310398(n)+A314896(n)-A311501(n)`
-/

namespace A314118.P2327307798470250827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + (A314896 n - A311501 n)

end

end A314118.P2327307798470250827

namespace A314118

/-- `A310398(n)+A314896(n)-A311501(n)` -/
def P2327307798470250827.Spec : Prop :=
  ∀ n, P2327307798470250827.a n = A314118 n

end A314118

/-! ## A314118.P17998446303312193456

`A310398(n)+A314969(n)-A311625(n)`
-/

namespace A314118.P17998446303312193456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + (A314969 n - A311625 n)

end

end A314118.P17998446303312193456

namespace A314118

/-- `A310398(n)+A314969(n)-A311625(n)` -/
def P17998446303312193456.Spec : Prop :=
  ∀ n, P17998446303312193456.a n = A314118 n

end A314118

/-! ## A314118.P4267435368052455900

`A310398(n)+A313875(n)-A313115(n)`
-/

namespace A314118.P4267435368052455900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + (A313875 n - A313115 n)

end

end A314118.P4267435368052455900

namespace A314118

/-- `A310398(n)+A313875(n)-A313115(n)` -/
def P4267435368052455900.Spec : Prop :=
  ∀ n, P4267435368052455900.a n = A314118 n

end A314118

/-! ## A314118.P4087564091790531365

`A314115(n)+A314120(n)-A314116(n)`
-/

namespace A314118.P4087564091790531365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314115 n + (A314120 n - A314116 n)

end

end A314118.P4087564091790531365

namespace A314118

/-- `A314115(n)+A314120(n)-A314116(n)` -/
def P4087564091790531365.Spec : Prop :=
  ∀ n, P4087564091790531365.a n = A314118 n

end A314118

/-! ## A314118.P8957711188439299470

`A008458(n)+A310398(n)-A314161(n)`
-/

namespace A314118.P8957711188439299470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A310398 n - A314161 n)

end

end A314118.P8957711188439299470

namespace A314118

/-- `A008458(n)+A310398(n)-A314161(n)` -/
def P8957711188439299470.Spec : Prop :=
  ∀ n, P8957711188439299470.a n = A314118 n

end A314118

/-!
# A314119: Coordination sequence Gal.6.489.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314119, there is no canonical definition to state claims against.
-/

/-! ## A314119.P9601261610183796630

`A311186(n)+record[A186038(n)]`
-/

namespace A314119.P9601261610183796630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311186 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314119.P9601261610183796630

/-! ## A314119.P12143815128929809755

`A250120(n)+A126306(A024023(n))`
-/

namespace A314119.P12143815128929809755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A126306 (A024023 n).toNat

end

end A314119.P12143815128929809755

/-! ## A314119.P12990997601280349971

`A024899(3*n+2)+A010815(A002212(n))`
-/

namespace A314119.P12990997601280349971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (3 * n + 2) + A010815 (A002212 n).toNat

end

end A314119.P12990997601280349971

/-! ## A314119.P3689213776678167617

`A314118(n)+A080224(A101268(2*n+3))`
-/

namespace A314119.P3689213776678167617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314118 n + A080224 (A101268 (2 * n + 3)).toNat

end

end A314119.P3689213776678167617

/-!
# A314120: Coordination sequence Gal.3.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314120, the canonical program `A314120.P12703466800442840178` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314120 has offset 0).

The definition of A314120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314120.P12703466800442840178

`A315707(n)-A004525(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314120

/-- `A315707(n)-A004525(n)` -/
def P12703466800442840178.Spec : Prop :=
  ∀ n, P12703466800442840178.a n = A314120 n

theorem P12703466800442840178.correct : P12703466800442840178.Spec := by
  intro n
  simp only [A314120]

end A314120

/-! ## A314120.P12010612161895800128

`A313568(n)+∑[A021913(n)]`
-/

namespace A314120.P12010612161895800128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314120.P12010612161895800128

namespace A314120

/-- `A313568(n)+∑[A021913(n)]` -/
def P12010612161895800128.Spec : Prop :=
  ∀ n, P12010612161895800128.a n = A314120 n

end A314120

/-! ## A314120.P14813625844053801383

`A313568(n)+Δ[A011848(n)]`
-/

namespace A314120.P14813625844053801383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + (f1 (n + 1) - f1 n)

end

end A314120.P14813625844053801383

namespace A314120

/-- `A313568(n)+Δ[A011848(n)]` -/
def P14813625844053801383.Spec : Prop :=
  ∀ n, P14813625844053801383.a n = A314120 n

end A314120

/-! ## A314120.P13222739728720411680

`A315707(n)-Δ[A054925(n)]`
-/

namespace A314120.P13222739728720411680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - (f1 (n + 1) - f1 n)

end

end A314120.P13222739728720411680

namespace A314120

/-- `A315707(n)-Δ[A054925(n)]` -/
def P13222739728720411680.Spec : Prop :=
  ∀ n, P13222739728720411680.a n = A314120 n

end A314120

/-! ## A314120.P7025017479234491283

`A313568(n)+A004524(n+1)`
-/

namespace A314120.P7025017479234491283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A004524 (n + 1)

end

end A314120.P7025017479234491283

namespace A314120

/-- `A313568(n)+A004524(n+1)` -/
def P7025017479234491283.Spec : Prop :=
  ∀ n, P7025017479234491283.a n = A314120 n

end A314120

/-! ## A314120.P9522543692365646380

`A313568(n)+n-A004525(n)`
-/

namespace A314120.P9522543692365646380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + ((n : ℤ) - A004525 n)

end

end A314120.P9522543692365646380

namespace A314120

/-- `A313568(n)+n-A004525(n)` -/
def P9522543692365646380.Spec : Prop :=
  ∀ n, P9522543692365646380.a n = A314120 n

end A314120

/-! ## A314120.P2681906080329879771

`A301293(n)+A057354(2*n+1)`
-/

namespace A314120.P2681906080329879771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A057354 (2 * n + 1)

end

end A314120.P2681906080329879771

namespace A314120

/-- `A301293(n)+A057354(2*n+1)` -/
def P2681906080329879771.Spec : Prop :=
  ∀ n, P2681906080329879771.a n = A314120 n

end A314120

/-! ## A314120.P17169895578045125417

`round(A301710(n)-n/5)`
-/

namespace A314120.P17169895578045125417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301710 n : ℚ) - (n : ℚ) / 5)

end

end A314120.P17169895578045125417

namespace A314120

/-- `round(A301710(n)-n/5)` -/
def P17169895578045125417.Spec : Prop :=
  ∀ n, P17169895578045125417.a n = A314120 n

end A314120

/-! ## A314120.P17663903207964581943

`A301710(n)-A002266(n+2)`
-/

namespace A314120.P17663903207964581943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A002266 (n + 2)

end

end A314120.P17663903207964581943

namespace A314120

/-- `A301710(n)-A002266(n+2)` -/
def P17663903207964581943.Spec : Prop :=
  ∀ n, P17663903207964581943.a n = A314120 n

end A314120

/-! ## A314120.P18045737461977431256

`A301710(n)-A047263(n+1)+n`
-/

namespace A314120.P18045737461977431256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A047263 (n + 1) + (n : ℤ)

end

end A314120.P18045737461977431256

namespace A314120

/-- `A301710(n)-A047263(n+1)+n` -/
def P18045737461977431256.Spec : Prop :=
  ∀ n, P18045737461977431256.a n = A314120 n

end A314120

/-! ## A314120.P9282422890420424621

`A301710(n)-A008676(A016777(n))`
-/

namespace A314120.P9282422890420424621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A008676 (A016777 n).toNat

end

end A314120.P9282422890420424621

namespace A314120

/-- `A301710(n)-A008676(A016777(n))` -/
def P9282422890420424621.Spec : Prop :=
  ∀ n, P9282422890420424621.a n = A314120 n

end A314120

/-! ## A314120.P3760088828149823262

`A008590(n)+A001057(A315337(n))`
-/

namespace A314120.P3760088828149823262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + A001057 (A315337 n).toNat

end

end A314120.P3760088828149823262

namespace A314120

/-- `A008590(n)+A001057(A315337(n))` -/
def P3760088828149823262.Spec : Prop :=
  ∀ n, P3760088828149823262.a n = A314120 n

end A314120

/-! ## A314120.P12667861600113816208

`A022144(n)-A004526(A315337(n))`
-/

namespace A314120.P12667861600113816208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A004526 (A315337 n).toNat

end

end A314120.P12667861600113816208

namespace A314120

/-- `A022144(n)-A004526(A315337(n))` -/
def P12667861600113816208.Spec : Prop :=
  ∀ n, P12667861600113816208.a n = A314120 n

end A314120

/-! ## A314120.P5889879277005072768

`A017077(n)-A028242(A315337(n))`
-/

namespace A314120.P5889879277005072768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n - A028242 (A315337 n).toNat

end

end A314120.P5889879277005072768

namespace A314120

/-- `A017077(n)-A028242(A315337(n))` -/
def P5889879277005072768.Spec : Prop :=
  ∀ n, P5889879277005072768.a n = A314120 n

end A314120

/-! ## A314120.P2355953051123181923

`ceil(A313915(2*n)/2)`
-/

namespace A314120.P2355953051123181923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A313915 (2 * n) : ℚ) / 2⌉

end

end A314120.P2355953051123181923

namespace A314120

/-- `ceil(A313915(2*n)/2)` -/
def P2355953051123181923.Spec : Prop :=
  ∀ n, P2355953051123181923.a n = A314120 n

end A314120

/-! ## A314120.P10934948682488065099

`A004525(A315761(2*n))-A004525(n)`
-/

namespace A314120.P10934948682488065099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315761 (2 * n)).toNat - A004525 n

end

end A314120.P10934948682488065099

namespace A314120

/-- `A004525(A315761(2*n))-A004525(n)` -/
def P10934948682488065099.Spec : Prop :=
  ∀ n, P10934948682488065099.a n = A314120 n

end A314120

/-!
# A314121: Coordination sequence Gal.6.657.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314121, the canonical program `A314121.P12858251584792299681` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314121 has offset 0).

The definition of A314121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314121.P12858251584792299681

`abs(A134667(n)-A038608(A315475(n)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A314121

/-- `abs(A134667(n)-A038608(A315475(n)))` -/
def P12858251584792299681.Spec : Prop :=
  ∀ n, P12858251584792299681.a n = A314121 n

theorem P12858251584792299681.correct : P12858251584792299681.Spec := by
  intro n
  simp only [A314121]

end A314121

/-! ## A314121.P9483428006327231526

`gcd(A134667(n)-A038608(A315475(n)), A134667(2*n))`
-/

namespace A314121.P9483428006327231526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134667 n - A038608 (A315475 n).toNat) (A134667 (2 * n))

end

end A314121.P9483428006327231526

namespace A314121

/-- `gcd(A134667(n)-A038608(A315475(n)), A134667(2*n))` -/
def P9483428006327231526.Spec : Prop :=
  ∀ n, (P9483428006327231526.a n : ℤ) = A314121 n

end A314121

/-! ## A314121.P15338561484383768798

`A346392(A002531(n))+A314117(n)`
-/

namespace A314121.P15338561484383768798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (A002531 n).toNat + A314117 n

end

end A314121.P15338561484383768798

namespace A314121

/-- `A346392(A002531(n))+A314117(n)` -/
def P15338561484383768798.Spec : Prop :=
  ∀ n, P15338561484383768798.a n = A314121 n

end A314121

/-! ## A314121.P3580378535971155234

`A314117(n)+A307598(A011369(n))`
-/

namespace A314121.P3580378535971155234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314117 n + A307598 (A011369 n).toNat

end

end A314121.P3580378535971155234

namespace A314121

/-- `A314117(n)+A307598(A011369(n))` -/
def P3580378535971155234.Spec : Prop :=
  ∀ n, P3580378535971155234.a n = A314121 n

end A314121

/-! ## A314121.P3849902754593489067

`A314122(n)-A368844(A363719(3*n+1))`
-/

namespace A314121.P3849902754593489067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314122 n - A368844 (A363719 (3 * n + 1)).toNat

end

end A314121.P3849902754593489067

namespace A314121

/-- `A314122(n)-A368844(A363719(3*n+1))` -/
def P3849902754593489067.Spec : Prop :=
  ∀ n, P3849902754593489067.a n = A314121 n

end A314121

/-!
# A314122: Coordination sequence Gal.5.311.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314122, there is no canonical definition to state claims against.
-/

/-! ## A314122.P9157823344919172040

`A335875(A018693(n+1))+A008706(n)`
-/

namespace A314122.P9157823344919172040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (A018693 (n + 1)).toNat + A008706 n

end

end A314122.P9157823344919172040

/-! ## A314122.P1110214173230342897

`A093700(A008486(2*n))+A061288(n+1)`
-/

namespace A314122.P1110214173230342897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093700 (A008486 (2 * n)).toNat + A061288 (n + 1)

end

end A314122.P1110214173230342897

/-! ## A314122.P1917165120136411332

`A314121(n)+A086008(A005177(n))`
-/

namespace A314122.P1917165120136411332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314121 n + A086008 (A005177 n).toNat

end

end A314122.P1917165120136411332

/-! ## A314122.P10908686930296616582

`A314121(n)+A102679(A176639(n))`
-/

namespace A314122.P10908686930296616582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314121 n + A102679 (A176639 n).toNat

end

end A314122.P10908686930296616582

/-!
# A314123: Coordination sequence Gal.5.310.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314123, the canonical program `A314123.P17491408075998672522` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314123 has offset 0).

The definition of A314123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314123.P17491408075998672522

`A313115(n)+A242062(A008586(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314123

/-- `A313115(n)+A242062(A008586(n))` -/
def P17491408075998672522.Spec : Prop :=
  ∀ n, P17491408075998672522.a n = A314123 n

theorem P17491408075998672522.correct : P17491408075998672522.Spec := by
  intro n
  simp only [A314123]

end A314123

/-! ## A314123.P17088518948588564871

`A313487(n)+n-A004525(A004525(n))`
-/

namespace A314123.P17088518948588564871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A314123.P17088518948588564871

namespace A314123

/-- `A313487(n)+n-A004525(A004525(n))` -/
def P17088518948588564871.Spec : Prop :=
  ∀ n, P17088518948588564871.a n = A314123 n

end A314123

/-! ## A314123.P17996680709143219762

`A313893(n)+A238470(n)`
-/

namespace A314123.P17996680709143219762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313893 n + A238470 n

end

end A314123.P17996680709143219762

namespace A314123

/-- `A313893(n)+A238470(n)` -/
def P17996680709143219762.Spec : Prop :=
  ∀ n, P17996680709143219762.a n = A314123 n

end A314123

/-! ## A314123.P10847078814485083889

`A314125(n)+A314129(n)-A314130(n)`
-/

namespace A314123.P10847078814485083889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314125 n + (A314129 n - A314130 n)

end

end A314123.P10847078814485083889

namespace A314123

/-- `A314125(n)+A314129(n)-A314130(n)` -/
def P10847078814485083889.Spec : Prop :=
  ∀ n, P10847078814485083889.a n = A314123 n

end A314123

/-! ## A314123.P17350304925202358355

`A314250(n)-A194225(n+1)`
-/

namespace A314123.P17350304925202358355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n - A194225 (n + 1)

end

end A314123.P17350304925202358355

namespace A314123

/-- `A314250(n)-A194225(n+1)` -/
def P17350304925202358355.Spec : Prop :=
  ∀ n, P17350304925202358355.a n = A314123 n

end A314123

/-! ## A314123.P17394627491275209550

`A314250(n)-A242062(A008585(n))`
-/

namespace A314123.P17394627491275209550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n - A242062 (A008585 n).toNat

end

end A314123.P17394627491275209550

namespace A314123

/-- `A314250(n)-A242062(A008585(n))` -/
def P17394627491275209550.Spec : Prop :=
  ∀ n, P17394627491275209550.a n = A314123 n

end A314123

/-!
# A314124: Coordination sequence Gal.6.619.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314124, the canonical program `A314124.P13406789306969075082` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314124 has offset 0).

The definition of A314124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314124.P13406789306969075082

`A312896(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314124

/-- `A312896(n)+n` -/
def P13406789306969075082.Spec : Prop :=
  ∀ n, P13406789306969075082.a n = A314124 n

theorem P13406789306969075082.correct : P13406789306969075082.Spec := by
  intro n
  simp only [A314124]

end A314124

/-! ## A314124.P6170108112104631214

`A310524(n)+A128834(n)`
-/

namespace A314124.P6170108112104631214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310524 n + A128834 n

end

end A314124.P6170108112104631214

namespace A314124

/-- `A310524(n)+A128834(n)` -/
def P6170108112104631214.Spec : Prop :=
  ∀ n, P6170108112104631214.a n = A314124 n

end A314124

/-! ## A314124.P2412845655520959400

`A313569(n)+A004524(n+1)`
-/

namespace A314124.P2412845655520959400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + A004524 (n + 1)

end

end A314124.P2412845655520959400

namespace A314124

/-- `A313569(n)+A004524(n+1)` -/
def P2412845655520959400.Spec : Prop :=
  ∀ n, P2412845655520959400.a n = A314124 n

end A314124

/-! ## A314124.P9460085996376124928

`A313569(n)+n-A004525(n)`
-/

namespace A314124.P9460085996376124928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + ((n : ℤ) - A004525 n)

end

end A314124.P9460085996376124928

namespace A314124

/-- `A313569(n)+n-A004525(n)` -/
def P9460085996376124928.Spec : Prop :=
  ∀ n, P9460085996376124928.a n = A314124 n

end A314124

/-! ## A314124.P4314069172194991077

`A313726(n)+n-A004396(n)`
-/

namespace A314124.P4314069172194991077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n + ((n : ℤ) - A004396 n)

end

end A314124.P4314069172194991077

namespace A314124

/-- `A313726(n)+n-A004396(n)` -/
def P4314069172194991077.Spec : Prop :=
  ∀ n, P4314069172194991077.a n = A314124 n

end A314124

/-! ## A314124.P13280551192973234714

`A313739(n)+A004525(n-A004396(n))`
-/

namespace A314124.P13280551192973234714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314124.P13280551192973234714

namespace A314124

/-- `A313739(n)+A004525(n-A004396(n))` -/
def P13280551192973234714.Spec : Prop :=
  ∀ n, P13280551192973234714.a n = A314124 n

end A314124

/-! ## A314124.P11391277651310707412

`A008486(n)+A313726(n)-A008576(n)`
-/

namespace A314124.P11391277651310707412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313726 n - A008576 n)

end

end A314124.P11391277651310707412

namespace A314124

/-- `A008486(n)+A313726(n)-A008576(n)` -/
def P11391277651310707412.Spec : Prop :=
  ∀ n, P11391277651310707412.a n = A314124 n

end A314124

/-! ## A314124.P36545346391984852

`A008458(n)+A008574(n)-A314893(n)`
-/

namespace A314124.P36545346391984852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314893 n)

end

end A314124.P36545346391984852

namespace A314124

/-- `A008458(n)+A008574(n)-A314893(n)` -/
def P36545346391984852.Spec : Prop :=
  ∀ n, P36545346391984852.a n = A314124 n

end A314124

/-! ## A314124.P15865165319458746457

`A004525(A004396(n))+A314159(n)-A004525(n)`
-/

namespace A314124.P15865165319458746457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314159 n - A004525 n)

end

end A314124.P15865165319458746457

namespace A314124

/-- `A004525(A004396(n))+A314159(n)-A004525(n)` -/
def P15865165319458746457.Spec : Prop :=
  ∀ n, P15865165319458746457.a n = A314124 n

end A314124

/-! ## A314124.P17851449573710166805

`A314240(n)-A047513(n+1)+n`
-/

namespace A314124.P17851449573710166805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A047513 (n + 1) + (n : ℤ)

end

end A314124.P17851449573710166805

namespace A314124

/-- `A314240(n)-A047513(n+1)+n` -/
def P17851449573710166805.Spec : Prop :=
  ∀ n, P17851449573710166805.a n = A314124 n

end A314124

/-! ## A314124.P1729553583628638558

`A004525(A004396(n))+A314240(n)-A004396(n)`
-/

namespace A314124.P1729553583628638558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314240 n - A004396 n)

end

end A314124.P1729553583628638558

namespace A314124

/-- `A004525(A004396(n))+A314240(n)-A004396(n)` -/
def P1729553583628638558.Spec : Prop :=
  ∀ n, P1729553583628638558.a n = A314124 n

end A314124

/-! ## A314124.P5631207949129421250

`A315710(n)-A004525(n)`
-/

namespace A314124.P5631207949129421250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - A004525 n

end

end A314124.P5631207949129421250

namespace A314124

/-- `A315710(n)-A004525(n)` -/
def P5631207949129421250.Spec : Prop :=
  ∀ n, P5631207949129421250.a n = A314124 n

end A314124

/-! ## A314124.P14611727038822210537

`A315710(n)-A047229(n+1)+n`
-/

namespace A314124.P14611727038822210537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - A047229 (n + 1) + (n : ℤ)

end

end A314124.P14611727038822210537

namespace A314124

/-- `A315710(n)-A047229(n+1)+n` -/
def P14611727038822210537.Spec : Prop :=
  ∀ n, P14611727038822210537.a n = A314124 n

end A314124

/-! ## A314124.P5676088849532447176

`A004525(A312950(n))+3*n`
-/

namespace A314124.P5676088849532447176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312950 n).toNat + (3 * n : ℤ)

end

end A314124.P5676088849532447176

namespace A314124

/-- `A004525(A312950(n))+3*n` -/
def P5676088849532447176.Spec : Prop :=
  ∀ n, P5676088849532447176.a n = A314124 n

end A314124

/-! ## A314124.P7300852149372269293

`A004525(A313193(n))+3*n`
-/

namespace A314124.P7300852149372269293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313193 n).toNat + (3 * n : ℤ)

end

end A314124.P7300852149372269293

namespace A314124

/-- `A004525(A313193(n))+3*n` -/
def P7300852149372269293.Spec : Prop :=
  ∀ n, P7300852149372269293.a n = A314124 n

end A314124

/-! ## A314124.P9422924726164557495

`A004396(A314022(n))+2*n`
-/

namespace A314124.P9422924726164557495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314022 n).toNat + (2 * n : ℤ)

end

end A314124.P9422924726164557495

namespace A314124

/-- `A004396(A314022(n))+2*n` -/
def P9422924726164557495.Spec : Prop :=
  ∀ n, P9422924726164557495.a n = A314124 n

end A314124

/-! ## A314124.P3374657409466648672

`A004396(A313698(n))+2*n`
-/

namespace A314124.P3374657409466648672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313698 n).toNat + (2 * n : ℤ)

end

end A314124.P3374657409466648672

namespace A314124

/-- `A004396(A313698(n))+2*n` -/
def P3374657409466648672.Spec : Prop :=
  ∀ n, P3374657409466648672.a n = A314124 n

end A314124

/-! ## A314124.P4054150335190579369

`abs(9*n-A004396(A301708(n)))`
-/

namespace A314124.P4054150335190579369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A004396 (A301708 n).toNat|

end

end A314124.P4054150335190579369

namespace A314124

/-- `abs(9*n-A004396(A301708(n)))` -/
def P4054150335190579369.Spec : Prop :=
  ∀ n, P4054150335190579369.a n = A314124 n

end A314124

/-! ## A314124.P1296622302898025471

`A004396(A301710(n)+n)+n`
-/

namespace A314124.P1296622302898025471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301710 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314124.P1296622302898025471

namespace A314124

/-- `A004396(A301710(n)+n)+n` -/
def P1296622302898025471.Spec : Prop :=
  ∀ n, P1296622302898025471.a n = A314124 n

end A314124

/-! ## A314124.P1157526653913469504

`A004396(A314134(n)+n)+n`
-/

namespace A314124.P1157526653913469504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314134 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314124.P1157526653913469504

namespace A314124

/-- `A004396(A314134(n)+n)+n` -/
def P1157526653913469504.Spec : Prop :=
  ∀ n, P1157526653913469504.a n = A314124 n

end A314124

/-!
# A314125: Coordination sequence Gal.5.312.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314125, the canonical program `A314125.P17964618951199002530` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314125 has offset 0).

The definition of A314125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314125.P17964618951199002530

`A310372(n)+A004525(A004525(n)+n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314125

/-- `A310372(n)+A004525(A004525(n)+n)` -/
def P17964618951199002530.Spec : Prop :=
  ∀ n, P17964618951199002530.a n = A314125 n

theorem P17964618951199002530.correct : P17964618951199002530.Spec := by
  intro n
  simp only [A314125]

end A314125

/-! ## A314125.P9041654367503132994

`A314074(n)+A314123(n)-A314072(n)`
-/

namespace A314125.P9041654367503132994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n + (A314123 n - A314072 n)

end

end A314125.P9041654367503132994

namespace A314125

/-- `A314074(n)+A314123(n)-A314072(n)` -/
def P9041654367503132994.Spec : Prop :=
  ∀ n, P9041654367503132994.a n = A314125 n

end A314125

/-! ## A314125.P4480076196847636697

`A313957(n)+A314130(n)-A313966(n)`
-/

namespace A314125.P4480076196847636697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313957 n + (A314130 n - A313966 n)

end

end A314125.P4480076196847636697

namespace A314125

/-- `A313957(n)+A314130(n)-A313966(n)` -/
def P4480076196847636697.Spec : Prop :=
  ∀ n, P4480076196847636697.a n = A314125 n

end A314125

/-! ## A314125.P6265965709135711008

`A314123(n)+A314130(n)-A314129(n)`
-/

namespace A314125.P6265965709135711008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n + (A314130 n - A314129 n)

end

end A314125.P6265965709135711008

namespace A314125

/-- `A314123(n)+A314130(n)-A314129(n)` -/
def P6265965709135711008.Spec : Prop :=
  ∀ n, P6265965709135711008.a n = A314125 n

end A314125

/-! ## A314125.P4565289729170686030

`A313738(n)+A001221(A080872(n))`
-/

namespace A314125.P4565289729170686030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 n + A001221 (A080872 n).toNat

end

end A314125.P4565289729170686030

namespace A314125

/-- `A313738(n)+A001221(A080872(n))` -/
def P4565289729170686030.Spec : Prop :=
  ∀ n, P4565289729170686030.a n = A314125 n

end A314125

/-!
# A314126: Coordination sequence Gal.5.315.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314126, there is no canonical definition to state claims against.
-/

/-! ## A314126.P17283402114371657414

`A004525(A314053(n)+A313959(n))`
-/

namespace A314126.P17283402114371657414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314053 n + A313959 n).toNat

end

end A314126.P17283402114371657414

/-! ## A314126.P9526917141730770269

`A219529(n)+A016377(A242994(n+1))`
-/

namespace A314126.P9526917141730770269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A016377 (A242994 (n + 1)).toNat

end

end A314126.P9526917141730770269

/-! ## A314126.P12446219921328603980

`A314053(n)+A188510(A204519(n+1))`
-/

namespace A314126.P12446219921328603980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314053 n + A188510 (A204519 (n + 1)).toNat

end

end A314126.P12446219921328603980

/-! ## A314126.P3394628173458548201

`A219529(n)-Δ[A336312(A169628(n+1))]`
-/

namespace A314126.P3394628173458548201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (A169628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (f1 (n + 1) - f1 n)

end

end A314126.P3394628173458548201

/-! ## A314126.P10673229211610945471

`A313882(n)+A294936(A116835(n+1))`
-/

namespace A314126.P10673229211610945471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313882 n + A294936 (A116835 (n + 1)).toNat

end

end A314126.P10673229211610945471

/-!
# A314127: Coordination sequence Gal.6.326.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314127, the canonical program `A314127.P7201920616213390850` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314127 has offset 0).

The definition of A314127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314127.P7972428228156102564

`abs(A008592(n)-A314890(n))`
-/

namespace A314127.P7972428228156102564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314890 n|

end

end A314127.P7972428228156102564

namespace A314127

/-- `abs(A008592(n)-A314890(n))` -/
def P7972428228156102564.Spec : Prop :=
  ∀ n, P7972428228156102564.a n = A314127 n

end A314127

/-! ## A314127.P292972971819375768

`2*A008706(n)-A314890(n)`
-/

namespace A314127.P292972971819375768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314890 n

end

end A314127.P292972971819375768

namespace A314127

/-- `2*A008706(n)-A314890(n)` -/
def P292972971819375768.Spec : Prop :=
  ∀ n, P292972971819375768.a n = A314127 n

end A314127

/-! ## A314127.P10338917986733754391

`A008458(n)+A008574(n)-A314890(n)`
-/

namespace A314127.P10338917986733754391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314890 n)

end

end A314127.P10338917986733754391

namespace A314127

/-- `A008458(n)+A008574(n)-A314890(n)` -/
def P10338917986733754391.Spec : Prop :=
  ∀ n, P10338917986733754391.a n = A314127 n

end A314127

/-! ## A314127.P5500020625157765966

`A008458(n)-A004525(A008458(n)-A310374(n))`
-/

namespace A314127.P5500020625157765966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310374 n).toNat

end

end A314127.P5500020625157765966

namespace A314127

/-- `A008458(n)-A004525(A008458(n)-A310374(n))` -/
def P5500020625157765966.Spec : Prop :=
  ∀ n, P5500020625157765966.a n = A314127 n

end A314127

/-! ## A314127.P7201920616213390850

`2*n+A004396(A310456(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314127

/-- `2*n+A004396(A310456(n))` -/
def P7201920616213390850.Spec : Prop :=
  ∀ n, P7201920616213390850.a n = A314127 n

theorem P7201920616213390850.correct : P7201920616213390850.Spec := by
  intro n
  simp only [A314127]

end A314127

/-! ## A314127.P3396725767918244962

`A004396(A313704(n))+2*n`
-/

namespace A314127.P3396725767918244962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313704 n).toNat + (2 * n : ℤ)

end

end A314127.P3396725767918244962

namespace A314127

/-- `A004396(A313704(n))+2*n` -/
def P3396725767918244962.Spec : Prop :=
  ∀ n, P3396725767918244962.a n = A314127 n

end A314127

/-! ## A314127.P7221307595668267788

`A004396(A313730(n))+2*n`
-/

namespace A314127.P7221307595668267788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313730 n).toNat + (2 * n : ℤ)

end

end A314127.P7221307595668267788

namespace A314127

/-- `A004396(A313730(n))+2*n` -/
def P7221307595668267788.Spec : Prop :=
  ∀ n, P7221307595668267788.a n = A314127 n

end A314127

/-! ## A314127.P1468669255687314801

`A005843(n)+A004396(A313704(n))`
-/

namespace A314127.P1468669255687314801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313704 n).toNat

end

end A314127.P1468669255687314801

namespace A314127

/-- `A005843(n)+A004396(A313704(n))` -/
def P1468669255687314801.Spec : Prop :=
  ∀ n, P1468669255687314801.a n = A314127 n

end A314127

/-! ## A314127.P1524543767570685637

`A008585(n)-(n-A004396(A310456(n)))`
-/

namespace A314127.P1524543767570685637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A310456 n).toNat)

end

end A314127.P1524543767570685637

namespace A314127

/-- `A008585(n)-(n-A004396(A310456(n)))` -/
def P1524543767570685637.Spec : Prop :=
  ∀ n, P1524543767570685637.a n = A314127 n

end A314127

/-! ## A314127.P14263691803735671009

`A004396(A314025(n))+2*n`
-/

namespace A314127.P14263691803735671009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314025 n).toNat + (2 * n : ℤ)

end

end A314127.P14263691803735671009

namespace A314127

/-- `A004396(A314025(n))+2*n` -/
def P14263691803735671009.Spec : Prop :=
  ∀ n, P14263691803735671009.a n = A314127 n

end A314127

/-! ## A314127.P12243672786157889489

`A311420(2*n)-3*n`
-/

namespace A314127.P12243672786157889489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 (2 * n) - (3 * n : ℤ)

end

end A314127.P12243672786157889489

namespace A314127

/-- `A311420(2*n)-3*n` -/
def P12243672786157889489.Spec : Prop :=
  ∀ n, P12243672786157889489.a n = A314127 n

end A314127

/-! ## A314127.P9125750647420866657

`A004396(A310456(n)+A008486(n))`
-/

namespace A314127.P9125750647420866657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310456 n + A008486 n).toNat

end

end A314127.P9125750647420866657

namespace A314127

/-- `A004396(A310456(n)+A008486(n))` -/
def P9125750647420866657.Spec : Prop :=
  ∀ n, P9125750647420866657.a n = A314127 n

end A314127

/-! ## A314127.P14580744119032218458

`A004396(A310456(n)+A008585(n))`
-/

namespace A314127.P14580744119032218458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310456 n + A008585 n).toNat

end

end A314127.P14580744119032218458

namespace A314127

/-- `A004396(A310456(n)+A008585(n))` -/
def P14580744119032218458.Spec : Prop :=
  ∀ n, P14580744119032218458.a n = A314127 n

end A314127

/-! ## A314127.P2711063421353814122

`A310520(2*n)/gcd(2, A310520(n))`
-/

namespace A314127.P2711063421353814122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310520 (2 * n) : ℚ) / (Int.gcd 2 (A310520 n) : ℚ)

end

end A314127.P2711063421353814122

namespace A314127

/-- `A310520(2*n)/gcd(2, A310520(n))` -/
def P2711063421353814122.Spec : Prop :=
  ∀ n, P2711063421353814122.a n = (A314127 n : ℚ)

end A314127

/-! ## A314127.P17559941368761945517

`A314239(2*n)-6*n`
-/

namespace A314127.P17559941368761945517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314239 (2 * n) - (6 * n : ℤ)

end

end A314127.P17559941368761945517

namespace A314127

/-- `A314239(2*n)-6*n` -/
def P17559941368761945517.Spec : Prop :=
  ∀ n, P17559941368761945517.a n = A314127 n

end A314127

/-! ## A314127.P10050513658977958199

`A004525(A310513(2*n))`
-/

namespace A314127.P10050513658977958199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310513 (2 * n)).toNat

end

end A314127.P10050513658977958199

namespace A314127

/-- `A004525(A310513(2*n))` -/
def P10050513658977958199.Spec : Prop :=
  ∀ n, P10050513658977958199.a n = A314127 n

end A314127

/-! ## A314127.P2206075379929981227

`A004525(A310520(2*n))`
-/

namespace A314127.P2206075379929981227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310520 (2 * n)).toNat

end

end A314127.P2206075379929981227

namespace A314127

/-- `A004525(A310520(2*n))` -/
def P2206075379929981227.Spec : Prop :=
  ∀ n, P2206075379929981227.a n = A314127 n

end A314127

/-! ## A314127.P12131639629984054665

`A004525(A314140(2*n))`
-/

namespace A314127.P12131639629984054665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314140 (2 * n)).toNat

end

end A314127.P12131639629984054665

namespace A314127

/-- `A004525(A314140(2*n))` -/
def P12131639629984054665.Spec : Prop :=
  ∀ n, P12131639629984054665.a n = A314127 n

end A314127

/-! ## A314127.P379289287039726051

`A004526(A310520(2*n)+1)`
-/

namespace A314127.P379289287039726051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310520 (2 * n) + 1).toNat

end

end A314127.P379289287039726051

namespace A314127

/-- `A004526(A310520(2*n)+1)` -/
def P379289287039726051.Spec : Prop :=
  ∀ n, P379289287039726051.a n = A314127 n

end A314127

/-! ## A314127.P1434244857235202753

`A004525(A310374(n)+A008458(n))`
-/

namespace A314127.P1434244857235202753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310374 n + A008458 n).toNat

end

end A314127.P1434244857235202753

namespace A314127

/-- `A004525(A310374(n)+A008458(n))` -/
def P1434244857235202753.Spec : Prop :=
  ∀ n, P1434244857235202753.a n = A314127 n

end A314127

/-!
# A314128: Coordination sequence Gal.5.315.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314128, there is no canonical definition to state claims against.
-/

/-! ## A314128.P3861955970601093448

`A219529(n)-A074290(∑[A121709(n+1)])`
-/

namespace A314128.P3861955970601093448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A074290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A314128.P3861955970601093448

/-! ## A314128.P9990478524425360521

`A219529(n)-Δ[A289239(A010021(n))]`
-/

namespace A314128.P9990478524425360521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (A010021 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (f1 (n + 1) - f1 n)

end

end A314128.P9990478524425360521

/-! ## A314128.P1490635525058747620

`A008576(2*n)-Δ[A289239(A010021(n))]`
-/

namespace A314128.P1490635525058747620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (A010021 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - (f1 (n + 1) - f1 n)

end

end A314128.P1490635525058747620

/-! ## A314128.P8515112365545601955

`A314137(n)-A011702(A002203(n))`
-/

namespace A314128.P8515112365545601955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314137 n - A011702 (A002203 n).toNat

end

end A314128.P8515112365545601955

/-! ## A314128.P13091669343387623696

`A314050(n)+A059841(A000111(n))`
-/

namespace A314128.P13091669343387623696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314050 n + A059841 (A000111 n).toNat

end

end A314128.P13091669343387623696

/-!
# A314129: Coordination sequence Gal.5.312.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314129, the canonical program `A314129.P3295900941499139215` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314129 has offset 0).

The definition of A314129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314129.P3295900941499139215

`A313966(n)+A314123(n)-A313957(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314129

/-- `A313966(n)+A314123(n)-A313957(n)` -/
def P3295900941499139215.Spec : Prop :=
  ∀ n, P3295900941499139215.a n = A314129 n

theorem P3295900941499139215.correct : P3295900941499139215.Spec := by
  intro n
  simp only [A314129]

end A314129

/-! ## A314129.P18432491956355148118

`A314072(n)+A238470(A008486(n))`
-/

namespace A314129.P18432491956355148118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314072 n + A238470 (A008486 n).toNat

end

end A314129.P18432491956355148118

namespace A314129

/-- `A314072(n)+A238470(A008486(n))` -/
def P18432491956355148118.Spec : Prop :=
  ∀ n, P18432491956355148118.a n = A314129 n

end A314129

/-! ## A314129.P1932065889180349712

`A314072(n)-A238470(A008574(n))`
-/

namespace A314129.P1932065889180349712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314072 n - A238470 (A008574 n).toNat

end

end A314129.P1932065889180349712

namespace A314129

/-- `A314072(n)-A238470(A008574(n))` -/
def P1932065889180349712.Spec : Prop :=
  ∀ n, P1932065889180349712.a n = A314129 n

end A314129

/-! ## A314129.P602828293368976658

`A314072(n)+A314130(n)-A314074(n)`
-/

namespace A314129.P602828293368976658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314072 n + (A314130 n - A314074 n)

end

end A314129.P602828293368976658

namespace A314129

/-- `A314072(n)+A314130(n)-A314074(n)` -/
def P602828293368976658.Spec : Prop :=
  ∀ n, P602828293368976658.a n = A314129 n

end A314129

/-! ## A314129.P14838283864669197423

`A314123(n)+A314130(n)-A314125(n)`
-/

namespace A314129.P14838283864669197423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n + (A314130 n - A314125 n)

end

end A314129.P14838283864669197423

namespace A314129

/-- `A314123(n)+A314130(n)-A314125(n)` -/
def P14838283864669197423.Spec : Prop :=
  ∀ n, P14838283864669197423.a n = A314129 n

end A314129

/-! ## A314129.P798609101159755450

`A028310(A313957(2*n)-A313957(n))`
-/

namespace A314129.P798609101159755450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313957 (2 * n) - A313957 n).toNat

end

end A314129.P798609101159755450

namespace A314129

/-- `A028310(A313957(2*n)-A313957(n))` -/
def P798609101159755450.Spec : Prop :=
  ∀ n, P798609101159755450.a n = A314129 n

end A314129

/-!
# A314130: Coordination sequence Gal.5.312.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314130, the canonical program `A314130.P11569106488579326638` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314130 has offset 0).

The definition of A314130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314130.P11569000271819405128

`A314074(n)-A238469(2*n)`
-/

namespace A314130.P11569000271819405128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n - A238469 (2 * n)

end

end A314130.P11569000271819405128

namespace A314130

/-- `A314074(n)-A238469(2*n)` -/
def P11569000271819405128.Spec : Prop :=
  ∀ n, P11569000271819405128.a n = A314130 n

end A314130

/-! ## A314130.P11569106488579326638

`A313966(n)+A314125(n)-A313957(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314130

/-- `A313966(n)+A314125(n)-A313957(n)` -/
def P11569106488579326638.Spec : Prop :=
  ∀ n, P11569106488579326638.a n = A314130 n

theorem P11569106488579326638.correct : P11569106488579326638.Spec := by
  intro n
  simp only [A314130]

end A314130

/-! ## A314130.P4200379406885023678

`A314074(n)+A314096(n)-A314040(n)`
-/

namespace A314130.P4200379406885023678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n + (A314096 n - A314040 n)

end

end A314130.P4200379406885023678

namespace A314130

/-- `A314074(n)+A314096(n)-A314040(n)` -/
def P4200379406885023678.Spec : Prop :=
  ∀ n, P4200379406885023678.a n = A314130 n

end A314130

/-! ## A314130.P9999057254722564465

`A314074(n)+A314129(n)-A314072(n)`
-/

namespace A314130.P9999057254722564465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n + (A314129 n - A314072 n)

end

end A314130.P9999057254722564465

namespace A314130

/-- `A314074(n)+A314129(n)-A314072(n)` -/
def P9999057254722564465.Spec : Prop :=
  ∀ n, P9999057254722564465.a n = A314130 n

end A314130

/-! ## A314130.P6942170742597629008

`A314125(n)+A314129(n)-A314123(n)`
-/

namespace A314130.P6942170742597629008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314125 n + (A314129 n - A314123 n)

end

end A314130.P6942170742597629008

namespace A314130

/-- `A314125(n)+A314129(n)-A314123(n)` -/
def P6942170742597629008.Spec : Prop :=
  ∀ n, P6942170742597629008.a n = A314130 n

end A314130

/-!
# A314131: Coordination sequence Gal.6.483.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314131, there is no canonical definition to state claims against.
-/

/-! ## A314131.P12115276129569588943

`A314026(n)+A000195(A005578(n))`
-/

namespace A314131.P12115276129569588943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + A000195 (A005578 n).toNat

end

end A314131.P12115276129569588943

/-! ## A314131.P17915240344973077127

`A008458(n)-A001221(A096001(n))`
-/

namespace A314131.P17915240344973077127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A096001 n).toNat

end

end A314131.P17915240344973077127

/-! ## A314131.P8075374034769122496

`A004277(3*n)-A001221(A096001(n))`
-/

namespace A314131.P8075374034769122496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) - A001221 (A096001 n).toNat

end

end A314131.P8075374034769122496

/-! ## A314131.P5394035782785440158

`A219529(n)+A004216(A322262(n))`
-/

namespace A314131.P5394035782785440158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A004216 (A322262 n).toNat

end

end A314131.P5394035782785440158

/-! ## A314131.P13988556970798657567

`A225557(2*(n+2))-8`
-/

namespace A314131.P13988556970798657567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225557 (2 * (n + 2)) - 8

end

end A314131.P13988556970798657567

/-!
# A314132: Coordination sequence Gal.6.660.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314132, there is no canonical definition to state claims against.
-/

/-! ## A314132.P12260682405445641161

`A314129(n)+A296066(A187010(n))`
-/

namespace A314132.P12260682405445641161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314129 n + A296066 (A187010 n).toNat

end

end A314132.P12260682405445641161

/-! ## A314132.P3360331903148963924

`A008706(n)+A001222(A149760(n))`
-/

namespace A314132.P3360331903148963924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A001222 (A149760 n).toNat

end

end A314132.P3360331903148963924

/-! ## A314132.P4217100993844023372

`A314112(n)+A056979(A027644(n))`
-/

namespace A314132.P4217100993844023372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314112 n + A056979 (A027644 n).toNat

end

end A314132.P4217100993844023372

/-! ## A314132.P13919550510917328026

`A313697(n)+A064547(A328358(n))`
-/

namespace A314132.P13919550510917328026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313697 n + A064547 (A328358 n).toNat

end

end A314132.P13919550510917328026

/-!
# A314133: Coordination sequence Gal.6.623.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314133, the canonical program `A314133.P10587469180771269075` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314133 has offset 0).

The definition of A314133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314133.P2661660775506726326

`abs(A008592(n)-A314885(n))`
-/

namespace A314133.P2661660775506726326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314885 n|

end

end A314133.P2661660775506726326

namespace A314133

/-- `abs(A008592(n)-A314885(n))` -/
def P2661660775506726326.Spec : Prop :=
  ∀ n, P2661660775506726326.a n = A314133 n

end A314133

/-! ## A314133.P10587469180771269075

`A314052(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A314133

/-- `A314052(n)+Δ[A011864(n)]` -/
def P10587469180771269075.Spec : Prop :=
  ∀ n, P10587469180771269075.a n = A314133 n

theorem P10587469180771269075.correct : P10587469180771269075.Spec := by
  intro n
  simp only [A314133]

end A314133

/-! ## A314133.P8946040584148389378

`A008458(n)+A008574(n)-A314885(n)`
-/

namespace A314133.P8946040584148389378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314885 n)

end

end A314133.P8946040584148389378

namespace A314133

/-- `A008458(n)+A008574(n)-A314885(n)` -/
def P8946040584148389378.Spec : Prop :=
  ∀ n, P8946040584148389378.a n = A314133 n

end A314133

/-! ## A314133.P7380243891082043264

`A005843(n)+A005843(A008574(n))-A314885(n)`
-/

namespace A314133.P7380243891082043264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314885 n)

end

end A314133.P7380243891082043264

namespace A314133

/-- `A005843(n)+A005843(A008574(n))-A314885(n)` -/
def P7380243891082043264.Spec : Prop :=
  ∀ n, P7380243891082043264.a n = A314133 n

end A314133

/-! ## A314133.P1665000780818056089

`(A310380(n)+A008458(n))/2`
-/

namespace A314133.P1665000780818056089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310380 n + A008458 n : ℚ) / 2

end

end A314133.P1665000780818056089

namespace A314133

/-- `(A310380(n)+A008458(n))/2` -/
def P1665000780818056089.Spec : Prop :=
  ∀ n, P1665000780818056089.a n = (A314133 n : ℚ)

end A314133

/-! ## A314133.P11853417683990791043

`A310380(n)+A001281(A008458(n)-A310380(n))`
-/

namespace A314133.P11853417683990791043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A001281 (A008458 n - A310380 n).toNat

end

end A314133.P11853417683990791043

namespace A314133

/-- `A310380(n)+A001281(A008458(n)-A310380(n))` -/
def P11853417683990791043.Spec : Prop :=
  ∀ n, P11853417683990791043.a n = A314133 n

end A314133

/-! ## A314133.P2059943036990017348

`A310380(n)+A004525(A008458(n)-A310380(n))`
-/

namespace A314133.P2059943036990017348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A004525 (A008458 n - A310380 n).toNat

end

end A314133.P2059943036990017348

namespace A314133

/-- `A310380(n)+A004525(A008458(n)-A310380(n))` -/
def P2059943036990017348.Spec : Prop :=
  ∀ n, P2059943036990017348.a n = A314133 n

end A314133

/-! ## A314133.P4007774188266248797

`A008458(n)-A004526(A008458(n)-A310380(n))`
-/

namespace A314133.P4007774188266248797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A310380 n).toNat

end

end A314133.P4007774188266248797

namespace A314133

/-- `A008458(n)-A004526(A008458(n)-A310380(n))` -/
def P4007774188266248797.Spec : Prop :=
  ∀ n, P4007774188266248797.a n = A314133 n

end A314133

/-! ## A314133.P2918182737086638835

`A008585(n)+A004525(A310380(n))`
-/

namespace A314133.P2918182737086638835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A310380 n).toNat

end

end A314133.P2918182737086638835

namespace A314133

/-- `A008585(n)+A004525(A310380(n))` -/
def P2918182737086638835.Spec : Prop :=
  ∀ n, P2918182737086638835.a n = A314133 n

end A314133

/-! ## A314133.P4625899230093922802

`A008486(n)+A004526(A310380(n))`
-/

namespace A314133.P4625899230093922802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A310380 n).toNat

end

end A314133.P4625899230093922802

namespace A314133

/-- `A008486(n)+A004526(A310380(n))` -/
def P4625899230093922802.Spec : Prop :=
  ∀ n, P4625899230093922802.a n = A314133 n

end A314133

/-! ## A314133.P5431891963535728092

`A005843(A008574(n)+n)-A314885(n)`
-/

namespace A314133.P5431891963535728092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314885 n

end

end A314133.P5431891963535728092

namespace A314133

/-- `A005843(A008574(n)+n)-A314885(n)` -/
def P5431891963535728092.Spec : Prop :=
  ∀ n, P5431891963535728092.a n = A314133 n

end A314133

/-! ## A314133.P8020705925378157815

`A004396(2*(A313738(n)-n))`
-/

namespace A314133.P8020705925378157815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313738 n - (n : ℤ))).toNat

end

end A314133.P8020705925378157815

namespace A314133

/-- `A004396(2*(A313738(n)-n))` -/
def P8020705925378157815.Spec : Prop :=
  ∀ n, P8020705925378157815.a n = A314133 n

end A314133

/-! ## A314133.P14789748303255057425

`A004396(A311262(n)+4*n)`
-/

namespace A314133.P14789748303255057425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311262 n + (4 * n : ℤ)).toNat

end

end A314133.P14789748303255057425

namespace A314133

/-- `A004396(A311262(n)+4*n)` -/
def P14789748303255057425.Spec : Prop :=
  ∀ n, P14789748303255057425.a n = A314133 n

end A314133

/-! ## A314133.P9446724251827338886

`A315024(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A314133.P9446724251827338886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315024 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A314133.P9446724251827338886

namespace A314133

/-- `A315024(2*n)+A008574(n+1)-(8*n+4)` -/
def P9446724251827338886.Spec : Prop :=
  ∀ n, P9446724251827338886.a n = A314133 n

end A314133

/-! ## A314133.P1924092654364183166

`A008574(2*n)+A315024(2*n)-A008458(2*n)`
-/

namespace A314133.P1924092654364183166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A315024 (2 * n) - A008458 (2 * n))

end

end A314133.P1924092654364183166

namespace A314133

/-- `A008574(2*n)+A315024(2*n)-A008458(2*n)` -/
def P1924092654364183166.Spec : Prop :=
  ∀ n, P1924092654364183166.a n = A314133 n

end A314133

/-! ## A314133.P740165201154811985

`A004396(A313834(2*n)-A005843(n))`
-/

namespace A314133.P740165201154811985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313834 (2 * n) - A005843 n).toNat

end

end A314133.P740165201154811985

namespace A314133

/-- `A004396(A313834(2*n)-A005843(n))` -/
def P740165201154811985.Spec : Prop :=
  ∀ n, P740165201154811985.a n = A314133 n

end A314133

/-! ## A314133.P130584553578204456

`2*A008574(2*n)-A314052(2*n)`
-/

namespace A314133.P130584553578204456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314052 (2 * n)

end

end A314133.P130584553578204456

namespace A314133

/-- `2*A008574(2*n)-A314052(2*n)` -/
def P130584553578204456.Spec : Prop :=
  ∀ n, P130584553578204456.a n = A314133 n

end A314133

/-! ## A314133.P5056314568608109751

`A004525(A314234(2*n))`
-/

namespace A314133.P5056314568608109751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314234 (2 * n)).toNat

end

end A314133.P5056314568608109751

namespace A314133

/-- `A004525(A314234(2*n))` -/
def P5056314568608109751.Spec : Prop :=
  ∀ n, P5056314568608109751.a n = A314133 n

end A314133

/-! ## A314133.P7901687450669597417

`A004525(A315521(2*n))`
-/

namespace A314133.P7901687450669597417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315521 (2 * n)).toNat

end

end A314133.P7901687450669597417

namespace A314133

/-- `A004525(A315521(2*n))` -/
def P7901687450669597417.Spec : Prop :=
  ∀ n, P7901687450669597417.a n = A314133 n

end A314133

/-! ## A314133.P5766657692758076906

`A001281(A310380(n)+A008458(n))`
-/

namespace A314133.P5766657692758076906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310380 n + A008458 n).toNat

end

end A314133.P5766657692758076906

namespace A314133

/-- `A001281(A310380(n)+A008458(n))` -/
def P5766657692758076906.Spec : Prop :=
  ∀ n, P5766657692758076906.a n = A314133 n

end A314133

/-!
# A314134: Coordination sequence Gal.6.624.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314134, the canonical program `A314134.P13249333215816617724` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314134 has offset 0).

The definition of A314134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314134.P9463764755906104685

`abs(A008592(n)-A314884(n))`
-/

namespace A314134.P9463764755906104685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314884 n|

end

end A314134.P9463764755906104685

namespace A314134

/-- `abs(A008592(n)-A314884(n))` -/
def P9463764755906104685.Spec : Prop :=
  ∀ n, P9463764755906104685.a n = A314134 n

end A314134

/-! ## A314134.P2142435217379068544

`A313583(n)+∑[A021913(n)]`
-/

namespace A314134.P2142435217379068544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314134.P2142435217379068544

namespace A314134

/-- `A313583(n)+∑[A021913(n)]` -/
def P2142435217379068544.Spec : Prop :=
  ∀ n, P2142435217379068544.a n = A314134 n

end A314134

/-! ## A314134.P13249333215816617724

`A313739(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A314134

/-- `A313739(n)+∑[A022003(n)]` -/
def P13249333215816617724.Spec : Prop :=
  ∀ n, P13249333215816617724.a n = A314134 n

theorem P13249333215816617724.correct : P13249333215816617724.Spec := by
  intro n
  simp only [A314134]

end A314134

/-! ## A314134.P17263984534598795366

`A313583(n)+Δ[A011848(n)]`
-/

namespace A314134.P17263984534598795366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + (f1 (n + 1) - f1 n)

end

end A314134.P17263984534598795366

namespace A314134

/-- `A313583(n)+Δ[A011848(n)]` -/
def P17263984534598795366.Spec : Prop :=
  ∀ n, P17263984534598795366.a n = A314134 n

end A314134

/-! ## A314134.P11501659341364412988

`A314054(n)+Δ[A011865(n)]`
-/

namespace A314134.P11501659341364412988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 n + (f1 (n + 1) - f1 n)

end

end A314134.P11501659341364412988

namespace A314134

/-- `A314054(n)+Δ[A011865(n)]` -/
def P11501659341364412988.Spec : Prop :=
  ∀ n, P11501659341364412988.a n = A314134 n

end A314134

/-! ## A314134.P16845032220221501142

`A311196(n)+record[A283971(n)]`
-/

namespace A314134.P16845032220221501142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314134.P16845032220221501142

namespace A314134

/-- `A311196(n)+record[A283971(n)]` -/
def P16845032220221501142.Spec : Prop :=
  ∀ n, P16845032220221501142.a n = A314134 n

end A314134

/-! ## A314134.P3816241114448902404

`A313739(n)+A002264(n+1)`
-/

namespace A314134.P3816241114448902404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A002264 (n + 1)

end

end A314134.P3816241114448902404

namespace A314134

/-- `A313739(n)+A002264(n+1)` -/
def P3816241114448902404.Spec : Prop :=
  ∀ n, P3816241114448902404.a n = A314134 n

end A314134

/-! ## A314134.P6351174401107048322

`A313583(n)+A004524(n+1)`
-/

namespace A314134.P6351174401107048322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + A004524 (n + 1)

end

end A314134.P6351174401107048322

namespace A314134

/-- `A313583(n)+A004524(n+1)` -/
def P6351174401107048322.Spec : Prop :=
  ∀ n, P6351174401107048322.a n = A314134 n

end A314134

/-! ## A314134.P11627535011904365095

`A311196(n)+A042965(n+1)`
-/

namespace A314134.P11627535011904365095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A042965 (n + 1)

end

end A314134.P11627535011904365095

namespace A314134

/-- `A311196(n)+A042965(n+1)` -/
def P11627535011904365095.Spec : Prop :=
  ∀ n, P11627535011904365095.a n = A314134 n

end A314134

/-! ## A314134.P12776095892018766761

`A311196(n)+A004396(2*n)`
-/

namespace A314134.P12776095892018766761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A004396 (2 * n)

end

end A314134.P12776095892018766761

namespace A314134

/-- `A311196(n)+A004396(2*n)` -/
def P12776095892018766761.Spec : Prop :=
  ∀ n, P12776095892018766761.a n = A314134 n

end A314134

/-! ## A314134.P5039797480457401325

`A313583(n)+n-A004525(n)`
-/

namespace A314134.P5039797480457401325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + ((n : ℤ) - A004525 n)

end

end A314134.P5039797480457401325

namespace A314134

/-- `A313583(n)+n-A004525(n)` -/
def P5039797480457401325.Spec : Prop :=
  ∀ n, P5039797480457401325.a n = A314134 n

end A314134

/-! ## A314134.P6279566896557505984

`A313739(n)+n-A004396(n)`
-/

namespace A314134.P6279566896557505984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + ((n : ℤ) - A004396 n)

end

end A314134.P6279566896557505984

namespace A314134

/-- `A313739(n)+n-A004396(n)` -/
def P6279566896557505984.Spec : Prop :=
  ∀ n, P6279566896557505984.a n = A314134 n

end A314134

/-! ## A314134.P5139833208918863900

`A313739(n)+A008615(2*n+1)`
-/

namespace A314134.P5139833208918863900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A008615 (2 * n + 1)

end

end A314134.P5139833208918863900

namespace A314134

/-- `A313739(n)+A008615(2*n+1)` -/
def P5139833208918863900.Spec : Prop :=
  ∀ n, P5139833208918863900.a n = A314134 n

end A314134

/-! ## A314134.P4883608282228927397

`A008574(n)+A311196(n)-A008576(n)`
-/

namespace A314134.P4883608282228927397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311196 n - A008576 n)

end

end A314134.P4883608282228927397

namespace A314134

/-- `A008574(n)+A311196(n)-A008576(n)` -/
def P4883608282228927397.Spec : Prop :=
  ∀ n, P4883608282228927397.a n = A314134 n

end A314134

/-! ## A314134.P1368741986225655383

`A008486(n)+A313739(n)-A008576(n)`
-/

namespace A314134.P1368741986225655383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313739 n - A008576 n)

end

end A314134.P1368741986225655383

namespace A314134

/-- `A008486(n)+A313739(n)-A008576(n)` -/
def P1368741986225655383.Spec : Prop :=
  ∀ n, P1368741986225655383.a n = A314134 n

end A314134

/-! ## A314134.P3395430560581858138

`A008458(n)+A008574(n)-A314884(n)`
-/

namespace A314134.P3395430560581858138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314884 n)

end

end A314134.P3395430560581858138

namespace A314134

/-- `A008458(n)+A008574(n)-A314884(n)` -/
def P3395430560581858138.Spec : Prop :=
  ∀ n, P3395430560581858138.a n = A314134 n

end A314134

/-! ## A314134.P4339604930255518218

`A313900(n)+A134667(n-A004525(n))`
-/

namespace A314134.P4339604930255518218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n + A134667 ((n : ℤ) - A004525 n).toNat

end

end A314134.P4339604930255518218

namespace A314134

/-- `A313900(n)+A134667(n-A004525(n))` -/
def P4339604930255518218.Spec : Prop :=
  ∀ n, P4339604930255518218.a n = A314134 n

end A314134

/-! ## A314134.P17229537793042962389

`A004525(A313119(n))+3*n`
-/

namespace A314134.P17229537793042962389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313119 n).toNat + (3 * n : ℤ)

end

end A314134.P17229537793042962389

namespace A314134

/-- `A004525(A313119(n))+3*n` -/
def P17229537793042962389.Spec : Prop :=
  ∀ n, P17229537793042962389.a n = A314134 n

end A314134

/-! ## A314134.P6427904700356564452

`A004525(A004396(n)+2*A313739(n))`
-/

namespace A314134.P6427904700356564452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n + 2 * A313739 n).toNat

end

end A314134.P6427904700356564452

namespace A314134

/-- `A004525(A004396(n)+2*A313739(n))` -/
def P6427904700356564452.Spec : Prop :=
  ∀ n, P6427904700356564452.a n = A314134 n

end A314134

/-!
# A314135: Coordination sequence Gal.6.489.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314135, the canonical program `A314135.P657271170897302408` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314135 has offset 0).

The definition of A314135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314135.P657271170897302408

`A310529(n)+A128834(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314135

/-- `A310529(n)+A128834(n)` -/
def P657271170897302408.Spec : Prop :=
  ∀ n, P657271170897302408.a n = A314135 n

theorem P657271170897302408.correct : P657271170897302408.Spec := by
  intro n
  simp only [A314135]

end A314135

/-! ## A314135.P2855014937675234255

`A310529(n)-A010892(n+2)`
-/

namespace A314135.P2855014937675234255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n - A010892 (n + 2)

end

end A314135.P2855014937675234255

namespace A314135

/-- `A310529(n)-A010892(n+2)` -/
def P2855014937675234255.Spec : Prop :=
  ∀ n, P2855014937675234255.a n = A314135 n

end A314135

/-! ## A314135.P12141744122983892636

`A310529(n)+A260190(2*n+1)`
-/

namespace A314135.P12141744122983892636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n + A260190 (2 * n + 1)

end

end A314135.P12141744122983892636

namespace A314135

/-- `A310529(n)+A260190(2*n+1)` -/
def P12141744122983892636.Spec : Prop :=
  ∀ n, P12141744122983892636.a n = A314135 n

end A314135

/-! ## A314135.P8483372431747259455

`A310529(n)+A102283(A026741(n))`
-/

namespace A314135.P8483372431747259455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n + A102283 (A026741 n).toNat

end

end A314135.P8483372431747259455

namespace A314135

/-- `A310529(n)+A102283(A026741(n))` -/
def P8483372431747259455.Spec : Prop :=
  ∀ n, P8483372431747259455.a n = A314135 n

end A314135

/-! ## A314135.P1932208561689974009

`A310529(n)-A102283(2*A026741(n))`
-/

namespace A314135.P1932208561689974009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n - A102283 (2 * A026741 n).toNat

end

end A314135.P1932208561689974009

namespace A314135

/-- `A310529(n)-A102283(2*A026741(n))` -/
def P1932208561689974009.Spec : Prop :=
  ∀ n, P1932208561689974009.a n = A314135 n

end A314135

/-!
# A314136: Coordination sequence Gal.5.325.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314136, there is no canonical definition to state claims against.
-/

/-! ## A314136.P4481029164033903355

`A287122(3*n+2)-record[A014499(3*n+5)]`
-/

namespace A314136.P4481029164033903355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287122 (3 * n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314136.P4481029164033903355

/-! ## A314136.P14545810225489903865

`A219529(n)+A096159(A046757(n))`
-/

namespace A314136.P14545810225489903865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A096159 (A046757 n).toNat

end

end A314136.P14545810225489903865

/-! ## A314136.P15036003032417831751

`A232741(C(A313524(n), A138908(n)))`
-/

namespace A314136.P15036003032417831751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (Nat.choose (A313524 n).toNat (A138908 n).toNat)

end

end A314136.P15036003032417831751

/-! ## A314136.P12269940598777119241

`A311285(A087051(n))+comp[A155212(n)]`
-/

namespace A314136.P12269940598777119241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311285 (A087051 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314136.P12269940598777119241

/-! ## A314136.P8805266517197660943

`A333382(A119268(n))+A301726(n)`
-/

namespace A314136.P8805266517197660943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A119268 n).toNat + A301726 n

end

end A314136.P8805266517197660943

/-!
# A314137: Coordination sequence Gal.5.314.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314137, there is no canonical definition to state claims against.
-/

/-! ## A314137.P4570478392204165896

`A314128(n)+A011702(A002203(n))`
-/

namespace A314137.P4570478392204165896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314128 n + A011702 (A002203 n).toNat

end

end A314137.P4570478392204165896

/-! ## A314137.P5828743906100404656

`A320847(A008458(n)+A000005(n+1))`
-/

namespace A314137.P5828743906100404656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A008458 n + A000005 (n + 1)).toNat

end

end A314137.P5828743906100404656

/-! ## A314137.P17662661831342331924

`A320847(A101296(n+1)+A008458(n))`
-/

namespace A314137.P17662661831342331924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A101296 (n + 1) + A008458 n).toNat

end

end A314137.P17662661831342331924

/-! ## A314137.P15786235308053435887

`A320847(A101296(n+1)+A008486(2*n))`
-/

namespace A314137.P15786235308053435887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A101296 (n + 1) + A008486 (2 * n)).toNat

end

end A314137.P15786235308053435887

/-! ## A314137.P10257747579709508354

`A011702(A002203(n))+A313887(n)+A118682(n)`
-/

namespace A314137.P10257747579709508354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011702 (A002203 n).toNat + (A313887 n + A118682 n)

end

end A314137.P10257747579709508354

/-!
# A314138: Coordination sequence Gal.6.663.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314138, there is no canonical definition to state claims against.
-/

/-! ## A314138.P14915410048664091814

`A314220(n)-A121559(A243076(n+1))`
-/

namespace A314138.P14915410048664091814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - A121559 (A243076 (n + 1)).toNat

end

end A314138.P14915410048664091814

/-! ## A314138.P6452877333165047087

`A312909(A062399(n))+n`
-/

namespace A314138.P6452877333165047087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 (A062399 n).toNat + (n : ℤ)

end

end A314138.P6452877333165047087

/-! ## A314138.P5340638592576894881

`A160755(A298024(n))+n`
-/

namespace A314138.P5340638592576894881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A298024 n).toNat + (n : ℤ)

end

end A314138.P5340638592576894881

/-! ## A314138.P14681063385348445750

`A312909(A001222(3^n))+n`
-/

namespace A314138.P14681063385348445750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 (A001222 (3 ^ n)).toNat + (n : ℤ)

end

end A314138.P14681063385348445750

/-! ## A314138.P11560959917390642984

`A312909(n)+n%A293062(n)`
-/

namespace A314138.P11560959917390642984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + Int.tmod (n : ℤ) (A293062 n)

end

end A314138.P11560959917390642984

/-!
# A314140: Coordination sequence Gal.6.633.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314140, the canonical program `A314140.P15451870942694101110` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314140 has offset 0).

The definition of A314140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314140.P7710340855236360524

`abs(A008592(n)-A314849(n))`
-/

namespace A314140.P7710340855236360524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314849 n|

end

end A314140.P7710340855236360524

namespace A314140

/-- `abs(A008592(n)-A314849(n))` -/
def P7710340855236360524.Spec : Prop :=
  ∀ n, P7710340855236360524.a n = A314140 n

end A314140

/-! ## A314140.P12296225764445070558

`2*A008706(n)-A314849(n)`
-/

namespace A314140.P12296225764445070558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314849 n

end

end A314140.P12296225764445070558

namespace A314140

/-- `2*A008706(n)-A314849(n)` -/
def P12296225764445070558.Spec : Prop :=
  ∀ n, P12296225764445070558.a n = A314140 n

end A314140

/-! ## A314140.P4601189552554189513

`A008458(n)+A008574(n)-A314849(n)`
-/

namespace A314140.P4601189552554189513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314849 n)

end

end A314140.P4601189552554189513

namespace A314140

/-- `A008458(n)+A008574(n)-A314849(n)` -/
def P4601189552554189513.Spec : Prop :=
  ∀ n, P4601189552554189513.a n = A314140 n

end A314140

/-! ## A314140.P472360458330506552

`A314849(n)+A005843(A008706(n)-A314849(n))`
-/

namespace A314140.P472360458330506552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314849 n + A005843 (A008706 n - A314849 n).toNat

end

end A314140.P472360458330506552

namespace A314140

/-- `A314849(n)+A005843(A008706(n)-A314849(n))` -/
def P472360458330506552.Spec : Prop :=
  ∀ n, P472360458330506552.a n = A314140 n

end A314140

/-! ## A314140.P15451870942694101110

`A315695(n)-A004525(A315695(n)-A313772(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A314140

/-- `A315695(n)-A004525(A315695(n)-A313772(n))` -/
def P15451870942694101110.Spec : Prop :=
  ∀ n, P15451870942694101110.a n = A314140 n

theorem P15451870942694101110.correct : P15451870942694101110.Spec := by
  intro n
  simp only [A314140]

end A314140

/-! ## A314140.P2304235723370703366

`A314210(n)-Δ[A011864(n)]`
-/

namespace A314140.P2304235723370703366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314210 n - (f1 (n + 1) - f1 n)

end

end A314140.P2304235723370703366

namespace A314140

/-- `A314210(n)-Δ[A011864(n)]` -/
def P2304235723370703366.Spec : Prop :=
  ∀ n, P2304235723370703366.a n = A314140 n

end A314140

/-! ## A314140.P2284315170810260154

`(A315756(n)+A310413(n))/2`
-/

namespace A314140.P2284315170810260154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315756 n + A310413 n : ℚ) / 2

end

end A314140.P2284315170810260154

namespace A314140

/-- `(A315756(n)+A310413(n))/2` -/
def P2284315170810260154.Spec : Prop :=
  ∀ n, P2284315170810260154.a n = (A314140 n : ℚ)

end A314140

/-! ## A314140.P4695049591456350197

`A310413(n)+A004525(A315756(n)-A310413(n))`
-/

namespace A314140.P4695049591456350197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310413 n + A004525 (A315756 n - A310413 n).toNat

end

end A314140.P4695049591456350197

namespace A314140

/-- `A310413(n)+A004525(A315756(n)-A310413(n))` -/
def P4695049591456350197.Spec : Prop :=
  ∀ n, P4695049591456350197.a n = A314140 n

end A314140

/-! ## A314140.P14571593886296438667

`A315756(n)-A004526(A315756(n)-A310413(n))`
-/

namespace A314140.P14571593886296438667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315756 n - A004526 (A315756 n - A310413 n).toNat

end

end A314140.P14571593886296438667

namespace A314140

/-- `A315756(n)-A004526(A315756(n)-A310413(n))` -/
def P14571593886296438667.Spec : Prop :=
  ∀ n, P14571593886296438667.a n = A314140 n

end A314140

/-! ## A314140.P11359315181059863077

`A005843(A008706(n))-A314849(n)`
-/

namespace A314140.P11359315181059863077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314849 n

end

end A314140.P11359315181059863077

namespace A314140

/-- `A005843(A008706(n))-A314849(n)` -/
def P11359315181059863077.Spec : Prop :=
  ∀ n, P11359315181059863077.a n = A314140 n

end A314140

/-! ## A314140.P17831537312017703441

`A004525(A315756(n)+A310413(n))`
-/

namespace A314140.P17831537312017703441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315756 n + A310413 n).toNat

end

end A314140.P17831537312017703441

namespace A314140

/-- `A004525(A315756(n)+A310413(n))` -/
def P17831537312017703441.Spec : Prop :=
  ∀ n, P17831537312017703441.a n = A314140 n

end A314140

/-! ## A314140.P13643172956609179272

`A004526(A315756(n)+A310413(n))`
-/

namespace A314140.P13643172956609179272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315756 n + A310413 n).toNat

end

end A314140.P13643172956609179272

namespace A314140

/-- `A004526(A315756(n)+A310413(n))` -/
def P13643172956609179272.Spec : Prop :=
  ∀ n, P13643172956609179272.a n = A314140 n

end A314140

/-! ## A314140.P15357792784234227640

`A004525(A315695(n)+A313772(n))`
-/

namespace A314140.P15357792784234227640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315695 n + A313772 n).toNat

end

end A314140.P15357792784234227640

namespace A314140

/-- `A004525(A315695(n)+A313772(n))` -/
def P15357792784234227640.Spec : Prop :=
  ∀ n, P15357792784234227640.a n = A314140 n

end A314140

/-! ## A314140.P3591049316141113121

`A233583(A017281(n))-A314849(n)`
-/

namespace A314140.P3591049316141113121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A314849 n

end

end A314140.P3591049316141113121

namespace A314140

/-- `A233583(A017281(n))-A314849(n)` -/
def P3591049316141113121.Spec : Prop :=
  ∀ n, P3591049316141113121.a n = A314140 n

end A314140

/-!
# A314141: Coordination sequence Gal.5.290.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314141, the canonical program `A314141.P7118663094909511911` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314141 has offset 0).

The definition of A314141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314141.P4028752931430933364

`abs(A008592(n)-A314848(n))`
-/

namespace A314141.P4028752931430933364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314848 n|

end

end A314141.P4028752931430933364

namespace A314141

/-- `abs(A008592(n)-A314848(n))` -/
def P4028752931430933364.Spec : Prop :=
  ∀ n, P4028752931430933364.a n = A314141 n

end A314141

/-! ## A314141.P5091328269626525903

`A314039(n)+Δ[A011862(n)]`
-/

namespace A314141.P5091328269626525903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n + (f1 (n + 1) - f1 n)

end

end A314141.P5091328269626525903

namespace A314141

/-- `A314039(n)+Δ[A011862(n)]` -/
def P5091328269626525903.Spec : Prop :=
  ∀ n, P5091328269626525903.a n = A314141 n

end A314141

/-! ## A314141.P1947346191495739891

`A310521(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A314141.P1947346191495739891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310521 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A314141.P1947346191495739891

namespace A314141

/-- `A310521(2*n)/(4*n+2-A004277(2*n))` -/
def P1947346191495739891.Spec : Prop :=
  ∀ n, P1947346191495739891.a n = (A314141 n : ℚ)

end A314141

/-! ## A314141.P16778256467203544068

`A310454(n)+A004396(A004396(n))`
-/

namespace A314141.P16778256467203544068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + A004396 (A004396 n).toNat

end

end A314141.P16778256467203544068

namespace A314141

/-- `A310454(n)+A004396(A004396(n))` -/
def P16778256467203544068.Spec : Prop :=
  ∀ n, P16778256467203544068.a n = A314141 n

end A314141

/-! ## A314141.P11584764341573905712

`A314039(n)+A002264(A086161(2*n))`
-/

namespace A314141.P11584764341573905712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n + A002264 (A086161 (2 * n)).toNat

end

end A314141.P11584764341573905712

namespace A314141

/-- `A314039(n)+A002264(A086161(2*n))` -/
def P11584764341573905712.Spec : Prop :=
  ∀ n, P11584764341573905712.a n = A314141 n

end A314141

/-! ## A314141.P7118663094909511911

`A312893(n)+A004396(A004396(n)+n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314141

/-- `A312893(n)+A004396(A004396(n)+n)` -/
def P7118663094909511911.Spec : Prop :=
  ∀ n, P7118663094909511911.a n = A314141 n

theorem P7118663094909511911.correct : P7118663094909511911.Spec := by
  intro n
  simp only [A314141]

end A314141

/-! ## A314141.P14938120692958937852

`A313773(n)+A004396(n-A004396(n))`
-/

namespace A314141.P14938120692958937852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313773 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314141.P14938120692958937852

namespace A314141

/-- `A313773(n)+A004396(n-A004396(n))` -/
def P14938120692958937852.Spec : Prop :=
  ∀ n, P14938120692958937852.a n = A314141 n

end A314141

/-! ## A314141.P2170155078216243023

`A008458(n)+A008574(n)-A314848(n)`
-/

namespace A314141.P2170155078216243023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314848 n)

end

end A314141.P2170155078216243023

namespace A314141

/-- `A008458(n)+A008574(n)-A314848(n)` -/
def P2170155078216243023.Spec : Prop :=
  ∀ n, P2170155078216243023.a n = A314141 n

end A314141

/-! ## A314141.P7439899760468178844

`A047263(A312932(n)+1)`
-/

namespace A314141.P7439899760468178844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A312932 n + 1).toNat

end

end A314141.P7439899760468178844

namespace A314141

/-- `A047263(A312932(n)+1)` -/
def P7439899760468178844.Spec : Prop :=
  ∀ n, P7439899760468178844.a n = A314141 n

end A314141

/-! ## A314141.P3302924203078770586

`A314231(n)-Δ[A011862(n)]`
-/

namespace A314141.P3302924203078770586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 n - (f1 (n + 1) - f1 n)

end

end A314141.P3302924203078770586

namespace A314141

/-- `A314231(n)-Δ[A011862(n)]` -/
def P3302924203078770586.Spec : Prop :=
  ∀ n, P3302924203078770586.a n = A314141 n

end A314141

/-! ## A314141.P8814243582829252741

`A004396(A004396(n))+A314231(n)-A004396(n)`
-/

namespace A314141.P8814243582829252741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A314231 n - A004396 n)

end

end A314141.P8814243582829252741

namespace A314141

/-- `A004396(A004396(n))+A314231(n)-A004396(n)` -/
def P8814243582829252741.Spec : Prop :=
  ∀ n, P8814243582829252741.a n = A314141 n

end A314141

/-! ## A314141.P11306340673963083160

`A313100(2*n)-4*n`
-/

namespace A314141.P11306340673963083160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 (2 * n) - (4 * n : ℤ)

end

end A314141.P11306340673963083160

namespace A314141

/-- `A313100(2*n)-4*n` -/
def P11306340673963083160.Spec : Prop :=
  ∀ n, P11306340673963083160.a n = A314141 n

end A314141

/-! ## A314141.P8214742366742764179

`2*A008574(2*n)-A315475(2*n)`
-/

namespace A314141.P8214742366742764179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315475 (2 * n)

end

end A314141.P8214742366742764179

namespace A314141

/-- `2*A008574(2*n)-A315475(2*n)` -/
def P8214742366742764179.Spec : Prop :=
  ∀ n, P8214742366742764179.a n = A314141 n

end A314141

/-! ## A314141.P8982129273509886934

`A004396(A301298(2*n))-A004396(A004396(2*n))`
-/

namespace A314141.P8982129273509886934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301298 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A314141.P8982129273509886934

namespace A314141

/-- `A004396(A301298(2*n))-A004396(A004396(2*n))` -/
def P8982129273509886934.Spec : Prop :=
  ∀ n, P8982129273509886934.a n = A314141 n

end A314141

/-! ## A314141.P2358129348235619267

`A004396(A313099(2*n))-A004396(A004396(2*n))`
-/

namespace A314141.P2358129348235619267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313099 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A314141.P2358129348235619267

namespace A314141

/-- `A004396(A313099(2*n))-A004396(A004396(2*n))` -/
def P2358129348235619267.Spec : Prop :=
  ∀ n, P2358129348235619267.a n = A314141 n

end A314141

/-! ## A314141.P9130933382140202989

`A004396(A313110(2*n))-A004396(A004396(2*n))`
-/

namespace A314141.P9130933382140202989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313110 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A314141.P9130933382140202989

namespace A314141

/-- `A004396(A313110(2*n))-A004396(A004396(2*n))` -/
def P9130933382140202989.Spec : Prop :=
  ∀ n, P9130933382140202989.a n = A314141 n

end A314141

/-! ## A314141.P3339672052193545447

`A004396(A314893(2*n))-A004396(A004396(2*n))`
-/

namespace A314141.P3339672052193545447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314893 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A314141.P3339672052193545447

namespace A314141

/-- `A004396(A314893(2*n))-A004396(A004396(2*n))` -/
def P3339672052193545447.Spec : Prop :=
  ∀ n, P3339672052193545447.a n = A314141 n

end A314141

/-! ## A314141.P11304878461105880214

`A004525(A310521(2*n))`
-/

namespace A314141.P11304878461105880214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310521 (2 * n)).toNat

end

end A314141.P11304878461105880214

namespace A314141

/-- `A004525(A310521(2*n))` -/
def P11304878461105880214.Spec : Prop :=
  ∀ n, P11304878461105880214.a n = A314141 n

end A314141

/-! ## A314141.P11365311722395608660

`A004526(A310521(2*n)+1)`
-/

namespace A314141.P11365311722395608660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310521 (2 * n) + 1).toNat

end

end A314141.P11365311722395608660

namespace A314141

/-- `A004526(A310521(2*n)+1)` -/
def P11365311722395608660.Spec : Prop :=
  ∀ n, P11365311722395608660.a n = A314141 n

end A314141

/-! ## A314141.P3479684561751093504

`A008458(A008574(n))-A313538(A008574(n))`
-/

namespace A314141.P3479684561751093504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A313538 (A008574 n).toNat

end

end A314141.P3479684561751093504

namespace A314141

/-- `A008458(A008574(n))-A313538(A008574(n))` -/
def P3479684561751093504.Spec : Prop :=
  ∀ n, P3479684561751093504.a n = A314141 n

end A314141

/-!
# A314142: Coordination sequence Gal.6.636.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314142, the canonical program `A314142.P8377752906736418581` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314142 has offset 0).

The definition of A314142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314142.P8377752906736418581

`A310393(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314142

/-- `A310393(n)+A004396(n)` -/
def P8377752906736418581.Spec : Prop :=
  ∀ n, P8377752906736418581.a n = A314142 n

theorem P8377752906736418581.correct : P8377752906736418581.Spec := by
  intro n
  simp only [A314142]

end A314142

/-! ## A314142.P14604258355687205360

`abs(A008592(n)-A314847(n))`
-/

namespace A314142.P14604258355687205360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314847 n|

end

end A314142.P14604258355687205360

namespace A314142

/-- `abs(A008592(n)-A314847(n))` -/
def P14604258355687205360.Spec : Prop :=
  ∀ n, P14604258355687205360.a n = A314142 n

end A314142

/-! ## A314142.P12716123671614550426

`A313611(n)+∑[A021913(n)]`
-/

namespace A314142.P12716123671614550426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314142.P12716123671614550426

namespace A314142

/-- `A313611(n)+∑[A021913(n)]` -/
def P12716123671614550426.Spec : Prop :=
  ∀ n, P12716123671614550426.a n = A314142 n

end A314142

/-! ## A314142.P2998624374216694084

`A313611(n)+Δ[A011848(n)]`
-/

namespace A314142.P2998624374216694084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + (f1 (n + 1) - f1 n)

end

end A314142.P2998624374216694084

namespace A314142

/-- `A313611(n)+Δ[A011848(n)]` -/
def P2998624374216694084.Spec : Prop :=
  ∀ n, P2998624374216694084.a n = A314142 n

end A314142

/-! ## A314142.P4450758410454296581

`2*A008706(n)-A314847(n)`
-/

namespace A314142.P4450758410454296581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314847 n

end

end A314142.P4450758410454296581

namespace A314142

/-- `2*A008706(n)-A314847(n)` -/
def P4450758410454296581.Spec : Prop :=
  ∀ n, P4450758410454296581.a n = A314142 n

end A314142

/-! ## A314142.P2527298724668348217

`A313611(n)+n-A004525(n)`
-/

namespace A314142.P2527298724668348217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + ((n : ℤ) - A004525 n)

end

end A314142.P2527298724668348217

namespace A314142

/-- `A313611(n)+n-A004525(n)` -/
def P2527298724668348217.Spec : Prop :=
  ∀ n, P2527298724668348217.a n = A314142 n

end A314142

/-! ## A314142.P1879517384464475405

`A301293(n)+n-Δ[A011865(n)]`
-/

namespace A314142.P1879517384464475405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314142.P1879517384464475405

namespace A314142

/-- `A301293(n)+n-Δ[A011865(n)]` -/
def P1879517384464475405.Spec : Prop :=
  ∀ n, P1879517384464475405.a n = A314142 n

end A314142

/-! ## A314142.P11167016290683751686

`A310393(n)+A002264(2*n+1)`
-/

namespace A314142.P11167016290683751686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310393 n + A002264 (2 * n + 1)

end

end A314142.P11167016290683751686

namespace A314142

/-- `A310393(n)+A002264(2*n+1)` -/
def P11167016290683751686.Spec : Prop :=
  ∀ n, P11167016290683751686.a n = A314142 n

end A314142

/-! ## A314142.P3897739817771104821

`A310470(n)+A004525(A004396(n))`
-/

namespace A314142.P3897739817771104821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n + A004525 (A004396 n).toNat

end

end A314142.P3897739817771104821

namespace A314142

/-- `A310470(n)+A004525(A004396(n))` -/
def P3897739817771104821.Spec : Prop :=
  ∀ n, P3897739817771104821.a n = A314142 n

end A314142

/-! ## A314142.P10186247936299217503

`A313540(n)+n-A004396(A004525(n))`
-/

namespace A314142.P10186247936299217503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A314142.P10186247936299217503

namespace A314142

/-- `A313540(n)+n-A004396(A004525(n))` -/
def P10186247936299217503.Spec : Prop :=
  ∀ n, P10186247936299217503.a n = A314142 n

end A314142

/-! ## A314142.P7975548374639398730

`A313769(n)+A004396(n-A004525(n))`
-/

namespace A314142.P7975548374639398730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313769 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314142.P7975548374639398730

namespace A314142

/-- `A313769(n)+A004396(n-A004525(n))` -/
def P7975548374639398730.Spec : Prop :=
  ∀ n, P7975548374639398730.a n = A314142 n

end A314142

/-! ## A314142.P2290638916726347961

`A004396(n)+A314048(n)-A004525(n)`
-/

namespace A314142.P2290638916726347961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314048 n - A004525 n)

end

end A314142.P2290638916726347961

namespace A314142

/-- `A004396(n)+A314048(n)-A004525(n)` -/
def P2290638916726347961.Spec : Prop :=
  ∀ n, P2290638916726347961.a n = A314142 n

end A314142

/-! ## A314142.P8833036606931545166

`A008458(n)+A008574(n)-A314847(n)`
-/

namespace A314142.P8833036606931545166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314847 n)

end

end A314142.P8833036606931545166

namespace A314142

/-- `A008458(n)+A008574(n)-A314847(n)` -/
def P8833036606931545166.Spec : Prop :=
  ∀ n, P8833036606931545166.a n = A314142 n

end A314142

/-! ## A314142.P4569458815338449322

`A004396(n)+A314022(n)-A004525(A004396(n))`
-/

namespace A314142.P4569458815338449322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314022 n - A004525 (A004396 n).toNat)

end

end A314142.P4569458815338449322

namespace A314142

/-- `A004396(n)+A314022(n)-A004525(A004396(n))` -/
def P4569458815338449322.Spec : Prop :=
  ∀ n, P4569458815338449322.a n = A314142 n

end A314142

/-! ## A314142.P8429978988775731899

`A004396(n)+A314028(n)-A004396(A004525(n))`
-/

namespace A314142.P8429978988775731899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314028 n - A004396 (A004525 n).toNat)

end

end A314142.P8429978988775731899

namespace A314142

/-- `A004396(n)+A314028(n)-A004396(A004525(n))` -/
def P8429978988775731899.Spec : Prop :=
  ∀ n, P8429978988775731899.a n = A314142 n

end A314142

/-! ## A314142.P7836601867470459231

`A004525(n)+A314107(n)-A004396(A004525(n))`
-/

namespace A314142.P7836601867470459231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314107 n - A004396 (A004525 n).toNat)

end

end A314142.P7836601867470459231

namespace A314142

/-- `A004525(n)+A314107(n)-A004396(A004525(n))` -/
def P7836601867470459231.Spec : Prop :=
  ∀ n, P7836601867470459231.a n = A314142 n

end A314142

/-! ## A314142.P17490611429983950780

`A314847(n)+A005843(A008706(n)-A314847(n))`
-/

namespace A314142.P17490611429983950780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + A005843 (A008706 n - A314847 n).toNat

end

end A314142.P17490611429983950780

namespace A314142

/-- `A314847(n)+A005843(A008706(n)-A314847(n))` -/
def P17490611429983950780.Spec : Prop :=
  ∀ n, P17490611429983950780.a n = A314142 n

end A314142

/-! ## A314142.P4626140662056341582

`A301710(n)-Δ[A011865(n)]`
-/

namespace A314142.P4626140662056341582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - (f1 (n + 1) - f1 n)

end

end A314142.P4626140662056341582

namespace A314142

/-- `A301710(n)-Δ[A011865(n)]` -/
def P4626140662056341582.Spec : Prop :=
  ∀ n, P4626140662056341582.a n = A314142 n

end A314142

/-! ## A314142.P12643619048325192851

`A315700(n)-A004396(A004525(n))`
-/

namespace A314142.P12643619048325192851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A004396 (A004525 n).toNat

end

end A314142.P12643619048325192851

namespace A314142

/-- `A315700(n)-A004396(A004525(n))` -/
def P12643619048325192851.Spec : Prop :=
  ∀ n, P12643619048325192851.a n = A314142 n

end A314142

/-! ## A314142.P1700392495339000566

`A005843(A008706(n))-A314847(n)`
-/

namespace A314142.P1700392495339000566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314847 n

end

end A314142.P1700392495339000566

namespace A314142

/-- `A005843(A008706(n))-A314847(n)` -/
def P1700392495339000566.Spec : Prop :=
  ∀ n, P1700392495339000566.a n = A314142 n

end A314142

/-!
# A314143: Coordination sequence Gal.6.490.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314143, there is no canonical definition to state claims against.
-/

/-! ## A314143.P2816946058551845236

`A301710(n)-A056170(A334774(n+1))`
-/

namespace A314143.P2816946058551845236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A056170 (A334774 (n + 1)).toNat

end

end A314143.P2816946058551845236

/-! ## A314143.P15149832455237906222

`A314123(n)+A102683(A002426(n))`
-/

namespace A314143.P15149832455237906222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n + A102683 (A002426 n).toNat

end

end A314143.P15149832455237906222

/-! ## A314143.P5631175981822908290

`A315649(n)-A265373(A247561(n+1))`
-/

namespace A314143.P5631175981822908290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315649 n - A265373 (A247561 (n + 1)).toNat

end

end A314143.P5631175981822908290

/-! ## A314143.P17977573624875907193

`A314151(n)-A287382(A334958(n+1))`
-/

namespace A314143.P17977573624875907193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A287382 (A334958 (n + 1)).toNat

end

end A314143.P17977573624875907193

/-! ## A314143.P661754459742846505

`A313628(A062399(n))+A037827(A315303(n))`
-/

namespace A314143.P661754459742846505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313628 (A062399 n).toNat + A037827 (A315303 n).toNat

end

end A314143.P661754459742846505

/-!
# A314144: Coordination sequence Gal.6.634.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314144, the canonical program `A314144.P11164658127069204478` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314144 has offset 0).

The definition of A314144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314144.P13140651862000982734

`A312926(n)+n`
-/

namespace A314144.P13140651862000982734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + (n : ℤ)

end

end A314144.P13140651862000982734

namespace A314144

/-- `A312926(n)+n` -/
def P13140651862000982734.Spec : Prop :=
  ∀ n, P13140651862000982734.a n = A314144 n

end A314144

/-! ## A314144.P1605675619551417953

`floor(A313769(n)+(n+1)/3)`
-/

namespace A314144.P1605675619551417953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A313769 n : ℚ) + (n + 1 : ℚ) / 3⌋

end

end A314144.P1605675619551417953

namespace A314144

/-- `floor(A313769(n)+(n+1)/3)` -/
def P1605675619551417953.Spec : Prop :=
  ∀ n, P1605675619551417953.a n = A314144 n

end A314144

/-! ## A314144.P12491189636760286362

`A310452(n)+A004525(n)`
-/

namespace A314144.P12491189636760286362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310452 n + A004525 n

end

end A314144.P12491189636760286362

namespace A314144

/-- `A310452(n)+A004525(n)` -/
def P12491189636760286362.Spec : Prop :=
  ∀ n, P12491189636760286362.a n = A314144 n

end A314144

/-! ## A314144.P3116152880155085343

`A315641(n)-A128834(n)`
-/

namespace A314144.P3116152880155085343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 n - A128834 n

end

end A314144.P3116152880155085343

namespace A314144

/-- `A315641(n)-A128834(n)` -/
def P3116152880155085343.Spec : Prop :=
  ∀ n, P3116152880155085343.a n = A314144 n

end A314144

/-! ## A314144.P13594972651965693408

`abs(A008592(n)-A314841(n))`
-/

namespace A314144.P13594972651965693408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314841 n|

end

end A314144.P13594972651965693408

namespace A314144

/-- `abs(A008592(n)-A314841(n))` -/
def P13594972651965693408.Spec : Prop :=
  ∀ n, P13594972651965693408.a n = A314144 n

end A314144

/-! ## A314144.P1395667735615191216

`A313619(n)+n-A004525(n)`
-/

namespace A314144.P1395667735615191216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313619 n + ((n : ℤ) - A004525 n)

end

end A314144.P1395667735615191216

namespace A314144

/-- `A313619(n)+n-A004525(n)` -/
def P1395667735615191216.Spec : Prop :=
  ∀ n, P1395667735615191216.a n = A314144 n

end A314144

/-! ## A314144.P7668734794622035332

`A313769(n)+n-A004396(n)`
-/

namespace A314144.P7668734794622035332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313769 n + ((n : ℤ) - A004396 n)

end

end A314144.P7668734794622035332

namespace A314144

/-- `A313769(n)+n-A004396(n)` -/
def P7668734794622035332.Spec : Prop :=
  ∀ n, P7668734794622035332.a n = A314144 n

end A314144

/-! ## A314144.P11164658127069204478

`A310470(n)+A004396(A004525(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314144

/-- `A310470(n)+A004396(A004525(n))` -/
def P11164658127069204478.Spec : Prop :=
  ∀ n, P11164658127069204478.a n = A314144 n

theorem P11164658127069204478.correct : P11164658127069204478.Spec := by
  intro n
  simp only [A314144]

end A314144

/-! ## A314144.P12739137135969067484

`A313540(n)+n-A004525(A004396(n))`
-/

namespace A314144.P12739137135969067484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A314144.P12739137135969067484

namespace A314144

/-- `A313540(n)+n-A004525(A004396(n))` -/
def P12739137135969067484.Spec : Prop :=
  ∀ n, P12739137135969067484.a n = A314144 n

end A314144

/-! ## A314144.P9218646122563376766

`A313778(n)+A004396(n-A004525(n))`
-/

namespace A314144.P9218646122563376766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314144.P9218646122563376766

namespace A314144

/-- `A313778(n)+A004396(n-A004525(n))` -/
def P9218646122563376766.Spec : Prop :=
  ∀ n, P9218646122563376766.a n = A314144 n

end A314144

/-! ## A314144.P15186896508312084219

`A313781(n)+A004525(n-A004396(n))`
-/

namespace A314144.P15186896508312084219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314144.P15186896508312084219

namespace A314144

/-- `A313781(n)+A004525(n-A004396(n))` -/
def P15186896508312084219.Spec : Prop :=
  ∀ n, P15186896508312084219.a n = A314144 n

end A314144

/-! ## A314144.P11664100159605918510

`A008486(n)+A313769(n)-A008576(n)`
-/

namespace A314144.P11664100159605918510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313769 n - A008576 n)

end

end A314144.P11664100159605918510

namespace A314144

/-- `A008486(n)+A313769(n)-A008576(n)` -/
def P11664100159605918510.Spec : Prop :=
  ∀ n, P11664100159605918510.a n = A314144 n

end A314144

/-! ## A314144.P15306425206559410538

`A008458(n)+A008574(n)-A314841(n)`
-/

namespace A314144.P15306425206559410538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314841 n)

end

end A314144.P15306425206559410538

namespace A314144

/-- `A008458(n)+A008574(n)-A314841(n)` -/
def P15306425206559410538.Spec : Prop :=
  ∀ n, P15306425206559410538.a n = A314144 n

end A314144

/-! ## A314144.P10776735887764511208

`A313693(n)+A004525(n-A128834(n))`
-/

namespace A314144.P10776735887764511208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + A004525 ((n : ℤ) - A128834 n).toNat

end

end A314144.P10776735887764511208

namespace A314144

/-- `A313693(n)+A004525(n-A128834(n))` -/
def P10776735887764511208.Spec : Prop :=
  ∀ n, P10776735887764511208.a n = A314144 n

end A314144

/-! ## A314144.P14409650494662279247

`A004396(n)+A314028(n)-A004525(A004396(n))`
-/

namespace A314144.P14409650494662279247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314028 n - A004525 (A004396 n).toNat)

end

end A314144.P14409650494662279247

namespace A314144

/-- `A004396(n)+A314028(n)-A004525(A004396(n))` -/
def P14409650494662279247.Spec : Prop :=
  ∀ n, P14409650494662279247.a n = A314144 n

end A314144

/-! ## A314144.P5400137446149264440

`A004525(n)+A314107(n)-A004525(A004396(n))`
-/

namespace A314144.P5400137446149264440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314107 n - A004525 (A004396 n).toNat)

end

end A314144.P5400137446149264440

namespace A314144

/-- `A004525(n)+A314107(n)-A004525(A004396(n))` -/
def P5400137446149264440.Spec : Prop :=
  ∀ n, P5400137446149264440.a n = A314144 n

end A314144

/-! ## A314144.P576008271133138819

`A314216(n)-Δ[A011865(n)]`
-/

namespace A314144.P576008271133138819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - (f1 (n + 1) - f1 n)

end

end A314144.P576008271133138819

namespace A314144

/-- `A314216(n)-Δ[A011865(n)]` -/
def P576008271133138819.Spec : Prop :=
  ∀ n, P576008271133138819.a n = A314144 n

end A314144

/-! ## A314144.P18388010269377230347

`A315700(n)-A047424(n+1)+n`
-/

namespace A314144.P18388010269377230347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A047424 (n + 1) + (n : ℤ)

end

end A314144.P18388010269377230347

namespace A314144

/-- `A315700(n)-A047424(n+1)+n` -/
def P18388010269377230347.Spec : Prop :=
  ∀ n, P18388010269377230347.a n = A314144 n

end A314144

/-! ## A314144.P9996728240186170572

`A315700(n)-A004525(A004396(n))`
-/

namespace A314144.P9996728240186170572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A004525 (A004396 n).toNat

end

end A314144.P9996728240186170572

namespace A314144

/-- `A315700(n)-A004525(A004396(n))` -/
def P9996728240186170572.Spec : Prop :=
  ∀ n, P9996728240186170572.a n = A314144 n

end A314144

/-! ## A314144.P6537273732819936241

`A004396(A313778(n))+2*n`
-/

namespace A314144.P6537273732819936241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313778 n).toNat + (2 * n : ℤ)

end

end A314144.P6537273732819936241

namespace A314144

/-- `A004396(A313778(n))+2*n` -/
def P6537273732819936241.Spec : Prop :=
  ∀ n, P6537273732819936241.a n = A314144 n

end A314144

/-!
# A314145: Coordination sequence Gal.4.145.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314145, the canonical program `A314145.P14892891408194481811` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314145 has offset 0).

The definition of A314145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314145.P14987500718901278287

`round(sqrt((27*n/5)²+1))`
-/

namespace A314145.P14987500718901278287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((27 * n : ℚ) / 5) ^ 2 + 1 : ℝ))

end

end A314145.P14987500718901278287

namespace A314145

/-- `round(sqrt((27*n/5)²+1))` -/
def P14987500718901278287.Spec : Prop :=
  ∀ n, P14987500718901278287.a n = A314145 n

end A314145

/-! ## A314145.P14892891408194481811

`∑[floor(a(n-5))]+n` with `a(0)=1, a(1)=3, a(2)=5, a(3)=4, a(4)=5, a(5)=4, a(6)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A314145

/-- `∑[floor(a(n-5))]+n` -/
def P14892891408194481811.Spec : Prop :=
  ∀ n, (P14892891408194481811.a n : ℤ) = A314145 n

theorem P14892891408194481811.correct : P14892891408194481811.Spec := by
  intro n
  simp only [A314145]

end A314145

/-! ## A314145.P10389220945700784939

`A312928(n)+n`
-/

namespace A314145.P10389220945700784939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n + (n : ℤ)

end

end A314145.P10389220945700784939

namespace A314145

/-- `A312928(n)+n` -/
def P10389220945700784939.Spec : Prop :=
  ∀ n, P10389220945700784939.a n = A314145 n

end A314145

/-! ## A314145.P8132597406752477926

`A008706(n)+round(2*n/5)`
-/

namespace A314145.P8132597406752477926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5))

end

end A314145.P8132597406752477926

namespace A314145

/-- `A008706(n)+round(2*n/5)` -/
def P8132597406752477926.Spec : Prop :=
  ∀ n, P8132597406752477926.a n = A314145 n

end A314145

/-! ## A314145.P16901147016213632155

`A047263(2*n+1)+floor(3/acot(n))`
-/

namespace A314145.P16901147016213632155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (2 * n + 1) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A314145.P16901147016213632155

namespace A314145

/-- `A047263(2*n+1)+floor(3/acot(n))` -/
def P16901147016213632155.Spec : Prop :=
  ∀ n, P16901147016213632155.a n = A314145 n

end A314145

/-! ## A314145.P5879740504399639554

`A047299(n+1)+A008574(n)`
-/

namespace A314145.P5879740504399639554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + A008574 n

end

end A314145.P5879740504399639554

namespace A314145

/-- `A047299(n+1)+A008574(n)` -/
def P5879740504399639554.Spec : Prop :=
  ∀ n, P5879740504399639554.a n = A314145 n

end A314145

/-! ## A314145.P8019423546861560058

`A057354(n+1)+A008706(n)`
-/

namespace A314145.P8019423546861560058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1) + A008706 n

end

end A314145.P8019423546861560058

namespace A314145

/-- `A057354(n+1)+A008706(n)` -/
def P8019423546861560058.Spec : Prop :=
  ∀ n, P8019423546861560058.a n = A314145 n

end A314145

/-! ## A314145.P5631534624091181466

`A301712(n)-A014017(n+2)`
-/

namespace A314145.P5631534624091181466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n - A014017 (n + 2)

end

end A314145.P5631534624091181466

namespace A314145

/-- `A301712(n)-A014017(n+2)` -/
def P5631534624091181466.Spec : Prop :=
  ∀ n, P5631534624091181466.a n = A314145 n

end A314145

/-! ## A314145.P2388445932353267566

`(A310409(n)+A008458(n))/2`
-/

namespace A314145.P2388445932353267566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310409 n + A008458 n : ℚ) / 2

end

end A314145.P2388445932353267566

namespace A314145

/-- `(A310409(n)+A008458(n))/2` -/
def P2388445932353267566.Spec : Prop :=
  ∀ n, P2388445932353267566.a n = (A314145 n : ℚ)

end A314145

/-! ## A314145.P6405087938314549944

`A008458(n)-A004526(comp[6*n])`
-/

namespace A314145.P6405087938314549944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A314145.P6405087938314549944

namespace A314145

/-- `A008458(n)-A004526(comp[6*n])` -/
def P6405087938314549944.Spec : Prop :=
  ∀ n, P6405087938314549944.a n = A314145 n

end A314145

/-! ## A314145.P1591024973946581433

`A008574(n)+Δ[A011858(n)]+n`
-/

namespace A314145.P1591024973946581433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A314145.P1591024973946581433

namespace A314145

/-- `A008574(n)+Δ[A011858(n)]+n` -/
def P1591024973946581433.Spec : Prop :=
  ∀ n, P1591024973946581433.a n = A314145 n

end A314145

/-! ## A314145.P8294822449059481668

`A008458(n)+Δ[A011858(n)]-n`
-/

namespace A314145.P8294822449059481668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (f1 (n + 1) - f1 n - (n : ℤ))

end

end A314145.P8294822449059481668

namespace A314145

/-- `A008458(n)+Δ[A011858(n)]-n` -/
def P8294822449059481668.Spec : Prop :=
  ∀ n, P8294822449059481668.a n = A314145 n

end A314145

/-! ## A314145.P639575119870213031

`A047299(n+1)+A004277(2*n)`
-/

namespace A314145.P639575119870213031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + A004277 (2 * n)

end

end A314145.P639575119870213031

namespace A314145

/-- `A047299(n+1)+A004277(2*n)` -/
def P639575119870213031.Spec : Prop :=
  ∀ n, P639575119870213031.a n = A314145 n

end A314145

/-! ## A314145.P6952646452178505354

`A047263(2*n+1)+A008486(n)`
-/

namespace A314145.P6952646452178505354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (2 * n + 1) + A008486 n

end

end A314145.P6952646452178505354

namespace A314145

/-- `A047263(2*n+1)+A008486(n)` -/
def P6952646452178505354.Spec : Prop :=
  ∀ n, P6952646452178505354.a n = A314145 n

end A314145

/-! ## A314145.P13547284999753947509

`A047299(n+1)+A008486(n)+n`
-/

namespace A314145.P13547284999753947509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A008486 n + (n : ℤ))

end

end A314145.P13547284999753947509

namespace A314145

/-- `A047299(n+1)+A008486(n)+n` -/
def P13547284999753947509.Spec : Prop :=
  ∀ n, P13547284999753947509.a n = A314145 n

end A314145

/-! ## A314145.P8629394103642204009

`A008458(n)-A047448(n+1)+n`
-/

namespace A314145.P8629394103642204009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047448 (n + 1) + (n : ℤ)

end

end A314145.P8629394103642204009

namespace A314145

/-- `A008458(n)-A047448(n+1)+n` -/
def P8629394103642204009.Spec : Prop :=
  ∀ n, P8629394103642204009.a n = A314145 n

end A314145

/-! ## A314145.P2204461189224425808

`A047299(n+1)+A008706(n)-n`
-/

namespace A314145.P2204461189224425808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A008706 n - (n : ℤ))

end

end A314145.P2204461189224425808

namespace A314145

/-- `A047299(n+1)+A008706(n)-n` -/
def P2204461189224425808.Spec : Prop :=
  ∀ n, P2204461189224425808.a n = A314145 n

end A314145

/-! ## A314145.P17734343681623071336

`A271114(n)-A047516(n+1)+n`
-/

namespace A314145.P17734343681623071336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A047516 (n + 1) + (n : ℤ)

end

end A314145.P17734343681623071336

namespace A314145

/-- `A271114(n)-A047516(n+1)+n` -/
def P17734343681623071336.Spec : Prop :=
  ∀ n, P17734343681623071336.a n = A314145 n

end A314145

/-! ## A314145.P8770270260579046409

`A301718(n)-A047263(n+1)+n`
-/

namespace A314145.P8770270260579046409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A047263 (n + 1) + (n : ℤ)

end

end A314145.P8770270260579046409

namespace A314145

/-- `A301718(n)-A047263(n+1)+n` -/
def P8770270260579046409.Spec : Prop :=
  ∀ n, P8770270260579046409.a n = A314145 n

end A314145

/-! ## A314145.P7290850744131801359

`A314164(n)+n-A151988(n)`
-/

namespace A314145.P7290850744131801359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n + ((n : ℤ) - A151988 n)

end

end A314145.P7290850744131801359

namespace A314145

/-- `A314164(n)+n-A151988(n)` -/
def P7290850744131801359.Spec : Prop :=
  ∀ n, P7290850744131801359.a n = A314145 n

end A314145

/-!
# A314146: Coordination sequence Gal.5.326.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314146, the canonical program `A314146.P9880955717233294577` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314146 has offset 0).

The definition of A314146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314146.P9880955717233294577

`floor(A313770(n)+(n+1)/3)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314146

/-- `floor(A313770(n)+(n+1)/3)` -/
def P9880955717233294577.Spec : Prop :=
  ∀ n, P9880955717233294577.a n = A314146 n

theorem P9880955717233294577.correct : P9880955717233294577.Spec := by
  intro n
  simp only [A314146]

end A314146

/-! ## A314146.P8213246583926230053

`A313770(n)+∑[A022003(n)]`
-/

namespace A314146.P8213246583926230053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313770 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314146.P8213246583926230053

namespace A314146

/-- `A313770(n)+∑[A022003(n)]` -/
def P8213246583926230053.Spec : Prop :=
  ∀ n, P8213246583926230053.a n = A314146 n

end A314146

/-! ## A314146.P3136892918313833318

`A313770(n)+A002264(n+1)`
-/

namespace A314146.P3136892918313833318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313770 n + A002264 (n + 1)

end

end A314146.P3136892918313833318

namespace A314146

/-- `A313770(n)+A002264(n+1)` -/
def P3136892918313833318.Spec : Prop :=
  ∀ n, P3136892918313833318.a n = A314146 n

end A314146

/-! ## A314146.P11022661779745130021

`A086161(n)+A313770(n)-1`
-/

namespace A314146.P11022661779745130021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n + (A313770 n - 1)

end

end A314146.P11022661779745130021

namespace A314146

/-- `A086161(n)+A313770(n)-1` -/
def P11022661779745130021.Spec : Prop :=
  ∀ n, P11022661779745130021.a n = A314146 n

end A314146

/-! ## A314146.P17019970926547969297

`A313770(n)+n-A004396(n)`
-/

namespace A314146.P17019970926547969297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313770 n + ((n : ℤ) - A004396 n)

end

end A314146.P17019970926547969297

namespace A314146

/-- `A313770(n)+n-A004396(n)` -/
def P17019970926547969297.Spec : Prop :=
  ∀ n, P17019970926547969297.a n = A314146 n

end A314146

/-! ## A314146.P7718837054878068572

`A313770(n)+A008615(2*n+1)`
-/

namespace A314146.P7718837054878068572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313770 n + A008615 (2 * n + 1)

end

end A314146.P7718837054878068572

namespace A314146

/-- `A313770(n)+A008615(2*n+1)` -/
def P7718837054878068572.Spec : Prop :=
  ∀ n, P7718837054878068572.a n = A314146 n

end A314146

/-! ## A314146.P7359545352833479692

`A313770(n)+A110654(A004523(n))`
-/

namespace A314146.P7359545352833479692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313770 n + A110654 (A004523 n).toNat

end

end A314146.P7359545352833479692

namespace A314146

/-- `A313770(n)+A110654(A004523(n))` -/
def P7359545352833479692.Spec : Prop :=
  ∀ n, P7359545352833479692.a n = A314146 n

end A314146

/-! ## A314146.P10969291262145078269

`A008486(n)+A313770(n)-A008576(n)`
-/

namespace A314146.P10969291262145078269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313770 n - A008576 n)

end

end A314146.P10969291262145078269

namespace A314146

/-- `A008486(n)+A313770(n)-A008576(n)` -/
def P10969291262145078269.Spec : Prop :=
  ∀ n, P10969291262145078269.a n = A314146 n

end A314146

/-!
# A314147: Coordination sequence Gal.6.651.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314147, there is no canonical definition to state claims against.
-/

/-! ## A314147.P8239589700039265546

`A314149(n)-A079998(A064954(n+1))`
-/

namespace A314147.P8239589700039265546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314149 n - A079998 (A064954 (n + 1)).toNat

end

end A314147.P8239589700039265546

/-! ## A314147.P14427482538156057007

`A314117(n)+A297045(A218199(n+1))`
-/

namespace A314147.P14427482538156057007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314117 n + A297045 (A218199 (n + 1)).toNat

end

end A314147.P14427482538156057007

/-! ## A314147.P15665427436658002824

`A301710(n)-A010059(A124302(n))`
-/

namespace A314147.P15665427436658002824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A010059 (A124302 n).toNat

end

end A314147.P15665427436658002824

/-! ## A314147.P18048752115224970748

`A172334(n)+A172303(A082795(n+1))`
-/

namespace A314147.P18048752115224970748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172334 n + A172303 (A082795 (n + 1)).toNat

end

end A314147.P18048752115224970748

/-! ## A314147.P7043377096370629365

`A070939(A334269(n+1)²)+4*n`
-/

namespace A314147.P7043377096370629365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A334269 (n + 1) ^ 2).toNat + (4 * n : ℤ)

end

end A314147.P7043377096370629365

/-!
# A314148: Coordination sequence Gal.4.139.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314148, the canonical program `A314148.P108321532251745212` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314148 has offset 0).

The definition of A314148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314148.P18216324849868045167

`floor(A004273(2*n)+10*(n+1)/7)`
-/

namespace A314148.P18216324849868045167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004273 (2 * n) : ℚ) + 10 * ((n + 1 : ℚ) / 7)⌋

end

end A314148.P18216324849868045167

namespace A314148

/-- `floor(A004273(2*n)+10*(n+1)/7)` -/
def P18216324849868045167.Spec : Prop :=
  ∀ n, P18216324849868045167.a n = A314148 n

end A314148

/-! ## A314148.P108321532251745212

`abs(A008592(n)-A314838(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314148

/-- `abs(A008592(n)-A314838(n))` -/
def P108321532251745212.Spec : Prop :=
  ∀ n, P108321532251745212.a n = A314148 n

theorem P108321532251745212.correct : P108321532251745212.Spec := by
  intro n
  simp only [A314148]

end A314148

/-! ## A314148.P7255965718220607934

`A314040(n)+Δ[A011860(n)]`
-/

namespace A314148.P7255965718220607934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n + (f1 (n + 1) - f1 n)

end

end A314148.P7255965718220607934

namespace A314148

/-- `A314040(n)+Δ[A011860(n)]` -/
def P7255965718220607934.Spec : Prop :=
  ∀ n, P7255965718220607934.a n = A314148 n

end A314148

/-! ## A314148.P13874577114619170173

`A057357(n+1)+A008706(n)`
-/

namespace A314148.P13874577114619170173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (n + 1) + A008706 n

end

end A314148.P13874577114619170173

namespace A314148

/-- `A057357(n+1)+A008706(n)` -/
def P13874577114619170173.Spec : Prop :=
  ∀ n, P13874577114619170173.a n = A314148 n

end A314148

/-! ## A314148.P4505108480720681044

`A312895(n)+A047588(n+1)`
-/

namespace A314148.P4505108480720681044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A047588 (n + 1)

end

end A314148.P4505108480720681044

namespace A314148

/-- `A312895(n)+A047588(n+1)` -/
def P4505108480720681044.Spec : Prop :=
  ∀ n, P4505108480720681044.a n = A314148 n

end A314148

/-! ## A314148.P732651413762838248

`A271114(n)-A225875(n+1)`
-/

namespace A314148.P732651413762838248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A225875 (n + 1)

end

end A314148.P732651413762838248

namespace A314148

/-- `A271114(n)-A225875(n+1)` -/
def P732651413762838248.Spec : Prop :=
  ∀ n, P732651413762838248.a n = A314148 n

end A314148

/-! ## A314148.P14399726424512742691

`(A310411(n)+A008458(n))/2`
-/

namespace A314148.P14399726424512742691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310411 n + A008458 n : ℚ) / 2

end

end A314148.P14399726424512742691

namespace A314148

/-- `(A310411(n)+A008458(n))/2` -/
def P14399726424512742691.Spec : Prop :=
  ∀ n, P14399726424512742691.a n = (A314148 n : ℚ)

end A314148

/-! ## A314148.P2247878922409492156

`2*A008706(n)-A314838(n)`
-/

namespace A314148.P2247878922409492156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314838 n

end

end A314148.P2247878922409492156

namespace A314148

/-- `2*A008706(n)-A314838(n)` -/
def P2247878922409492156.Spec : Prop :=
  ∀ n, P2247878922409492156.a n = A314148 n

end A314148

/-! ## A314148.P15866052068363608336

`A083033(2*n+1)+A004277(n)`
-/

namespace A314148.P15866052068363608336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (2 * n + 1) + A004277 n

end

end A314148.P15866052068363608336

namespace A314148

/-- `A083033(2*n+1)+A004277(n)` -/
def P15866052068363608336.Spec : Prop :=
  ∀ n, P15866052068363608336.a n = A314148 n

end A314148

/-! ## A314148.P16051388567367613926

`A083033(2*n+1)+A004275(n+1)`
-/

namespace A314148.P16051388567367613926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (2 * n + 1) + A004275 (n + 1)

end

end A314148.P16051388567367613926

namespace A314148

/-- `A083033(2*n+1)+A004275(n+1)` -/
def P16051388567367613926.Spec : Prop :=
  ∀ n, P16051388567367613926.a n = A314148 n

end A314148

/-! ## A314148.P14499204031458807869

`A008706(n)+n+1-A225875(n+1)`
-/

namespace A314148.P14499204031458807869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n + 1 : ℤ) - A225875 (n + 1))

end

end A314148.P14499204031458807869

namespace A314148

/-- `A008706(n)+n+1-A225875(n+1)` -/
def P14499204031458807869.Spec : Prop :=
  ∀ n, P14499204031458807869.a n = A314148 n

end A314148

/-! ## A314148.P10434366159124582054

`A008486(2*n)+A057357(n+1)-n`
-/

namespace A314148.P10434366159124582054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A057357 (n + 1) - (n : ℤ))

end

end A314148.P10434366159124582054

namespace A314148

/-- `A008486(2*n)+A057357(n+1)-n` -/
def P10434366159124582054.Spec : Prop :=
  ∀ n, P10434366159124582054.a n = A314148 n

end A314148

/-! ## A314148.P15511540435034883058

`A004275(2*n+1)+A057357(n+1)+n`
-/

namespace A314148.P15511540435034883058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (A057357 (n + 1) + (n : ℤ))

end

end A314148.P15511540435034883058

namespace A314148

/-- `A004275(2*n+1)+A057357(n+1)+n` -/
def P15511540435034883058.Spec : Prop :=
  ∀ n, P15511540435034883058.a n = A314148 n

end A314148

/-! ## A314148.P5255008974878166510

`A008458(n)+A008574(n)-A314838(n)`
-/

namespace A314148.P5255008974878166510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314838 n)

end

end A314148.P5255008974878166510

namespace A314148

/-- `A008458(n)+A008574(n)-A314838(n)` -/
def P5255008974878166510.Spec : Prop :=
  ∀ n, P5255008974878166510.a n = A314148 n

end A314148

/-! ## A314148.P17617336867475676568

`A310441(n)+A004525(A008458(n)-A310441(n))`
-/

namespace A314148.P17617336867475676568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310441 n + A004525 (A008458 n - A310441 n).toNat

end

end A314148.P17617336867475676568

namespace A314148

/-- `A310441(n)+A004525(A008458(n)-A310441(n))` -/
def P17617336867475676568.Spec : Prop :=
  ∀ n, P17617336867475676568.a n = A314148 n

end A314148

/-! ## A314148.P4599560476892072175

`A314193(n)+A238469(2*n)`
-/

namespace A314148.P4599560476892072175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314193 n + A238469 (2 * n)

end

end A314148.P4599560476892072175

namespace A314148

/-- `A314193(n)+A238469(2*n)` -/
def P4599560476892072175.Spec : Prop :=
  ∀ n, P4599560476892072175.a n = A314148 n

end A314148

/-! ## A314148.P4047018516890582872

`A313923(n)+A238470(n)`
-/

namespace A314148.P4047018516890582872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n + A238470 n

end

end A314148.P4047018516890582872

namespace A314148

/-- `A313923(n)+A238470(n)` -/
def P4047018516890582872.Spec : Prop :=
  ∀ n, P4047018516890582872.a n = A314148 n

end A314148

/-! ## A314148.P3306920825393931550

`A315490(n)-A238469(n)`
-/

namespace A314148.P3306920825393931550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n - A238469 n

end

end A314148.P3306920825393931550

namespace A314148

/-- `A315490(n)-A238469(n)` -/
def P3306920825393931550.Spec : Prop :=
  ∀ n, P3306920825393931550.a n = A314148 n

end A314148

/-! ## A314148.P3890401481954718100

`A315490(n)-A238470(2*n)`
-/

namespace A314148.P3890401481954718100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n - A238470 (2 * n)

end

end A314148.P3890401481954718100

namespace A314148

/-- `A315490(n)-A238470(2*n)` -/
def P3890401481954718100.Spec : Prop :=
  ∀ n, P3890401481954718100.a n = A314148 n

end A314148

/-! ## A314148.P2590188012360427080

`A315647(n)+A238468(2*n)`
-/

namespace A314148.P2590188012360427080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n + A238468 (2 * n)

end

end A314148.P2590188012360427080

namespace A314148

/-- `A315647(n)+A238468(2*n)` -/
def P2590188012360427080.Spec : Prop :=
  ∀ n, P2590188012360427080.a n = A314148 n

end A314148

/-!
# A314149: Coordination sequence Gal.6.620.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314149, the canonical program `A314149.P1429782019199352520` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314149 has offset 0).

The definition of A314149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314149.P1429782019199352520

`abs(A008592(n)-A314837(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314149

/-- `abs(A008592(n)-A314837(n))` -/
def P1429782019199352520.Spec : Prop :=
  ∀ n, P1429782019199352520.a n = A314149 n

theorem P1429782019199352520.correct : P1429782019199352520.Spec := by
  intro n
  simp only [A314149]

end A314149

/-! ## A314149.P13889423431554516501

`(A310413(n)+A008458(n))/2`
-/

namespace A314149.P13889423431554516501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310413 n + A008458 n : ℚ) / 2

end

end A314149.P13889423431554516501

namespace A314149

/-- `(A310413(n)+A008458(n))/2` -/
def P13889423431554516501.Spec : Prop :=
  ∀ n, P13889423431554516501.a n = (A314149 n : ℚ)

end A314149

/-! ## A314149.P6810389164845349861

`2*A008706(n)-A314837(n)`
-/

namespace A314149.P6810389164845349861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314837 n

end

end A314149.P6810389164845349861

namespace A314149

/-- `2*A008706(n)-A314837(n)` -/
def P6810389164845349861.Spec : Prop :=
  ∀ n, P6810389164845349861.a n = A314149 n

end A314149

/-! ## A314149.P16987713731615861283

`A008458(n)+A008574(n)-A314837(n)`
-/

namespace A314149.P16987713731615861283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314837 n)

end

end A314149.P16987713731615861283

namespace A314149

/-- `A008458(n)+A008574(n)-A314837(n)` -/
def P16987713731615861283.Spec : Prop :=
  ∀ n, P16987713731615861283.a n = A314149 n

end A314149

/-! ## A314149.P14392247730644906955

`A310442(n)+A004525(A008458(n)-A310442(n))`
-/

namespace A314149.P14392247730644906955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310442 n + A004525 (A008458 n - A310442 n).toNat

end

end A314149.P14392247730644906955

namespace A314149

/-- `A310442(n)+A004525(A008458(n)-A310442(n))` -/
def P14392247730644906955.Spec : Prop :=
  ∀ n, P14392247730644906955.a n = A314149 n

end A314149

/-! ## A314149.P14217090444109839423

`A310455(n)+A004525(A008458(n)-A310455(n))`
-/

namespace A314149.P14217090444109839423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310455 n + A004525 (A008458 n - A310455 n).toNat

end

end A314149.P14217090444109839423

namespace A314149

/-- `A310455(n)+A004525(A008458(n)-A310455(n))` -/
def P14217090444109839423.Spec : Prop :=
  ∀ n, P14217090444109839423.a n = A314149 n

end A314149

/-! ## A314149.P15079815354901343774

`A314221(n)-Δ[A011864(n)]`
-/

namespace A314149.P15079815354901343774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314221 n - (f1 (n + 1) - f1 n)

end

end A314149.P15079815354901343774

namespace A314149

/-- `A314221(n)-Δ[A011864(n)]` -/
def P15079815354901343774.Spec : Prop :=
  ∀ n, P15079815354901343774.a n = A314149 n

end A314149

/-! ## A314149.P9123347977427497248

`A005843(n)+A004396(A311434(n)+n)`
-/

namespace A314149.P9123347977427497248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A311434 n + (n : ℤ)).toNat

end

end A314149.P9123347977427497248

namespace A314149

/-- `A005843(n)+A004396(A311434(n)+n)` -/
def P9123347977427497248.Spec : Prop :=
  ∀ n, P9123347977427497248.a n = A314149 n

end A314149

/-! ## A314149.P18315078946162217763

`A314894(2*n)-4*n`
-/

namespace A314149.P18315078946162217763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314894 (2 * n) - (4 * n : ℤ)

end

end A314149.P18315078946162217763

namespace A314149

/-- `A314894(2*n)-4*n` -/
def P18315078946162217763.Spec : Prop :=
  ∀ n, P18315078946162217763.a n = A314149 n

end A314149

/-! ## A314149.P17056446115813546897

`A004396(A313779(2*n)-A005843(n))`
-/

namespace A314149.P17056446115813546897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313779 (2 * n) - A005843 n).toNat

end

end A314149.P17056446115813546897

namespace A314149

/-- `A004396(A313779(2*n)-A005843(n))` -/
def P17056446115813546897.Spec : Prop :=
  ∀ n, P17056446115813546897.a n = A314149 n

end A314149

/-! ## A314149.P11050891815208668071

`2*A008574(2*n)-A314117(2*n)`
-/

namespace A314149.P11050891815208668071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314117 (2 * n)

end

end A314149.P11050891815208668071

namespace A314149

/-- `2*A008574(2*n)-A314117(2*n)` -/
def P11050891815208668071.Spec : Prop :=
  ∀ n, P11050891815208668071.a n = A314149 n

end A314149

/-! ## A314149.P14442759530741905610

`A004525(A314157(2*n))`
-/

namespace A314149.P14442759530741905610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314157 (2 * n)).toNat

end

end A314149.P14442759530741905610

namespace A314149

/-- `A004525(A314157(2*n))` -/
def P14442759530741905610.Spec : Prop :=
  ∀ n, P14442759530741905610.a n = A314149 n

end A314149

/-! ## A314149.P17331565084907540591

`A004525(A315340(2*n))`
-/

namespace A314149.P17331565084907540591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315340 (2 * n)).toNat

end

end A314149.P17331565084907540591

namespace A314149

/-- `A004525(A315340(2*n))` -/
def P17331565084907540591.Spec : Prop :=
  ∀ n, P17331565084907540591.a n = A314149 n

end A314149

/-! ## A314149.P13740813007281675179

`A004525(A315492(2*n))`
-/

namespace A314149.P13740813007281675179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315492 (2 * n)).toNat

end

end A314149.P13740813007281675179

namespace A314149

/-- `A004525(A315492(2*n))` -/
def P13740813007281675179.Spec : Prop :=
  ∀ n, P13740813007281675179.a n = A314149 n

end A314149

/-! ## A314149.P16265178323943464005

`A004525(A313620(n)+6*n)`
-/

namespace A314149.P16265178323943464005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313620 n + (6 * n : ℤ)).toNat

end

end A314149.P16265178323943464005

namespace A314149

/-- `A004525(A313620(n)+6*n)` -/
def P16265178323943464005.Spec : Prop :=
  ∀ n, P16265178323943464005.a n = A314149 n

end A314149

/-! ## A314149.P12441064399269456434

`A315492(A008486(2*n))-A314720(A008486(2*n))`
-/

namespace A314149.P12441064399269456434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315492 (A008486 (2 * n)).toNat - A314720 (A008486 (2 * n)).toNat

end

end A314149.P12441064399269456434

namespace A314149

/-- `A315492(A008486(2*n))-A314720(A008486(2*n))` -/
def P12441064399269456434.Spec : Prop :=
  ∀ n, P12441064399269456434.a n = A314149 n

end A314149

/-!
# A314150: Coordination sequence Gal.3.58.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314150, there is no canonical definition to state claims against.
-/

/-! ## A314150.P11503134802685737603

`A310737(2*n)-2*n`
-/

namespace A314150.P11503134802685737603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310737 (2 * n) - (2 * n : ℤ)

end

end A314150.P11503134802685737603

/-! ## A314150.P16892027582051645667

`A195098(A008458(n))-A071330(n+1)`
-/

namespace A314150.P16892027582051645667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A008458 n).toNat - A071330 (n + 1)

end

end A314150.P16892027582051645667

/-! ## A314150.P4384008984433629941

`A008706(n)+A001222(A006847(n))`
-/

namespace A314150.P4384008984433629941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A001222 (A006847 n).toNat

end

end A314150.P4384008984433629941

/-! ## A314150.P12339571010952080098

`A313782(n)+A001222(A149659(n))`
-/

namespace A314150.P12339571010952080098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n + A001222 (A149659 n).toNat

end

end A314150.P12339571010952080098

/-! ## A314150.P4869914021218731792

`A313697(n)+A001222(A318123(2*n))`
-/

namespace A314150.P4869914021218731792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313697 n + A001222 (A318123 (2 * n)).toNat

end

end A314150.P4869914021218731792

/-!
# A314151: Coordination sequence Gal.6.621.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314151, the canonical program `A314151.P18144862648953795625` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314151 has offset 0).

The definition of A314151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314151.P18144862648953795625

`A312933(n)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314151

/-- `A312933(n)+n` -/
def P18144862648953795625.Spec : Prop :=
  ∀ n, P18144862648953795625.a n = A314151 n

theorem P18144862648953795625.correct : P18144862648953795625.Spec := by
  intro n
  simp only [A314151]

end A314151

/-! ## A314151.P476964248041584525

`abs(10*n-A314836(n))`
-/

namespace A314151.P476964248041584525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314836 n|

end

end A314151.P476964248041584525

namespace A314151

/-- `abs(10*n-A314836(n))` -/
def P476964248041584525.Spec : Prop :=
  ∀ n, P476964248041584525.a n = A314151 n

end A314151

/-! ## A314151.P962065614435172642

`A310400(n)+A004396(n)`
-/

namespace A314151.P962065614435172642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n + A004396 n

end

end A314151.P962065614435172642

namespace A314151

/-- `A310400(n)+A004396(n)` -/
def P962065614435172642.Spec : Prop :=
  ∀ n, P962065614435172642.a n = A314151 n

end A314151

/-! ## A314151.P17644408908889983046

`A313622(n)+∑[A021913(n)]`
-/

namespace A314151.P17644408908889983046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314151.P17644408908889983046

namespace A314151

/-- `A313622(n)+∑[A021913(n)]` -/
def P17644408908889983046.Spec : Prop :=
  ∀ n, P17644408908889983046.a n = A314151 n

end A314151

/-! ## A314151.P5709896096839564704

`A313622(n)+Δ[A011848(n)]`
-/

namespace A314151.P5709896096839564704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n + (f1 (n + 1) - f1 n)

end

end A314151.P5709896096839564704

namespace A314151

/-- `A313622(n)+Δ[A011848(n)]` -/
def P5709896096839564704.Spec : Prop :=
  ∀ n, P5709896096839564704.a n = A314151 n

end A314151

/-! ## A314151.P18217533728654708938

`A314066(n)+Δ[A011865(n)]`
-/

namespace A314151.P18217533728654708938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314066 n + (f1 (n + 1) - f1 n)

end

end A314151.P18217533728654708938

namespace A314151

/-- `A314066(n)+Δ[A011865(n)]` -/
def P18217533728654708938.Spec : Prop :=
  ∀ n, P18217533728654708938.a n = A314151 n

end A314151

/-! ## A314151.P11762591956106787502

`A313774(n)+A002264(n+1)`
-/

namespace A314151.P11762591956106787502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313774 n + A002264 (n + 1)

end

end A314151.P11762591956106787502

namespace A314151

/-- `A313774(n)+A002264(n+1)` -/
def P11762591956106787502.Spec : Prop :=
  ∀ n, P11762591956106787502.a n = A314151 n

end A314151

/-! ## A314151.P17475707662115377977

`A313622(n)+n-A004525(n)`
-/

namespace A314151.P17475707662115377977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n + ((n : ℤ) - A004525 n)

end

end A314151.P17475707662115377977

namespace A314151

/-- `A313622(n)+n-A004525(n)` -/
def P17475707662115377977.Spec : Prop :=
  ∀ n, P17475707662115377977.a n = A314151 n

end A314151

/-! ## A314151.P2044580372990665094

`A313774(n)+n-A004396(n)`
-/

namespace A314151.P2044580372990665094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313774 n + ((n : ℤ) - A004396 n)

end

end A314151.P2044580372990665094

namespace A314151

/-- `A313774(n)+n-A004396(n)` -/
def P2044580372990665094.Spec : Prop :=
  ∀ n, P2044580372990665094.a n = A314151 n

end A314151

/-! ## A314151.P14229897435198462790

`A005843(n)-(n-A312933(n))`
-/

namespace A314151.P14229897435198462790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312933 n)

end

end A314151.P14229897435198462790

namespace A314151

/-- `A005843(n)-(n-A312933(n))` -/
def P14229897435198462790.Spec : Prop :=
  ∀ n, P14229897435198462790.a n = A314151 n

end A314151

/-! ## A314151.P14181544355948716297

`A310400(n)+A002264(2*n+1)`
-/

namespace A314151.P14181544355948716297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n + A002264 (2 * n + 1)

end

end A314151.P14181544355948716297

namespace A314151

/-- `A310400(n)+A002264(2*n+1)` -/
def P14181544355948716297.Spec : Prop :=
  ∀ n, P14181544355948716297.a n = A314151 n

end A314151

/-! ## A314151.P8762249146943214792

`A310472(n)+A004525(A004396(n))`
-/

namespace A314151.P8762249146943214792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310472 n + A004525 (A004396 n).toNat

end

end A314151.P8762249146943214792

namespace A314151

/-- `A310472(n)+A004525(A004396(n))` -/
def P8762249146943214792.Spec : Prop :=
  ∀ n, P8762249146943214792.a n = A314151 n

end A314151

/-! ## A314151.P939111366071165441

`A313546(n)+n-A004525(A004396(n))`
-/

namespace A314151.P939111366071165441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313546 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A314151.P939111366071165441

namespace A314151

/-- `A313546(n)+n-A004525(A004396(n))` -/
def P939111366071165441.Spec : Prop :=
  ∀ n, P939111366071165441.a n = A314151 n

end A314151

/-! ## A314151.P17992703696906669293

`A313569(n)+n-A004396(A004525(n))`
-/

namespace A314151.P17992703696906669293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A314151.P17992703696906669293

namespace A314151

/-- `A313569(n)+n-A004396(A004525(n))` -/
def P17992703696906669293.Spec : Prop :=
  ∀ n, P17992703696906669293.a n = A314151 n

end A314151

/-! ## A314151.P8859719846700875936

`A313781(n)+A004396(n-A004525(n))`
-/

namespace A314151.P8859719846700875936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314151.P8859719846700875936

namespace A314151

/-- `A313781(n)+A004396(n-A004525(n))` -/
def P8859719846700875936.Spec : Prop :=
  ∀ n, P8859719846700875936.a n = A314151 n

end A314151

/-! ## A314151.P10319658163545671387

`A008486(n)+A313774(n)-A008576(n)`
-/

namespace A314151.P10319658163545671387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313774 n - A008576 n)

end

end A314151.P10319658163545671387

namespace A314151

/-- `A008486(n)+A313774(n)-A008576(n)` -/
def P10319658163545671387.Spec : Prop :=
  ∀ n, P10319658163545671387.a n = A314151 n

end A314151

/-! ## A314151.P18167166907015846296

`A008458(n)+A008574(n)-A314836(n)`
-/

namespace A314151.P18167166907015846296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314836 n)

end

end A314151.P18167166907015846296

namespace A314151

/-- `A008458(n)+A008574(n)-A314836(n)` -/
def P18167166907015846296.Spec : Prop :=
  ∀ n, P18167166907015846296.a n = A314151 n

end A314151

/-! ## A314151.P416735419241426964

`abs(A008593(n)-A315522(n))`
-/

namespace A314151.P416735419241426964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315522 n|

end

end A314151.P416735419241426964

namespace A314151

/-- `abs(A008593(n)-A315522(n))` -/
def P416735419241426964.Spec : Prop :=
  ∀ n, P416735419241426964.a n = A314151 n

end A314151

/-! ## A314151.P15422989788651350729

`A314222(n)-Δ[A011865(n)]`
-/

namespace A314151.P15422989788651350729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - (f1 (n + 1) - f1 n)

end

end A314151.P15422989788651350729

namespace A314151

/-- `A314222(n)-Δ[A011865(n)]` -/
def P15422989788651350729.Spec : Prop :=
  ∀ n, P15422989788651350729.a n = A314151 n

end A314151

/-!
# A314152: Coordination sequence Gal.6.645.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314152, there is no canonical definition to state claims against.
-/

/-! ## A314152.P13914445081100528311

`A301718(n)-A285427(A285450(n+1))`
-/

namespace A314152.P13914445081100528311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A285427 (A285450 (n + 1)).toNat

end

end A314152.P13914445081100528311

/-! ## A314152.P16419893570766527075

`A175337(A286736(2*n+3))+A158919(3*n)`
-/

namespace A314152.P16419893570766527075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175337 (A286736 (2 * n + 3)).toNat + A158919 (3 * n)

end

end A314152.P16419893570766527075

/-! ## A314152.P9825611107430532853

`A313900(n)+A277143(A001787(n))`
-/

namespace A314152.P9825611107430532853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n + A277143 (A001787 n).toNat

end

end A314152.P9825611107430532853

/-! ## A314152.P15141788964253748274

`A314133(n)+A086008(A259597(n))`
-/

namespace A314152.P15141788964253748274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314133 n + A086008 (A259597 n).toNat

end

end A314152.P15141788964253748274

/-! ## A314152.P96550913271569161

`A314239(n)-A060510(A000571(n))`
-/

namespace A314152.P96550913271569161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314239 n - A060510 (A000571 n).toNat

end

end A314152.P96550913271569161

/-!
# A314153: Coordination sequence Gal.6.487.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314153, there is no canonical definition to state claims against.
-/

/-! ## A314153.P17745652928905317336

`A313739(n)+A001221(A003239(n))`
-/

namespace A314153.P17745652928905317336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A001221 (A003239 n).toNat

end

end A314153.P17745652928905317336

/-! ## A314153.P11044378447425557877

`A008458(n)-A007895(A265278(n))`
-/

namespace A314153.P11044378447425557877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A007895 (A265278 n).toNat

end

end A314153.P11044378447425557877

/-! ## A314153.P2643900695261242188

`A314123(n)+A001221(A146392(n+1))`
-/

namespace A314153.P2643900695261242188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n + A001221 (A146392 (n + 1)).toNat

end

end A314153.P2643900695261242188

/-! ## A314153.P6025183563287575605

`A310465(n)+A001221(A222462(n+1))`
-/

namespace A314153.P6025183563287575605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310465 n + A001221 (A222462 (n + 1)).toNat

end

end A314153.P6025183563287575605

/-! ## A314153.P1806614996022758761

`A314047(n)+A127323(A014968(n))`
-/

namespace A314153.P1806614996022758761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314047 n + A127323 (A014968 n).toNat

end

end A314153.P1806614996022758761

/-!
# A314154: Coordination sequence Gal.6.673.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314154, there is no canonical definition to state claims against.
-/

/-! ## A314154.P4056099733333856295

`A315346(n)-A130717(n)`
-/

namespace A314154.P4056099733333856295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - A130717 n

end

end A314154.P4056099733333856295

/-! ## A314154.P2439667160054262063

`A315346(n)-Δ[A130507(n)]`
-/

namespace A314154.P2439667160054262063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - (f1 (n + 1) - f1 n)

end

end A314154.P2439667160054262063

/-! ## A314154.P752457977537226966

`A315346(n)-Δ[Δ[A130845(n)]]`
-/

namespace A314154.P752457977537226966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - (f1 (n + 1) - f1 n)

end

end A314154.P752457977537226966

/-! ## A314154.P15435305349031719016

`A315346(n)-Δ[A131358(A057353(n))]`
-/

namespace A314154.P15435305349031719016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A057353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - (f1 (n + 1) - f1 n)

end

end A314154.P15435305349031719016

/-! ## A314154.P9597275187179645430

`A315346(n)-Δ[A131358(A131742(n))]`
-/

namespace A314154.P9597275187179645430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A131742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - (f1 (n + 1) - f1 n)

end

end A314154.P9597275187179645430

/-! ## A314154.P8147994089269521816

`A315071(n)+A315346(n)-A315925(n)`
-/

namespace A314154.P8147994089269521816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + (A315346 n - A315925 n)

end

end A314154.P8147994089269521816

/-! ## A314154.P11103812904194687234

`A315346(n)-Δ[A131730(n*A021913(n))]`
-/

namespace A314154.P11103812904194687234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 ((n : ℤ) * A021913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - (f1 (n + 1) - f1 n)

end

end A314154.P11103812904194687234

/-! ## A314154.P1835704892315026526

`A315346(n)-Δ[A307012(A296805(n+1))]`
-/

namespace A314154.P1835704892315026526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A296805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - (f1 (n + 1) - f1 n)

end

end A314154.P1835704892315026526

/-!
# A314155: Coordination sequence Gal.6.660.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314155, there is no canonical definition to state claims against.
-/

/-! ## A314155.P6120337457648285774

`A301697(n)+A267525(A001519(n))`
-/

namespace A314155.P6120337457648285774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A267525 (A001519 n).toNat

end

end A314155.P6120337457648285774

/-! ## A314155.P12165931325430086871

`A313090(n)+A014200(A351870(n))`
-/

namespace A314155.P12165931325430086871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 n + A014200 (A351870 n).toNat

end

end A314155.P12165931325430086871

/-! ## A314155.P8714829672717313953

`A337546(A337517(n))+A301697(n)`
-/

namespace A314155.P8714829672717313953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337546 (A337517 n).toNat + A301697 n

end

end A314155.P8714829672717313953

/-! ## A314155.P8548533626666636089

`A314244(n)-A001221(A000111(n))`
-/

namespace A314155.P8548533626666636089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314244 n - A001221 (A000111 n).toNat

end

end A314155.P8548533626666636089

/-! ## A314155.P6063684295295053236

`A301697(n)+A189628(A141769(n+1))`
-/

namespace A314155.P6063684295295053236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A189628 (A141769 (n + 1)).toNat

end

end A314155.P6063684295295053236

/-!
# A314156: Coordination sequence Gal.6.651.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314156, the canonical program `A314156.P13342112998699093357` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314156 has offset 0).

The definition of A314156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314156.P13342112998699093357

`A313779(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314156

/-- `A313779(n)+∑[A022003(n)]` -/
def P13342112998699093357.Spec : Prop :=
  ∀ n, P13342112998699093357.a n = A314156 n

theorem P13342112998699093357.correct : P13342112998699093357.Spec := by
  intro n
  simp only [A314156]

end A314156

/-! ## A314156.P4004979831249727402

`A313779(n)+A002264(n+1)`
-/

namespace A314156.P4004979831249727402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + A002264 (n + 1)

end

end A314156.P4004979831249727402

namespace A314156

/-- `A313779(n)+A002264(n+1)` -/
def P4004979831249727402.Spec : Prop :=
  ∀ n, P4004979831249727402.a n = A314156 n

end A314156

/-! ## A314156.P13097220988602645329

`A313779(n)+n-A004396(n)`
-/

namespace A314156.P13097220988602645329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + ((n : ℤ) - A004396 n)

end

end A314156.P13097220988602645329

namespace A314156

/-- `A313779(n)+n-A004396(n)` -/
def P13097220988602645329.Spec : Prop :=
  ∀ n, P13097220988602645329.a n = A314156 n

end A314156

/-! ## A314156.P12467975644288523917

`A313779(n)+A008615(2*n+1)`
-/

namespace A314156.P12467975644288523917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + A008615 (2 * n + 1)

end

end A314156.P12467975644288523917

namespace A314156

/-- `A313779(n)+A008615(2*n+1)` -/
def P12467975644288523917.Spec : Prop :=
  ∀ n, P12467975644288523917.a n = A314156 n

end A314156

/-! ## A314156.P11650360847143434820

`A313779(n)+A110654(A004523(n))`
-/

namespace A314156.P11650360847143434820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + A110654 (A004523 n).toNat

end

end A314156.P11650360847143434820

namespace A314156

/-- `A313779(n)+A110654(A004523(n))` -/
def P11650360847143434820.Spec : Prop :=
  ∀ n, P11650360847143434820.a n = A314156 n

end A314156

/-! ## A314156.P4602802451346729431

`A008486(n)+A313779(n)-A008576(n)`
-/

namespace A314156.P4602802451346729431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313779 n - A008576 n)

end

end A314156.P4602802451346729431

namespace A314156

/-- `A008486(n)+A313779(n)-A008576(n)` -/
def P4602802451346729431.Spec : Prop :=
  ∀ n, P4602802451346729431.a n = A314156 n

end A314156

/-! ## A314156.P7696723062207741325

`A004396(A005843(n))-(n-A313779(n))`
-/

namespace A314156.P7696723062207741325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 n).toNat - ((n : ℤ) - A313779 n)

end

end A314156.P7696723062207741325

namespace A314156

/-- `A004396(A005843(n))-(n-A313779(n))` -/
def P7696723062207741325.Spec : Prop :=
  ∀ n, P7696723062207741325.a n = A314156 n

end A314156

/-! ## A314156.P12367126271152452920

`A313779(n)+A004526(A008611(A004273(n)))`
-/

namespace A314156.P12367126271152452920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + A004526 (A008611 (A004273 n).toNat).toNat

end

end A314156.P12367126271152452920

namespace A314156

/-- `A313779(n)+A004526(A008611(A004273(n)))` -/
def P12367126271152452920.Spec : Prop :=
  ∀ n, P12367126271152452920.a n = A314156 n

end A314156

/-!
# A314157: Coordination sequence Gal.6.623.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314157, the canonical program `A314157.P13095074004396682400` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314157 has offset 0).

The definition of A314157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314157.P4676648963831202941

`abs(10*n-A314832(n))`
-/

namespace A314157.P4676648963831202941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314832 n|

end

end A314157.P4676648963831202941

namespace A314157

/-- `abs(10*n-A314832(n))` -/
def P4676648963831202941.Spec : Prop :=
  ∀ n, P4676648963831202941.a n = A314157 n

end A314157

/-! ## A314157.P16143448477330650964

`2*A008706(n)-A314832(n)`
-/

namespace A314157.P16143448477330650964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314832 n

end

end A314157.P16143448477330650964

namespace A314157

/-- `2*A008706(n)-A314832(n)` -/
def P16143448477330650964.Spec : Prop :=
  ∀ n, P16143448477330650964.a n = A314157 n

end A314157

/-! ## A314157.P12004857860259856999

`A184418(A008574(n))-A314832(n)`
-/

namespace A314157.P12004857860259856999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A314832 n

end

end A314157.P12004857860259856999

namespace A314157

/-- `A184418(A008574(n))-A314832(n)` -/
def P12004857860259856999.Spec : Prop :=
  ∀ n, P12004857860259856999.a n = A314157 n

end A314157

/-! ## A314157.P318238769285262510

`A008458(n)+A008574(n)-A314832(n)`
-/

namespace A314157.P318238769285262510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314832 n)

end

end A314157.P318238769285262510

namespace A314157

/-- `A008458(n)+A008574(n)-A314832(n)` -/
def P318238769285262510.Spec : Prop :=
  ∀ n, P318238769285262510.a n = A314157 n

end A314157

/-! ## A314157.P13095074004396682400

`A310456(n)+A004525(A008458(n)-A310456(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314157

/-- `A310456(n)+A004525(A008458(n)-A310456(n))` -/
def P13095074004396682400.Spec : Prop :=
  ∀ n, P13095074004396682400.a n = A314157 n

theorem P13095074004396682400.correct : P13095074004396682400.Spec := by
  intro n
  simp only [A314157]

end A314157

/-! ## A314157.P6340572708090187584

`(A315650(n)+A310526(n))/2`
-/

namespace A314157.P6340572708090187584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315650 n + A310526 n : ℚ) / 2

end

end A314157.P6340572708090187584

namespace A314157

/-- `(A315650(n)+A310526(n))/2` -/
def P6340572708090187584.Spec : Prop :=
  ∀ n, P6340572708090187584.a n = (A314157 n : ℚ)

end A314157

/-! ## A314157.P5528667171932244839

`A314225(n)-Δ[A011864(n)]`
-/

namespace A314157.P5528667171932244839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314225 n - (f1 (n + 1) - f1 n)

end

end A314157.P5528667171932244839

namespace A314157

/-- `A314225(n)-Δ[A011864(n)]` -/
def P5528667171932244839.Spec : Prop :=
  ∀ n, P5528667171932244839.a n = A314157 n

end A314157

/-! ## A314157.P14349987760397460278

`A047263(A312944(n)+1)`
-/

namespace A314157.P14349987760397460278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A312944 n + 1).toNat

end

end A314157.P14349987760397460278

namespace A314157

/-- `A047263(A312944(n)+1)` -/
def P14349987760397460278.Spec : Prop :=
  ∀ n, P14349987760397460278.a n = A314157 n

end A314157

/-! ## A314157.P1322628807721557213

`A005843(A008706(n))-A314832(n)`
-/

namespace A314157.P1322628807721557213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314832 n

end

end A314157.P1322628807721557213

namespace A314157

/-- `A005843(A008706(n))-A314832(n)` -/
def P1322628807721557213.Spec : Prop :=
  ∀ n, P1322628807721557213.a n = A314157 n

end A314157

/-! ## A314157.P5557843264057878362

`A065502(A008458(n))-A314832(n)`
-/

namespace A314157.P5557843264057878362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314832 n

end

end A314157.P5557843264057878362

namespace A314157

/-- `A065502(A008458(n))-A314832(n)` -/
def P5557843264057878362.Spec : Prop :=
  ∀ n, P5557843264057878362.a n = A314157 n

end A314157

/-! ## A314157.P7876426731716677879

`A313113(2*n)-4*n`
-/

namespace A314157.P7876426731716677879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313113 (2 * n) - (4 * n : ℤ)

end

end A314157.P7876426731716677879

namespace A314157

/-- `A313113(2*n)-4*n` -/
def P7876426731716677879.Spec : Prop :=
  ∀ n, P7876426731716677879.a n = A314157 n

end A314157

/-! ## A314157.P707098250919972387

`2*A008574(2*n)-A315470(2*n)`
-/

namespace A314157.P707098250919972387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315470 (2 * n)

end

end A314157.P707098250919972387

namespace A314157

/-- `2*A008574(2*n)-A315470(2*n)` -/
def P707098250919972387.Spec : Prop :=
  ∀ n, P707098250919972387.a n = A314157 n

end A314157

/-! ## A314157.P17928462874781784235

`A310526(2*n)/(A019425(2*n)+1)`
-/

namespace A314157.P17928462874781784235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310526 (2 * n) : ℚ) / (A019425 (2 * n) + 1 : ℚ)

end

end A314157.P17928462874781784235

namespace A314157

/-- `A310526(2*n)/(A019425(2*n)+1)` -/
def P17928462874781784235.Spec : Prop :=
  ∀ n, P17928462874781784235.a n = (A314157 n : ℚ)

end A314157

/-! ## A314157.P6473587628709878141

`A310526(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A314157.P6473587628709878141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310526 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A314157.P6473587628709878141

namespace A314157

/-- `A310526(2*n)/(4*n+2-A004277(2*n))` -/
def P6473587628709878141.Spec : Prop :=
  ∀ n, P6473587628709878141.a n = (A314157 n : ℚ)

end A314157

/-! ## A314157.P3792626194859354587

`A004525(A310526(2*n))`
-/

namespace A314157.P3792626194859354587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310526 (2 * n)).toNat

end

end A314157.P3792626194859354587

namespace A314157

/-- `A004525(A310526(2*n))` -/
def P3792626194859354587.Spec : Prop :=
  ∀ n, P3792626194859354587.a n = A314157 n

end A314157

/-! ## A314157.P12036633913380542434

`A004526(A310526(2*n)+1)`
-/

namespace A314157.P12036633913380542434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310526 (2 * n) + 1).toNat

end

end A314157.P12036633913380542434

namespace A314157

/-- `A004526(A310526(2*n)+1)` -/
def P12036633913380542434.Spec : Prop :=
  ∀ n, P12036633913380542434.a n = A314157 n

end A314157

/-! ## A314157.P4564410659151812529

`A004525(A315492(n)+A310526(n))`
-/

namespace A314157.P4564410659151812529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315492 n + A310526 n).toNat

end

end A314157.P4564410659151812529

namespace A314157

/-- `A004525(A315492(n)+A310526(n))` -/
def P4564410659151812529.Spec : Prop :=
  ∀ n, P4564410659151812529.a n = A314157 n

end A314157

/-! ## A314157.P7380049456944158320

`A004525(A315650(n)+A310526(n))`
-/

namespace A314157.P7380049456944158320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315650 n + A310526 n).toNat

end

end A314157.P7380049456944158320

namespace A314157

/-- `A004525(A315650(n)+A310526(n))` -/
def P7380049456944158320.Spec : Prop :=
  ∀ n, P7380049456944158320.a n = A314157 n

end A314157

/-! ## A314157.P16487210000597602087

`A313831(A184418(2*n))-A008574(A184418(2*n))`
-/

namespace A314157.P16487210000597602087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 (A184418 (2 * n)).toNat - A008574 (A184418 (2 * n)).toNat

end

end A314157.P16487210000597602087

namespace A314157

/-- `A313831(A184418(2*n))-A008574(A184418(2*n))` -/
def P16487210000597602087.Spec : Prop :=
  ∀ n, P16487210000597602087.a n = A314157 n

end A314157

/-!
# A314158: Coordination sequence Gal.5.297.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314158, there is no canonical definition to state claims against.
-/

/-! ## A314158.P16436925102183248654

`A310420(n)+A001221(A071731(n))`
-/

namespace A314158.P16436925102183248654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310420 n + A001221 (A071731 n).toNat

end

end A314158.P16436925102183248654

/-! ## A314158.P16475765511477374931

`A053735(A000103(n+4))+A008706(n)`
-/

namespace A314158.P16475765511477374931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000103 (n + 4)).toNat + A008706 n

end

end A314158.P16475765511477374931

/-! ## A314158.P14810233658760520552

`A340999(A314087(2*n+1))+A314076(n)`
-/

namespace A314158.P14810233658760520552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A314087 (2 * n + 1)).toNat + 204) + A314076 n

end

end A314158.P14810233658760520552

/-! ## A314158.P9716572409696614059

`A313496(n)+A001222(A048642(n))`
-/

namespace A314158.P9716572409696614059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313496 n + A001222 (A048642 n).toNat

end

end A314158.P9716572409696614059

/-! ## A314158.P5134399612274898903

`A314116(n)+A001222(A147346(n+1))`
-/

namespace A314158.P5134399612274898903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314116 n + A001222 (A147346 (n + 1)).toNat

end

end A314158.P5134399612274898903

/-!
# A314159: Coordination sequence Gal.6.624.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314159, the canonical program `A314159.P9267206370846563594` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314159 has offset 0).

The definition of A314159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314159.P17034689602082399235

`abs(10*n-A314830(n))`
-/

namespace A314159.P17034689602082399235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314830 n|

end

end A314159.P17034689602082399235

namespace A314159

/-- `abs(10*n-A314830(n))` -/
def P17034689602082399235.Spec : Prop :=
  ∀ n, P17034689602082399235.a n = A314159 n

end A314159

/-! ## A314159.P9267206370846563594

`A310457(n)+A004525(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A314159

/-- `A310457(n)+A004525(n)` -/
def P9267206370846563594.Spec : Prop :=
  ∀ n, P9267206370846563594.a n = A314159 n

theorem P9267206370846563594.correct : P9267206370846563594.Spec := by
  intro n
  simp only [A314159]

end A314159

/-! ## A314159.P13496151527609973996

`abs(A314830(n)-A008592(n))`
-/

namespace A314159.P13496151527609973996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A314830 n - A008592 n|

end

end A314159.P13496151527609973996

namespace A314159

/-- `abs(A314830(n)-A008592(n))` -/
def P13496151527609973996.Spec : Prop :=
  ∀ n, P13496151527609973996.a n = A314159 n

end A314159

/-! ## A314159.P8175942840762563489

`A313781(n)+∑[A022003(n)]`
-/

namespace A314159.P8175942840762563489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314159.P8175942840762563489

namespace A314159

/-- `A313781(n)+∑[A022003(n)]` -/
def P8175942840762563489.Spec : Prop :=
  ∀ n, P8175942840762563489.a n = A314159 n

end A314159

/-! ## A314159.P14724171661799874160

`A313569(n)+∑[A131735(n)]`
-/

namespace A314159.P14724171661799874160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314159.P14724171661799874160

namespace A314159

/-- `A313569(n)+∑[A131735(n)]` -/
def P14724171661799874160.Spec : Prop :=
  ∀ n, P14724171661799874160.a n = A314159 n

end A314159

/-! ## A314159.P13812438233453184548

`A310457(n)+Δ[A054925(n)]`
-/

namespace A314159.P13812438233453184548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + (f1 (n + 1) - f1 n)

end

end A314159.P13812438233453184548

namespace A314159

/-- `A310457(n)+Δ[A054925(n)]` -/
def P13812438233453184548.Spec : Prop :=
  ∀ n, P13812438233453184548.a n = A314159 n

end A314159

/-! ## A314159.P4264361113607077513

`A311426(n)+record[A283971(n)]`
-/

namespace A314159.P4264361113607077513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311426 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314159.P4264361113607077513

namespace A314159

/-- `A311426(n)+record[A283971(n)]` -/
def P4264361113607077513.Spec : Prop :=
  ∀ n, P4264361113607077513.a n = A314159 n

end A314159

/-! ## A314159.P8969722500753821481

`A311426(n)+A042965(n+1)`
-/

namespace A314159.P8969722500753821481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311426 n + A042965 (n + 1)

end

end A314159.P8969722500753821481

namespace A314159

/-- `A311426(n)+A042965(n+1)` -/
def P8969722500753821481.Spec : Prop :=
  ∀ n, P8969722500753821481.a n = A314159 n

end A314159

/-! ## A314159.P13968075760839031720

`A311426(n)+A004396(2*n)`
-/

namespace A314159.P13968075760839031720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311426 n + A004396 (2 * n)

end

end A314159.P13968075760839031720

namespace A314159

/-- `A311426(n)+A004396(2*n)` -/
def P13968075760839031720.Spec : Prop :=
  ∀ n, P13968075760839031720.a n = A314159 n

end A314159

/-! ## A314159.P12047229298769191195

`A313781(n)+n-A004396(n)`
-/

namespace A314159.P12047229298769191195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + ((n : ℤ) - A004396 n)

end

end A314159.P12047229298769191195

namespace A314159

/-- `A313781(n)+n-A004396(n)` -/
def P12047229298769191195.Spec : Prop :=
  ∀ n, P12047229298769191195.a n = A314159 n

end A314159

/-! ## A314159.P13674369827751598008

`A310457(n)+n-Δ[A011848(n)]`
-/

namespace A314159.P13674369827751598008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314159.P13674369827751598008

namespace A314159

/-- `A310457(n)+n-Δ[A011848(n)]` -/
def P13674369827751598008.Spec : Prop :=
  ∀ n, P13674369827751598008.a n = A314159 n

end A314159

/-! ## A314159.P8317128252524052443

`A042965(n+1)+A313781(n)-n`
-/

namespace A314159.P8317128252524052443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A313781 n - (n : ℤ))

end

end A314159.P8317128252524052443

namespace A314159

/-- `A042965(n+1)+A313781(n)-n` -/
def P8317128252524052443.Spec : Prop :=
  ∀ n, P8317128252524052443.a n = A314159 n

end A314159

/-! ## A314159.P11707581456429874064

`A310472(n)+A004396(A004525(n))`
-/

namespace A314159.P11707581456429874064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310472 n + A004396 (A004525 n).toNat

end

end A314159.P11707581456429874064

namespace A314159

/-- `A310472(n)+A004396(A004525(n))` -/
def P11707581456429874064.Spec : Prop :=
  ∀ n, P11707581456429874064.a n = A314159 n

end A314159

/-! ## A314159.P12304272723931829405

`A005843(n)+A311426(n)-A004396(n)`
-/

namespace A314159.P12304272723931829405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A311426 n - A004396 n)

end

end A314159.P12304272723931829405

namespace A314159

/-- `A005843(n)+A311426(n)-A004396(n)` -/
def P12304272723931829405.Spec : Prop :=
  ∀ n, P12304272723931829405.a n = A314159 n

end A314159

/-! ## A314159.P10076461748013653235

`A313569(n)+n-A004525(A004396(n))`
-/

namespace A314159.P10076461748013653235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A314159.P10076461748013653235

namespace A314159

/-- `A313569(n)+n-A004525(A004396(n))` -/
def P10076461748013653235.Spec : Prop :=
  ∀ n, P10076461748013653235.a n = A314159 n

end A314159

/-! ## A314159.P1412935405288355482

`A313791(n)+A004396(n-A004525(n))`
-/

namespace A314159.P1412935405288355482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314159.P1412935405288355482

namespace A314159

/-- `A313791(n)+A004396(n-A004525(n))` -/
def P1412935405288355482.Spec : Prop :=
  ∀ n, P1412935405288355482.a n = A314159 n

end A314159

/-! ## A314159.P8800888651041795739

`A008574(n)+A311426(n)-A008576(n)`
-/

namespace A314159.P8800888651041795739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311426 n - A008576 n)

end

end A314159.P8800888651041795739

namespace A314159

/-- `A008574(n)+A311426(n)-A008576(n)` -/
def P8800888651041795739.Spec : Prop :=
  ∀ n, P8800888651041795739.a n = A314159 n

end A314159

/-! ## A314159.P9402450284491145164

`A008486(n)+A313781(n)-A008576(n)`
-/

namespace A314159.P9402450284491145164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313781 n - A008576 n)

end

end A314159.P9402450284491145164

namespace A314159

/-- `A008486(n)+A313781(n)-A008576(n)` -/
def P9402450284491145164.Spec : Prop :=
  ∀ n, P9402450284491145164.a n = A314159 n

end A314159

/-! ## A314159.P10618216835154623713

`A008458(n)+A008574(n)-A314830(n)`
-/

namespace A314159.P10618216835154623713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314830 n)

end

end A314159.P10618216835154623713

namespace A314159

/-- `A008458(n)+A008574(n)-A314830(n)` -/
def P10618216835154623713.Spec : Prop :=
  ∀ n, P10618216835154623713.a n = A314159 n

end A314159

/-!
# A314160: Coordination sequence Gal.6.650.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314160, the canonical program `A314160.P11818790826256901571` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314160 has offset 0).

The definition of A314160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314160.P11818790826256901571

`A008458(n)+A311914(n)-A250120(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314160

/-- `A008458(n)+A311914(n)-A250120(n)` -/
def P11818790826256901571.Spec : Prop :=
  ∀ n, P11818790826256901571.a n = A314160 n

theorem P11818790826256901571.correct : P11818790826256901571.Spec := by
  intro n
  simp only [A314160]

end A314160

/-! ## A314160.P2730621060553976470

`A310503(n)+A315273(n)-A250120(n)`
-/

namespace A314160.P2730621060553976470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n + (A315273 n - A250120 n)

end

end A314160.P2730621060553976470

namespace A314160

/-- `A310503(n)+A315273(n)-A250120(n)` -/
def P2730621060553976470.Spec : Prop :=
  ∀ n, P2730621060553976470.a n = A314160 n

end A314160

/-! ## A314160.P14673744080315531090

`A313694(n)+A313923(n)-A250120(n)`
-/

namespace A314160.P14673744080315531090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n + (A313923 n - A250120 n)

end

end A314160.P14673744080315531090

namespace A314160

/-- `A313694(n)+A313923(n)-A250120(n)` -/
def P14673744080315531090.Spec : Prop :=
  ∀ n, P14673744080315531090.a n = A314160 n

end A314160

/-! ## A314160.P8961342050808955298

`A313147(n)+A315511(n)-A250120(n)`
-/

namespace A314160.P8961342050808955298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n + (A315511 n - A250120 n)

end

end A314160.P8961342050808955298

namespace A314160

/-- `A313147(n)+A315511(n)-A250120(n)` -/
def P8961342050808955298.Spec : Prop :=
  ∀ n, P8961342050808955298.a n = A314160 n

end A314160

/-! ## A314160.P14988031171314506170

`A313289(n)+A315452(n)-A250120(n)`
-/

namespace A314160.P14988031171314506170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313289 n + (A315452 n - A250120 n)

end

end A314160.P14988031171314506170

namespace A314160

/-- `A313289(n)+A315452(n)-A250120(n)` -/
def P14988031171314506170.Spec : Prop :=
  ∀ n, P14988031171314506170.a n = A314160 n

end A314160

/-! ## A314160.P12426091519725091310

`A314148(n)+A315032(n)-A250120(n)`
-/

namespace A314160.P12426091519725091310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314148 n + (A315032 n - A250120 n)

end

end A314160.P12426091519725091310

namespace A314160

/-- `A314148(n)+A315032(n)-A250120(n)` -/
def P12426091519725091310.Spec : Prop :=
  ∀ n, P12426091519725091310.a n = A314160 n

end A314160

/-! ## A314160.P12823505641079911292

`A313051(n)+A315541(n)-A250120(n)`
-/

namespace A314160.P12823505641079911292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + (A315541 n - A250120 n)

end

end A314160.P12823505641079911292

namespace A314160

/-- `A313051(n)+A315541(n)-A250120(n)` -/
def P12823505641079911292.Spec : Prop :=
  ∀ n, P12823505641079911292.a n = A314160 n

end A314160

/-!
# A314161: Coordination sequence Gal.4.140.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314161, the canonical program `A314161.P400528877634276167` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314161 has offset 0).

The definition of A314161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314161.P16117186234750660812

`a(n-1)+dr(xor(4, 27*n))+1` with `a(0)=1, a(1)=5`
-/

namespace A314161.P16117186234750660812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + SequenceMachineLib.digitalRoot (Nat.xor 4 (27 * n) : ℤ) + 1

end

end A314161.P16117186234750660812

namespace A314161

/-- `a(n-1)+dr(xor(4, 27*n))+1` -/
def P16117186234750660812.Spec : Prop :=
  ∀ n, (P16117186234750660812.a n : ℤ) = A314161 n

end A314161

/-! ## A314161.P400528877634276167

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=16, a(4)=22, a(5)=28, a(6)=33`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A314161

/-- `2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P400528877634276167.Spec : Prop :=
  ∀ n, P400528877634276167.a n = A314161 n

theorem P400528877634276167.correct : P400528877634276167.Spec := by
  intro n
  simp only [A314161]

end A314161

/-! ## A314161.P11646896214473154553

`A312943(n)+n`
-/

namespace A314161.P11646896214473154553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + (n : ℤ)

end

end A314161.P11646896214473154553

namespace A314161

/-- `A312943(n)+n` -/
def P11646896214473154553.Spec : Prop :=
  ∀ n, P11646896214473154553.a n = A314161 n

end A314161

/-! ## A314161.P15009968556114234322

`abs(10*n-A314829(n))`
-/

namespace A314161.P15009968556114234322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314829 n|

end

end A314161.P15009968556114234322

namespace A314161

/-- `abs(10*n-A314829(n))` -/
def P15009968556114234322.Spec : Prop :=
  ∀ n, P15009968556114234322.a n = A314161 n

end A314161

/-! ## A314161.P9092246756043583499

`A310458(n)+A004525(n)`
-/

namespace A314161.P9092246756043583499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + A004525 n

end

end A314161.P9092246756043583499

namespace A314161

/-- `A310458(n)+A004525(n)` -/
def P9092246756043583499.Spec : Prop :=
  ∀ n, P9092246756043583499.a n = A314161 n

end A314161

/-! ## A314161.P10913891090199435687

`A315685(n)-A046978(n)`
-/

namespace A314161.P10913891090199435687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - A046978 n

end

end A314161.P10913891090199435687

namespace A314161

/-- `A315685(n)-A046978(n)` -/
def P10913891090199435687.Spec : Prop :=
  ∀ n, P10913891090199435687.a n = A314161 n

end A314161

/-! ## A314161.P6725906360999612604

`A310458(n)+Δ[A054925(n)]`
-/

namespace A314161.P6725906360999612604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + (f1 (n + 1) - f1 n)

end

end A314161.P6725906360999612604

namespace A314161

/-- `A310458(n)+Δ[A054925(n)]` -/
def P6725906360999612604.Spec : Prop :=
  ∀ n, P6725906360999612604.a n = A314161 n

end A314161

/-! ## A314161.P5617586670836220892

`(A310419(n)+A008458(n))/2`
-/

namespace A314161.P5617586670836220892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310419 n + A008458 n : ℚ) / 2

end

end A314161.P5617586670836220892

namespace A314161

/-- `(A310419(n)+A008458(n))/2` -/
def P5617586670836220892.Spec : Prop :=
  ∀ n, P5617586670836220892.a n = (A314161 n : ℚ)

end A314161

/-! ## A314161.P8186391316293935508

`A313635(n)+n-A004525(n)`
-/

namespace A314161.P8186391316293935508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + ((n : ℤ) - A004525 n)

end

end A314161.P8186391316293935508

namespace A314161

/-- `A313635(n)+n-A004525(n)` -/
def P8186391316293935508.Spec : Prop :=
  ∀ n, P8186391316293935508.a n = A314161 n

end A314161

/-! ## A314161.P987537418643398033

`A313480(n)+n-A046978(n)`
-/

namespace A314161.P987537418643398033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + ((n : ℤ) - A046978 n)

end

end A314161.P987537418643398033

namespace A314161

/-- `A313480(n)+n-A046978(n)` -/
def P987537418643398033.Spec : Prop :=
  ∀ n, P987537418643398033.a n = A314161 n

end A314161

/-! ## A314161.P4661491717764011309

`A314829(n)+n-A188510(n)`
-/

namespace A314161.P4661491717764011309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + ((n : ℤ) - A188510 n)

end

end A314161.P4661491717764011309

namespace A314161

/-- `A314829(n)+n-A188510(n)` -/
def P4661491717764011309.Spec : Prop :=
  ∀ n, P4661491717764011309.a n = A314161 n

end A314161

/-! ## A314161.P18389600585418236052

`A313115(n)+n-Δ[A011861(n)]`
-/

namespace A314161.P18389600585418236052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314161.P18389600585418236052

namespace A314161

/-- `A313115(n)+n-Δ[A011861(n)]` -/
def P18389600585418236052.Spec : Prop :=
  ∀ n, P18389600585418236052.a n = A314161 n

end A314161

/-! ## A314161.P5046647813275055999

`A004273(2*n)+∪[4*n+1, A083120(n+2)]`
-/

namespace A314161.P5046647813275055999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A314161.P5046647813275055999

namespace A314161

/-- `A004273(2*n)+∪[4*n+1, A083120(n+2)]` -/
def P5046647813275055999.Spec : Prop :=
  ∀ n, P5046647813275055999.a n = A314161 n

end A314161

/-! ## A314161.P10841670501457932416

`A310397(n)+A004525(A004525(n)+n)`
-/

namespace A314161.P10841670501457932416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A314161.P10841670501457932416

namespace A314161

/-- `A310397(n)+A004525(A004525(n)+n)` -/
def P10841670501457932416.Spec : Prop :=
  ∀ n, P10841670501457932416.a n = A314161 n

end A314161

/-! ## A314161.P8676619079335523043

`A310530(n)+A046978(A046978(n)+n)`
-/

namespace A314161.P8676619079335523043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A314161.P8676619079335523043

namespace A314161

/-- `A310530(n)+A046978(A046978(n)+n)` -/
def P8676619079335523043.Spec : Prop :=
  ∀ n, P8676619079335523043.a n = A314161 n

end A314161

/-! ## A314161.P8697051140959357137

`A313561(n)+n-A004525(A004525(n))`
-/

namespace A314161.P8697051140959357137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A314161.P8697051140959357137

namespace A314161

/-- `A313561(n)+n-A004525(A004525(n))` -/
def P8697051140959357137.Spec : Prop :=
  ∀ n, P8697051140959357137.a n = A314161 n

end A314161

/-! ## A314161.P2264438377630123090

`A313793(n)+A004525(n-A004525(n))`
-/

namespace A314161.P2264438377630123090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A314161.P2264438377630123090

namespace A314161

/-- `A313793(n)+A004525(n-A004525(n))` -/
def P2264438377630123090.Spec : Prop :=
  ∀ n, P2264438377630123090.a n = A314161 n

end A314161

/-! ## A314161.P15641004632920783711

`A008458(n)+A008574(n)-A314829(n)`
-/

namespace A314161.P15641004632920783711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314829 n)

end

end A314161.P15641004632920783711

namespace A314161

/-- `A008458(n)+A008574(n)-A314829(n)` -/
def P15641004632920783711.Spec : Prop :=
  ∀ n, P15641004632920783711.a n = A314161 n

end A314161

/-! ## A314161.P3107403229129575800

`A004274(2*n+1)+∪[A004274(2*n), A083120(n+2)]`
-/

namespace A314161.P3107403229129575800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (2 * n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A314161.P3107403229129575800

namespace A314161

/-- `A004274(2*n+1)+∪[A004274(2*n), A083120(n+2)]` -/
def P3107403229129575800.Spec : Prop :=
  ∀ n, P3107403229129575800.a n = A314161 n

end A314161

/-! ## A314161.P2698464618016228649

`A311843(n)+A004525(A005843(n)+A004525(n))`
-/

namespace A314161.P2698464618016228649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A004525 (A005843 n + A004525 n).toNat

end

end A314161.P2698464618016228649

namespace A314161

/-- `A311843(n)+A004525(A005843(n)+A004525(n))` -/
def P2698464618016228649.Spec : Prop :=
  ∀ n, P2698464618016228649.a n = A314161 n

end A314161

/-!
# A314162: Coordination sequence Gal.5.298.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314162, there is no canonical definition to state claims against.
-/

/-! ## A314162.P17778553475810322915

`A314221(n)-A023971(A000079(n))`
-/

namespace A314162.P17778553475810322915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314221 n - A023971 (A000079 n).toNat

end

end A314162.P17778553475810322915

/-! ## A314162.P5667729091051120045

`A314152(n)+A089809(A265774(n+1))`
-/

namespace A314162.P5667729091051120045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314152 n + A089809 (A265774 (n + 1)).toNat

end

end A314162.P5667729091051120045

/-! ## A314162.P16589461914049377802

`A312943(n)+A000523(A266232(n))`
-/

namespace A314162.P16589461914049377802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A000523 (A266232 n).toNat

end

end A314162.P16589461914049377802

/-! ## A314162.P7600918283378324585

`A314164(n)-A055641(A114105(n+1))`
-/

namespace A314162.P7600918283378324585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n - A055641 (A114105 (n + 1)).toNat

end

end A314162.P7600918283378324585

/-! ## A314162.P14641302532082834237

`A314152(n)+A025435(A226489(3*n+1))`
-/

namespace A314162.P14641302532082834237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314152 n + A025435 (A226489 (3 * n + 1)).toNat

end

end A314162.P14641302532082834237

/-!
# A314163: Coordination sequence Gal.5.301.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314163, the canonical program `A314163.P15135266397834481260` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314163 has offset 0).

The definition of A314163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314163.P1565429695014520171

`abs(10*n-A314828(n))`
-/

namespace A314163.P1565429695014520171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314828 n|

end

end A314163.P1565429695014520171

namespace A314163

/-- `abs(10*n-A314828(n))` -/
def P1565429695014520171.Spec : Prop :=
  ∀ n, P1565429695014520171.a n = A314163 n

end A314163

/-! ## A314163.P3949389822407977468

`A311458(n)+∑[A101825(n)]`
-/

namespace A314163.P3949389822407977468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314163.P3949389822407977468

namespace A314163

/-- `A311458(n)+∑[A101825(n)]` -/
def P3949389822407977468.Spec : Prop :=
  ∀ n, P3949389822407977468.a n = A314163 n

end A314163

/-! ## A314163.P10982658772426270805

`A311458(n)+record[A283971(n)]`
-/

namespace A314163.P10982658772426270805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314163.P10982658772426270805

namespace A314163

/-- `A311458(n)+record[A283971(n)]` -/
def P10982658772426270805.Spec : Prop :=
  ∀ n, P10982658772426270805.a n = A314163 n

end A314163

/-! ## A314163.P17651898427816362360

`A311458(n)+A042965(n+1)`
-/

namespace A314163.P17651898427816362360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A042965 (n + 1)

end

end A314163.P17651898427816362360

namespace A314163

/-- `A311458(n)+A042965(n+1)` -/
def P17651898427816362360.Spec : Prop :=
  ∀ n, P17651898427816362360.a n = A314163 n

end A314163

/-! ## A314163.P2691745640768973533

`A311458(n)+A004396(2*n)`
-/

namespace A314163.P2691745640768973533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A004396 (2 * n)

end

end A314163.P2691745640768973533

namespace A314163

/-- `A311458(n)+A004396(2*n)` -/
def P2691745640768973533.Spec : Prop :=
  ∀ n, P2691745640768973533.a n = A314163 n

end A314163

/-! ## A314163.P18437516336845075717

`(A310421(n)+A008458(n))/2`
-/

namespace A314163.P18437516336845075717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310421 n + A008458 n : ℚ) / 2

end

end A314163.P18437516336845075717

namespace A314163

/-- `(A310421(n)+A008458(n))/2` -/
def P18437516336845075717.Spec : Prop :=
  ∀ n, P18437516336845075717.a n = (A314163 n : ℚ)

end A314163

/-! ## A314163.P2798452695357089628

`A310462(n)+A004396(A004396(n))`
-/

namespace A314163.P2798452695357089628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310462 n + A004396 (A004396 n).toNat

end

end A314163.P2798452695357089628

namespace A314163

/-- `A310462(n)+A004396(A004396(n))` -/
def P2798452695357089628.Spec : Prop :=
  ∀ n, P2798452695357089628.a n = A314163 n

end A314163

/-! ## A314163.P6916480106131753072

`A311458(n)+A002264(A005408(2*n))`
-/

namespace A314163.P6916480106131753072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A002264 (A005408 (2 * n)).toNat

end

end A314163.P6916480106131753072

namespace A314163

/-- `A311458(n)+A002264(A005408(2*n))` -/
def P6916480106131753072.Spec : Prop :=
  ∀ n, P6916480106131753072.a n = A314163 n

end A314163

/-! ## A314163.P6873542553859518610

`A311458(n)+A004525(A004773(2*n))`
-/

namespace A314163.P6873542553859518610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A004525 (A004773 (2 * n)).toNat

end

end A314163.P6873542553859518610

namespace A314163

/-- `A311458(n)+A004525(A004773(2*n))` -/
def P6873542553859518610.Spec : Prop :=
  ∀ n, P6873542553859518610.a n = A314163 n

end A314163

/-! ## A314163.P15135266397834481260

`A312908(n)+A004396(A004396(n)+n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314163

/-- `A312908(n)+A004396(A004396(n)+n)` -/
def P15135266397834481260.Spec : Prop :=
  ∀ n, P15135266397834481260.a n = A314163 n

theorem P15135266397834481260.correct : P15135266397834481260.Spec := by
  intro n
  simp only [A314163]

end A314163

/-! ## A314163.P12329642975999094892

`A313799(n)+A004396(n-A004396(n))`
-/

namespace A314163.P12329642975999094892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314163.P12329642975999094892

namespace A314163

/-- `A313799(n)+A004396(n-A004396(n))` -/
def P12329642975999094892.Spec : Prop :=
  ∀ n, P12329642975999094892.a n = A314163 n

end A314163

/-! ## A314163.P11958778021143688845

`A008574(n)+A311458(n)-A008576(n)`
-/

namespace A314163.P11958778021143688845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311458 n - A008576 n)

end

end A314163.P11958778021143688845

namespace A314163

/-- `A008574(n)+A311458(n)-A008576(n)` -/
def P11958778021143688845.Spec : Prop :=
  ∀ n, P11958778021143688845.a n = A314163 n

end A314163

/-! ## A314163.P17169473274635532316

`A008458(n)+A008574(n)-A314828(n)`
-/

namespace A314163.P17169473274635532316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314828 n)

end

end A314163.P17169473274635532316

namespace A314163

/-- `A008458(n)+A008574(n)-A314828(n)` -/
def P17169473274635532316.Spec : Prop :=
  ∀ n, P17169473274635532316.a n = A314163 n

end A314163

/-! ## A314163.P10714392990680038095

`A005843(n)+A005843(A008574(n))-A314828(n)`
-/

namespace A314163.P10714392990680038095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314828 n)

end

end A314163.P10714392990680038095

namespace A314163

/-- `A005843(n)+A005843(A008574(n))-A314828(n)` -/
def P10714392990680038095.Spec : Prop :=
  ∀ n, P10714392990680038095.a n = A314163 n

end A314163

/-! ## A314163.P17871035233281193625

`A310421(n)+A001281(A008458(n)-A310421(n))`
-/

namespace A314163.P17871035233281193625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310421 n + A001281 (A008458 n - A310421 n).toNat

end

end A314163.P17871035233281193625

namespace A314163

/-- `A310421(n)+A001281(A008458(n)-A310421(n))` -/
def P17871035233281193625.Spec : Prop :=
  ∀ n, P17871035233281193625.a n = A314163 n

end A314163

/-! ## A314163.P9128600144700187718

`A315653(n)-A134667(A004396(n))`
-/

namespace A314163.P9128600144700187718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315653 n - A134667 (A004396 n).toNat

end

end A314163.P9128600144700187718

namespace A314163

/-- `A315653(n)-A134667(A004396(n))` -/
def P9128600144700187718.Spec : Prop :=
  ∀ n, P9128600144700187718.a n = A314163 n

end A314163

/-! ## A314163.P13271887682567764585

`A314251(n)-Δ[A011862(n)]`
-/

namespace A314163.P13271887682567764585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - (f1 (n + 1) - f1 n)

end

end A314163.P13271887682567764585

namespace A314163

/-- `A314251(n)-Δ[A011862(n)]` -/
def P13271887682567764585.Spec : Prop :=
  ∀ n, P13271887682567764585.a n = A314163 n

end A314163

/-! ## A314163.P1861524852822648909

`A004396(A004396(n))+A314251(n)-A004396(n)`
-/

namespace A314163.P1861524852822648909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A314251 n - A004396 n)

end

end A314163.P1861524852822648909

namespace A314163

/-- `A004396(A004396(n))+A314251(n)-A004396(n)` -/
def P1861524852822648909.Spec : Prop :=
  ∀ n, P1861524852822648909.a n = A314163 n

end A314163

/-! ## A314163.P2157121442316870106

`A005843(A008574(n)+n)-A314828(n)`
-/

namespace A314163.P2157121442316870106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314828 n

end

end A314163.P2157121442316870106

namespace A314163

/-- `A005843(A008574(n)+n)-A314828(n)` -/
def P2157121442316870106.Spec : Prop :=
  ∀ n, P2157121442316870106.a n = A314163 n

end A314163

/-! ## A314163.P15706166211562057699

`A004396(A313799(n))+2*n`
-/

namespace A314163.P15706166211562057699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313799 n).toNat + (2 * n : ℤ)

end

end A314163.P15706166211562057699

namespace A314163

/-- `A004396(A313799(n))+2*n` -/
def P15706166211562057699.Spec : Prop :=
  ∀ n, P15706166211562057699.a n = A314163 n

end A314163

/-!
# A314164: Coordination sequence Gal.5.302.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314164, the canonical program `A314164.P3889961829732098224` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314164 has offset 0).

The definition of A314164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314164.P7162816325014631989

`A312948(n)+n`
-/

namespace A314164.P7162816325014631989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + (n : ℤ)

end

end A314164.P7162816325014631989

namespace A314164

/-- `A312948(n)+n` -/
def P7162816325014631989.Spec : Prop :=
  ∀ n, P7162816325014631989.a n = A314164 n

end A314164

/-! ## A314164.P17533994368863589290

`abs(10*n-A314827(n))`
-/

namespace A314164.P17533994368863589290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314827 n|

end

end A314164.P17533994368863589290

namespace A314164

/-- `abs(10*n-A314827(n))` -/
def P17533994368863589290.Spec : Prop :=
  ∀ n, P17533994368863589290.a n = A314164 n

end A314164

/-! ## A314164.P11905443053898937830

`A312928(n)+A151988(n)`
-/

namespace A314164.P11905443053898937830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n + A151988 n

end

end A314164.P11905443053898937830

namespace A314164

/-- `A312928(n)+A151988(n)` -/
def P11905443053898937830.Spec : Prop :=
  ∀ n, P11905443053898937830.a n = A314164 n

end A314164

/-! ## A314164.P3815782426695624754

`A315698(n)-A330025(n)`
-/

namespace A314164.P3815782426695624754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315698 n - A330025 n

end

end A314164.P3815782426695624754

namespace A314164

/-- `A315698(n)-A330025(n)` -/
def P3815782426695624754.Spec : Prop :=
  ∀ n, P3815782426695624754.a n = A314164 n

end A314164

/-! ## A314164.P14342022076625032189

`abs(A008593(n)-A315518(n))`
-/

namespace A314164.P14342022076625032189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315518 n|

end

end A314164.P14342022076625032189

namespace A314164

/-- `abs(A008593(n)-A315518(n))` -/
def P14342022076625032189.Spec : Prop :=
  ∀ n, P14342022076625032189.a n = A314164 n

end A314164

/-! ## A314164.P17422043645759986156

`A311289(n)+A047299(n+1)`
-/

namespace A314164.P17422043645759986156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A047299 (n + 1)

end

end A314164.P17422043645759986156

namespace A314164

/-- `A311289(n)+A047299(n+1)` -/
def P17422043645759986156.Spec : Prop :=
  ∀ n, P17422043645759986156.a n = A314164 n

end A314164

/-! ## A314164.P17780712092680496516

`A313752(n)+A057354(n+1)`
-/

namespace A314164.P17780712092680496516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n + A057354 (n + 1)

end

end A314164.P17780712092680496516

namespace A314164

/-- `A313752(n)+A057354(n+1)` -/
def P17780712092680496516.Spec : Prop :=
  ∀ n, P17780712092680496516.a n = A314164 n

end A314164

/-! ## A314164.P11045648683504730467

`(A310422(n)+A008458(n))/2`
-/

namespace A314164.P11045648683504730467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310422 n + A008458 n : ℚ) / 2

end

end A314164.P11045648683504730467

namespace A314164

/-- `(A310422(n)+A008458(n))/2` -/
def P11045648683504730467.Spec : Prop :=
  ∀ n, P11045648683504730467.a n = (A314164 n : ℚ)

end A314164

/-! ## A314164.P16447187392381743023

`A313537(n)+n-A330025(n)`
-/

namespace A314164.P16447187392381743023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n + ((n : ℤ) - A330025 n)

end

end A314164.P16447187392381743023

namespace A314164

/-- `A313537(n)+n-A330025(n)` -/
def P16447187392381743023.Spec : Prop :=
  ∀ n, P16447187392381743023.a n = A314164 n

end A314164

/-! ## A314164.P4544884485057576774

`A005843(n)-(n-A312948(n))`
-/

namespace A314164.P4544884485057576774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312948 n)

end

end A314164.P4544884485057576774

namespace A314164

/-- `A005843(n)-(n-A312948(n))` -/
def P4544884485057576774.Spec : Prop :=
  ∀ n, P4544884485057576774.a n = A314164 n

end A314164

/-! ## A314164.P15701302797300850045

`abs(A008592(n)+n-A315518(n))`
-/

namespace A314164.P15701302797300850045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315518 n)|

end

end A314164.P15701302797300850045

namespace A314164

/-- `abs(A008592(n)+n-A315518(n))` -/
def P15701302797300850045.Spec : Prop :=
  ∀ n, P15701302797300850045.a n = A314164 n

end A314164

/-! ## A314164.P8860375826768886043

`Δ[A011858(n)]+A311289(n)+n`
-/

namespace A314164.P8860375826768886043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A311289 n + (n : ℤ))

end

end A314164.P8860375826768886043

namespace A314164

/-- `Δ[A011858(n)]+A311289(n)+n` -/
def P8860375826768886043.Spec : Prop :=
  ∀ n, P8860375826768886043.a n = A314164 n

end A314164

/-! ## A314164.P3889961829732098224

`A313116(n)+A057354(2*n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314164

/-- `A313116(n)+A057354(2*n+1)` -/
def P3889961829732098224.Spec : Prop :=
  ∀ n, P3889961829732098224.a n = A314164 n

theorem P3889961829732098224.correct : P3889961829732098224.Spec := by
  intro n
  simp only [A314164]

end A314164

/-! ## A314164.P9205203881025375270

`A314252(n)-A047263(n+1)+n`
-/

namespace A314164.P9205203881025375270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A047263 (n + 1) + (n : ℤ)

end

end A314164.P9205203881025375270

namespace A314164

/-- `A314252(n)-A047263(n+1)+n` -/
def P9205203881025375270.Spec : Prop :=
  ∀ n, P9205203881025375270.a n = A314164 n

end A314164

/-! ## A314164.P3955372850606280405

`A008458(n)+A008574(n)-A314827(n)`
-/

namespace A314164.P3955372850606280405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314827 n)

end

end A314164.P3955372850606280405

namespace A314164

/-- `A008458(n)+A008574(n)-A314827(n)` -/
def P3955372850606280405.Spec : Prop :=
  ∀ n, P3955372850606280405.a n = A314164 n

end A314164

/-! ## A314164.P3987701154809067486

`A008458(n)+A311958(n)-A250120(n)`
-/

namespace A314164.P3987701154809067486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A311958 n - A250120 n)

end

end A314164.P3987701154809067486

namespace A314164

/-- `A008458(n)+A311958(n)-A250120(n)` -/
def P3987701154809067486.Spec : Prop :=
  ∀ n, P3987701154809067486.a n = A314164 n

end A314164

/-! ## A314164.P15773176960715098409

`A315691(n)-A330025(A330025(n)+n)`
-/

namespace A314164.P15773176960715098409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A314164.P15773176960715098409

namespace A314164

/-- `A315691(n)-A330025(A330025(n)+n)` -/
def P15773176960715098409.Spec : Prop :=
  ∀ n, P15773176960715098409.a n = A314164 n

end A314164

/-! ## A314164.P6304359056610476172

`A004396(A313801(n))+2*n`
-/

namespace A314164.P6304359056610476172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313801 n).toNat + (2 * n : ℤ)

end

end A314164.P6304359056610476172

namespace A314164

/-- `A004396(A313801(n))+2*n` -/
def P6304359056610476172.Spec : Prop :=
  ∀ n, P6304359056610476172.a n = A314164 n

end A314164

/-! ## A314164.P17325738843690730202

`A005843(n)+A004396(A313801(n))`
-/

namespace A314164.P17325738843690730202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313801 n).toNat

end

end A314164.P17325738843690730202

namespace A314164

/-- `A005843(n)+A004396(A313801(n))` -/
def P17325738843690730202.Spec : Prop :=
  ∀ n, P17325738843690730202.a n = A314164 n

end A314164

/-! ## A314164.P7656279826581223090

`A180004(2*A313752(n))-A313752(n)`
-/

namespace A314164.P7656279826581223090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (2 * A313752 n).toNat - A313752 n

end

end A314164.P7656279826581223090

namespace A314164

/-- `A180004(2*A313752(n))-A313752(n)` -/
def P7656279826581223090.Spec : Prop :=
  ∀ n, P7656279826581223090.a n = A314164 n

end A314164

/-!
# A314165: Coordination sequence Gal.5.307.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314165, the canonical program `A314165.P12623348579880038257` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314165 has offset 0).

The definition of A314165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314165.P16271576533612038959

`abs(10*n-A314826(n))`
-/

namespace A314165.P16271576533612038959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314826 n|

end

end A314165.P16271576533612038959

namespace A314165

/-- `abs(10*n-A314826(n))` -/
def P16271576533612038959.Spec : Prop :=
  ∀ n, P16271576533612038959.a n = A314165 n

end A314165

/-! ## A314165.P15527888972645118799

`(A310423(n)+A008458(n))/2`
-/

namespace A314165.P15527888972645118799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 n + A008458 n : ℚ) / 2

end

end A314165.P15527888972645118799

namespace A314165

/-- `(A310423(n)+A008458(n))/2` -/
def P15527888972645118799.Spec : Prop :=
  ∀ n, P15527888972645118799.a n = (A314165 n : ℚ)

end A314165

/-! ## A314165.P17940674120781611979

`A008458(n)+A008574(n)-A314826(n)`
-/

namespace A314165.P17940674120781611979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314826 n)

end

end A314165.P17940674120781611979

namespace A314165

/-- `A008458(n)+A008574(n)-A314826(n)` -/
def P17940674120781611979.Spec : Prop :=
  ∀ n, P17940674120781611979.a n = A314165 n

end A314165

/-! ## A314165.P11260525171056954684

`A005843(n)+A005843(A008574(n))-A314826(n)`
-/

namespace A314165.P11260525171056954684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A314826 n)

end

end A314165.P11260525171056954684

namespace A314165

/-- `A005843(n)+A005843(A008574(n))-A314826(n)` -/
def P11260525171056954684.Spec : Prop :=
  ∀ n, P11260525171056954684.a n = A314165 n

end A314165

/-! ## A314165.P5220153392745904051

`A310423(n)+A001281(A008458(n)-A310423(n))`
-/

namespace A314165.P5220153392745904051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310423 n + A001281 (A008458 n - A310423 n).toNat

end

end A314165.P5220153392745904051

namespace A314165

/-- `A310423(n)+A001281(A008458(n)-A310423(n))` -/
def P5220153392745904051.Spec : Prop :=
  ∀ n, P5220153392745904051.a n = A314165 n

end A314165

/-! ## A314165.P6717143790759481202

`A310423(n)+A004525(A008458(n)-A310423(n))`
-/

namespace A314165.P6717143790759481202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310423 n + A004525 (A008458 n - A310423 n).toNat

end

end A314165.P6717143790759481202

namespace A314165

/-- `A310423(n)+A004525(A008458(n)-A310423(n))` -/
def P6717143790759481202.Spec : Prop :=
  ∀ n, P6717143790759481202.a n = A314165 n

end A314165

/-! ## A314165.P12623348579880038257

`A310465(n)+A004525(A008458(n)-A310465(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314165

/-- `A310465(n)+A004525(A008458(n)-A310465(n))` -/
def P12623348579880038257.Spec : Prop :=
  ∀ n, P12623348579880038257.a n = A314165 n

theorem P12623348579880038257.correct : P12623348579880038257.Spec := by
  intro n
  simp only [A314165]

end A314165

/-! ## A314165.P12192763191087870622

`A008458(n)-A004526(A008458(n)-A310423(n))`
-/

namespace A314165.P12192763191087870622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A310423 n).toNat

end

end A314165.P12192763191087870622

namespace A314165

/-- `A008458(n)-A004526(A008458(n)-A310423(n))` -/
def P12192763191087870622.Spec : Prop :=
  ∀ n, P12192763191087870622.a n = A314165 n

end A314165

/-! ## A314165.P10995261994191270292

`A005843(A008574(n)+n)-A314826(n)`
-/

namespace A314165.P10995261994191270292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A314826 n

end

end A314165.P10995261994191270292

namespace A314165

/-- `A005843(A008574(n)+n)-A314826(n)` -/
def P10995261994191270292.Spec : Prop :=
  ∀ n, P10995261994191270292.a n = A314165 n

end A314165

/-! ## A314165.P14113589602203138013

`A008486(n)+A004526(A310423(n))`
-/

namespace A314165.P14113589602203138013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A310423 n).toNat

end

end A314165.P14113589602203138013

namespace A314165

/-- `A008486(n)+A004526(A310423(n))` -/
def P14113589602203138013.Spec : Prop :=
  ∀ n, P14113589602203138013.a n = A314165 n

end A314165

/-! ## A314165.P8428667121835697240

`A008585(n)+A004525(A310423(n))`
-/

namespace A314165.P8428667121835697240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A310423 n).toNat

end

end A314165.P8428667121835697240

namespace A314165

/-- `A008585(n)+A004525(A310423(n))` -/
def P8428667121835697240.Spec : Prop :=
  ∀ n, P8428667121835697240.a n = A314165 n

end A314165

/-! ## A314165.P6025401248928712763

`A004525(A310423(n))+A008588(n)/2`
-/

namespace A314165.P6025401248928712763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A310423 n).toNat : ℚ) + (A008588 n : ℚ) / 2

end

end A314165.P6025401248928712763

namespace A314165

/-- `A004525(A310423(n))+A008588(n)/2` -/
def P6025401248928712763.Spec : Prop :=
  ∀ n, P6025401248928712763.a n = (A314165 n : ℚ)

end A314165

/-! ## A314165.P7770935695039253001

`A004396(A313802(n))+2*n`
-/

namespace A314165.P7770935695039253001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313802 n).toNat + (2 * n : ℤ)

end

end A314165.P7770935695039253001

namespace A314165

/-- `A004396(A313802(n))+2*n` -/
def P7770935695039253001.Spec : Prop :=
  ∀ n, P7770935695039253001.a n = A314165 n

end A314165

/-! ## A314165.P14367823396045170373

`A005843(n)+A004396(A313802(n))`
-/

namespace A314165.P14367823396045170373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313802 n).toNat

end

end A314165.P14367823396045170373

namespace A314165

/-- `A005843(n)+A004396(A313802(n))` -/
def P14367823396045170373.Spec : Prop :=
  ∀ n, P14367823396045170373.a n = A314165 n

end A314165

/-! ## A314165.P11931425869722657674

`A004525(A008588(n))+A004525(A310423(n))`
-/

namespace A314165.P11931425869722657674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008588 n).toNat + A004525 (A310423 n).toNat

end

end A314165.P11931425869722657674

namespace A314165

/-- `A004525(A008588(n))+A004525(A310423(n))` -/
def P11931425869722657674.Spec : Prop :=
  ∀ n, P11931425869722657674.a n = A314165 n

end A314165

/-! ## A314165.P1564522252311822693

`A004525(A310423(n)+A008458(n))`
-/

namespace A314165.P1564522252311822693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310423 n + A008458 n).toNat

end

end A314165.P1564522252311822693

namespace A314165

/-- `A004525(A310423(n)+A008458(n))` -/
def P1564522252311822693.Spec : Prop :=
  ∀ n, P1564522252311822693.a n = A314165 n

end A314165

/-! ## A314165.P8361673623942702456

`A004525(A310423(n)+A008588(n))`
-/

namespace A314165.P8361673623942702456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310423 n + A008588 n).toNat

end

end A314165.P8361673623942702456

namespace A314165

/-- `A004525(A310423(n)+A008588(n))` -/
def P8361673623942702456.Spec : Prop :=
  ∀ n, P8361673623942702456.a n = A314165 n

end A314165

/-! ## A314165.P14854928094948100433

`A001057(A008458(n)+A310423(n)-1)`
-/

namespace A314165.P14854928094948100433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008458 n + (A310423 n - 1)).toNat

end

end A314165.P14854928094948100433

namespace A314165

/-- `A001057(A008458(n)+A310423(n)-1)` -/
def P14854928094948100433.Spec : Prop :=
  ∀ n, P14854928094948100433.a n = A314165 n

end A314165

/-! ## A314165.P14122261084586451720

`A001057(A008458(n)-(1-A310423(n)))`
-/

namespace A314165.P14122261084586451720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008458 n - (1 - A310423 n)).toNat

end

end A314165.P14122261084586451720

namespace A314165

/-- `A001057(A008458(n)-(1-A310423(n)))` -/
def P14122261084586451720.Spec : Prop :=
  ∀ n, P14122261084586451720.a n = A314165 n

end A314165

/-! ## A314165.P8792993106244066035

`A001281(A310423(n)+A008458(n))`
-/

namespace A314165.P8792993106244066035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310423 n + A008458 n).toNat

end

end A314165.P8792993106244066035

namespace A314165

/-- `A001281(A310423(n)+A008458(n))` -/
def P8792993106244066035.Spec : Prop :=
  ∀ n, P8792993106244066035.a n = A314165 n

end A314165

/-!
# A314166: Coordination sequence Gal.6.629.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314166, there is no canonical definition to state claims against.
-/

/-! ## A314166.P13599505682626626562

`xor(A178798(A057195(n+1)), A314167(n))`
-/

namespace A314166.P13599505682626626562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178798 (A057195 (n + 1)).toNat) (A314167 n)

end

end A314166.P13599505682626626562

/-! ## A314166.P358812985329316026

`A008458(n)-A123369(A317525(n+1))`
-/

namespace A314166.P358812985329316026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A123369 (A317525 (n + 1)).toNat

end

end A314166.P358812985329316026

/-! ## A314166.P3297731907681169368

`A314167(n)-A296084(A296087(n+1))`
-/

namespace A314166.P3297731907681169368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - A296084 (A296087 (n + 1)).toNat

end

end A314166.P3297731907681169368

/-! ## A314166.P6038186374383656125

`floor(log2(A175895(2*n+1)))`
-/

namespace A314166.P6038186374383656125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A175895 (2 * n + 1)).toNat

end

end A314166.P6038186374383656125

/-! ## A314166.P2797510702309586738

`A314167(A087051(n))`
-/

namespace A314166.P2797510702309586738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 (A087051 n).toNat

end

end A314166.P2797510702309586738

/-!
# A314167: Coordination sequence Gal.6.638.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314167, the canonical program `A314167.P1164199590412286505` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314167 has offset 0).

The definition of A314167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314167.P1164199590412286505

`a(n-1)+a(n-2)-2*a(n-4)+a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=16, a(4)=22, a(5)=28, a(6)=34, a(7)=40, a(8)=46`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A314167

/-- `a(n-1)+a(n-2)-2*a(n-4)+a(n-6)+a(n-7)-a(n-8)` -/
def P1164199590412286505.Spec : Prop :=
  ∀ n, P1164199590412286505.a n = A314167 n

theorem P1164199590412286505.correct : P1164199590412286505.Spec := by
  intro n
  simp only [A314167]

end A314167

/-! ## A314167.P17780383711707497292

`A312950(n)+n`
-/

namespace A314167.P17780383711707497292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + (n : ℤ)

end

end A314167.P17780383711707497292

namespace A314167

/-- `A312950(n)+n` -/
def P17780383711707497292.Spec : Prop :=
  ∀ n, P17780383711707497292.a n = A314167 n

end A314167

/-! ## A314167.P10536494406828927149

`A310405(n)+A004396(n)`
-/

namespace A314167.P10536494406828927149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310405 n + A004396 n

end

end A314167.P10536494406828927149

namespace A314167

/-- `A310405(n)+A004396(n)` -/
def P10536494406828927149.Spec : Prop :=
  ∀ n, P10536494406828927149.a n = A314167 n

end A314167

/-! ## A314167.P17689198680996331020

`A310459(n)+A004525(n)`
-/

namespace A314167.P17689198680996331020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310459 n + A004525 n

end

end A314167.P17689198680996331020

namespace A314167

/-- `A310459(n)+A004525(n)` -/
def P17689198680996331020.Spec : Prop :=
  ∀ n, P17689198680996331020.a n = A314167 n

end A314167

/-! ## A314167.P17996896138719630789

`A313789(n)+∑[A022003(n)]`
-/

namespace A314167.P17996896138719630789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314167.P17996896138719630789

namespace A314167

/-- `A313789(n)+∑[A022003(n)]` -/
def P17996896138719630789.Spec : Prop :=
  ∀ n, P17996896138719630789.a n = A314167 n

end A314167

/-! ## A314167.P13443736627762112540

`A313646(n)+Δ[A011848(n)]`
-/

namespace A314167.P13443736627762112540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n + (f1 (n + 1) - f1 n)

end

end A314167.P13443736627762112540

namespace A314167

/-- `A313646(n)+Δ[A011848(n)]` -/
def P13443736627762112540.Spec : Prop :=
  ∀ n, P13443736627762112540.a n = A314167 n

end A314167

/-! ## A314167.P2887887897147571447

`A313789(n)+A002264(n+1)`
-/

namespace A314167.P2887887897147571447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n + A002264 (n + 1)

end

end A314167.P2887887897147571447

namespace A314167

/-- `A313789(n)+A002264(n+1)` -/
def P2887887897147571447.Spec : Prop :=
  ∀ n, P2887887897147571447.a n = A314167 n

end A314167

/-! ## A314167.P5286371452895547455

`A311475(n)+A042965(n+1)`
-/

namespace A314167.P5286371452895547455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A042965 (n + 1)

end

end A314167.P5286371452895547455

namespace A314167

/-- `A311475(n)+A042965(n+1)` -/
def P5286371452895547455.Spec : Prop :=
  ∀ n, P5286371452895547455.a n = A314167 n

end A314167

/-! ## A314167.P9886540548062818801

`A311475(n)+A004396(2*n)`
-/

namespace A314167.P9886540548062818801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A004396 (2 * n)

end

end A314167.P9886540548062818801

namespace A314167

/-- `A311475(n)+A004396(2*n)` -/
def P9886540548062818801.Spec : Prop :=
  ∀ n, P9886540548062818801.a n = A314167 n

end A314167

/-! ## A314167.P7942874772923866440

`A313646(n)+n-A004525(n)`
-/

namespace A314167.P7942874772923866440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n + ((n : ℤ) - A004525 n)

end

end A314167.P7942874772923866440

namespace A314167

/-- `A313646(n)+n-A004525(n)` -/
def P7942874772923866440.Spec : Prop :=
  ∀ n, P7942874772923866440.a n = A314167 n

end A314167

/-! ## A314167.P18385912272611137613

`A313789(n)+n-A004396(n)`
-/

namespace A314167.P18385912272611137613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n + ((n : ℤ) - A004396 n)

end

end A314167.P18385912272611137613

namespace A314167

/-- `A313789(n)+n-A004396(n)` -/
def P18385912272611137613.Spec : Prop :=
  ∀ n, P18385912272611137613.a n = A314167 n

end A314167

/-! ## A314167.P10093039852169919876

`A313583(n)+n-A004396(A004525(n))`
-/

namespace A314167.P10093039852169919876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A314167.P10093039852169919876

namespace A314167

/-- `A313583(n)+n-A004396(A004525(n))` -/
def P10093039852169919876.Spec : Prop :=
  ∀ n, P10093039852169919876.a n = A314167 n

end A314167

/-! ## A314167.P730752828912121355

`A008574(n)+A311475(n)-A008576(n)`
-/

namespace A314167.P730752828912121355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311475 n - A008576 n)

end

end A314167.P730752828912121355

namespace A314167

/-- `A008574(n)+A311475(n)-A008576(n)` -/
def P730752828912121355.Spec : Prop :=
  ∀ n, P730752828912121355.a n = A314167 n

end A314167

/-! ## A314167.P5997491635248675839

`A008486(n)+A313789(n)-A008576(n)`
-/

namespace A314167.P5997491635248675839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313789 n - A008576 n)

end

end A314167.P5997491635248675839

namespace A314167

/-- `A008486(n)+A313789(n)-A008576(n)` -/
def P5997491635248675839.Spec : Prop :=
  ∀ n, P5997491635248675839.a n = A314167 n

end A314167

/-! ## A314167.P6738869086439506281

`A313583(n)+∑[A021913(A313583(n))]`
-/

namespace A314167.P6738869086439506281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313583 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314167.P6738869086439506281

namespace A314167

/-- `A313583(n)+∑[A021913(A313583(n))]` -/
def P6738869086439506281.Spec : Prop :=
  ∀ n, P6738869086439506281.a n = A314167 n

end A314167

/-! ## A314167.P2376386414198228956

`A004396(A313803(n))+2*n`
-/

namespace A314167.P2376386414198228956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313803 n).toNat + (2 * n : ℤ)

end

end A314167.P2376386414198228956

namespace A314167

/-- `A004396(A313803(n))+2*n` -/
def P2376386414198228956.Spec : Prop :=
  ∀ n, P2376386414198228956.a n = A314167 n

end A314167

/-! ## A314167.P408496064701265506

`A005843(n)+A004396(A313803(n))`
-/

namespace A314167.P408496064701265506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313803 n).toNat

end

end A314167.P408496064701265506

namespace A314167

/-- `A005843(n)+A004396(A313803(n))` -/
def P408496064701265506.Spec : Prop :=
  ∀ n, P408496064701265506.a n = A314167 n

end A314167

/-! ## A314167.P1189542507575437625

`abs(A008592(n)-A314825(n))`
-/

namespace A314167.P1189542507575437625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314825 n|

end

end A314167.P1189542507575437625

namespace A314167

/-- `abs(A008592(n)-A314825(n))` -/
def P1189542507575437625.Spec : Prop :=
  ∀ n, P1189542507575437625.a n = A314167 n

end A314167

/-! ## A314167.P7864174770868146709

`A008458(n)+A008574(n)-A314825(n)`
-/

namespace A314167.P7864174770868146709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314825 n)

end

end A314167.P7864174770868146709

namespace A314167

/-- `A008458(n)+A008574(n)-A314825(n)` -/
def P7864174770868146709.Spec : Prop :=
  ∀ n, P7864174770868146709.a n = A314167 n

end A314167

/-!
# A314168: Coordination sequence Gal.4.138.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314168, the canonical program `A314168.P3129182609195580782` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314168 has offset 0).

The definition of A314168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314168.P6631700281015980409

`A315654(n)-A134667(A004396(n))`
-/

namespace A314168.P6631700281015980409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315654 n - A134667 (A004396 n).toNat

end

end A314168.P6631700281015980409

namespace A314168

/-- `A315654(n)-A134667(A004396(n))` -/
def P6631700281015980409.Spec : Prop :=
  ∀ n, P6631700281015980409.a n = A314168 n

end A314168

/-! ## A314168.P3129182609195580782

`A315654(n)-A128834(A102899(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314168

/-- `A315654(n)-A128834(A102899(n))` -/
def P3129182609195580782.Spec : Prop :=
  ∀ n, P3129182609195580782.a n = A314168 n

theorem P3129182609195580782.correct : P3129182609195580782.Spec := by
  intro n
  simp only [A314168]

end A314168

/-! ## A314168.P12807198025196336223

`A322811(A120588(n))+A301726(n)`
-/

namespace A314168.P12807198025196336223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A120588 n).toNat + A301726 n

end

end A314168.P12807198025196336223

namespace A314168

/-- `A322811(A120588(n))+A301726(n)` -/
def P12807198025196336223.Spec : Prop :=
  ∀ n, P12807198025196336223.a n = A314168 n

end A314168

/-! ## A314168.P3100255315728019935

`or(A188093(A091964(n)), A313927(n))`
-/

namespace A314168.P3100255315728019935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188093 (A091964 n).toNat) (A313927 n)

end

end A314168.P3100255315728019935

namespace A314168

/-- `or(A188093(A091964(n)), A313927(n))` -/
def P3100255315728019935.Spec : Prop :=
  ∀ n, P3100255315728019935.a n = A314168 n

end A314168

/-! ## A314168.P9813514184059969938

`A301726(n)+A153246(abs(1-A366403(n+1)))`
-/

namespace A314168.P9813514184059969938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + A153246 |1 - A366403 (n + 1)|.toNat

end

end A314168.P9813514184059969938

namespace A314168

/-- `A301726(n)+A153246(abs(1-A366403(n+1)))` -/
def P9813514184059969938.Spec : Prop :=
  ∀ n, P9813514184059969938.a n = A314168 n

end A314168

/-!
# A314170: Coordination sequence Gal.6.632.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314170, there is no canonical definition to state claims against.
-/

/-! ## A314170.P626727245872274376

`A314249(n)-A295875(A295873(n))`
-/

namespace A314170.P626727245872274376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n - A295875 (A295873 n).toNat

end

end A314170.P626727245872274376

/-! ## A314170.P895645234539809399

`A133387(n+1)-A133418(A133371(n))`
-/

namespace A314170.P895645234539809399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133387 (n + 1) - A133418 (A133371 n).toNat

end

end A314170.P895645234539809399

/-! ## A314170.P16921120708062099374

`record[A120836(3*n+2)-A073941(n+1)]`
-/

namespace A314170.P16921120708062099374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120836 (3 * n + 2) - A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314170.P16921120708062099374

/-! ## A314170.P10142159618721497757

`A257991(A109033(n))+A008706(n)`
-/

namespace A314170.P10142159618721497757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A109033 n).toNat + A008706 n

end

end A314170.P10142159618721497757

/-!
# A314171: Coordination sequence Gal.6.664.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314171, there is no canonical definition to state claims against.
-/

/-! ## A314171.P10567961704738772701

`A313810(n)+A292438(A196961(n+1))`
-/

namespace A314171.P10567961704738772701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313810 n + A292438 (A196961 (n + 1)).toNat

end

end A314171.P10567961704738772701

/-! ## A314171.P8439309443744038602

`A310107(n)+A007828(A310132(3*n))`
-/

namespace A314171.P8439309443744038602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310107 n + A007828 (A310132 (3 * n)).toNat

end

end A314171.P8439309443744038602

/-! ## A314171.P5442990976197461911

`A005117(3*n+1)+A001222(A213095(n))`
-/

namespace A314171.P5442990976197461911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) + A001222 (A213095 n).toNat

end

end A314171.P5442990976197461911

/-!
# A314172: Coordination sequence Gal.6.662.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314172, there is no canonical definition to state claims against.
-/

/-! ## A314172.P12433052154047137927

`A310568(n)+A102283(n)`
-/

namespace A314172.P12433052154047137927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310568 n + A102283 n

end

end A314172.P12433052154047137927

/-! ## A314172.P12995049331126403910

`A310568(n)+A049347(n+2)`
-/

namespace A314172.P12995049331126403910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310568 n + A049347 (n + 2)

end

end A314172.P12995049331126403910

/-! ## A314172.P10705181182659796775

`A310568(n)+A128834(2*n)`
-/

namespace A314172.P10705181182659796775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310568 n + A128834 (2 * n)

end

end A314172.P10705181182659796775

/-! ## A314172.P4559314047915379387

`A310568(n)-A010892(2*(n+1))`
-/

namespace A314172.P4559314047915379387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310568 n - A010892 (2 * (n + 1))

end

end A314172.P4559314047915379387

/-! ## A314172.P1728853863497514186

`A310568(n)+A100047(A310531(3*n+2))`
-/

namespace A314172.P1728853863497514186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310568 n + A100047 (A310531 (3 * n + 2)).toNat

end

end A314172.P1728853863497514186

/-!
# A314173: Coordination sequence Gal.5.319.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314173, there is no canonical definition to state claims against.
-/

/-! ## A314173.P14135732331652493788

`∑[∑{d}[A175061(n+1), A175357(#)]]`
-/

namespace A314173.P14135732331652493788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175061 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A175357 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314173.P14135732331652493788

/-! ## A314173.P4464548384052273305

`A310422(n)+A305501(A291882(n))`
-/

namespace A314173.P4464548384052273305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310422 n + A305501 (A291882 n).toNat

end

end A314173.P4464548384052273305

/-!
# A314174: Coordination sequence Gal.6.662.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314174, there is no canonical definition to state claims against.
-/

/-! ## A314174.P17218045537690695552

`A314240(n)-A025426(A003441(n+1))`
-/

namespace A314174.P17218045537690695552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A025426 (A003441 (n + 1)).toNat

end

end A314174.P17218045537690695552

/-! ## A314174.P17839292258684948532

`A313812(n)+A057918(round(3^n-2^n/3))`
-/

namespace A314174.P17839292258684948532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313812 n + A057918 (SequenceMachineLib.roundAway ((3 ^ n : ℚ) - (2 ^ n : ℚ) / 3)).toNat

end

end A314174.P17839292258684948532

/-! ## A314174.P5654430087669880938

`A314240(n)-A005089(A027412(n))`
-/

namespace A314174.P5654430087669880938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A005089 (A027412 n).toNat

end

end A314174.P5654430087669880938

/-! ## A314174.P5166243040169512273

`A315698(n)-A008683(A252123(n+1))`
-/

namespace A314174.P5166243040169512273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315698 n - A008683 (A252123 (n + 1)).toNat

end

end A314174.P5166243040169512273

/-!
# A314175: Coordination sequence Gal.4.147.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314175, there is no canonical definition to state claims against.
-/

/-! ## A314175.P4252997780127844877

`xor(A056594(A022553(n)), A314164(n))`
-/

namespace A314175.P4252997780127844877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056594 (A022553 n).toNat) (A314164 n)

end

end A314175.P4252997780127844877

/-! ## A314175.P12667604365094239170

`A376954(2*n)+A300069(A109961(n))`
-/

namespace A314175.P12667604365094239170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376954 (2 * n) + A300069 (A109961 n).toNat

end

end A314175.P12667604365094239170

/-! ## A314175.P10957965559626613056

`A330808(A036378(n))+A008706(n)`
-/

namespace A314175.P10957965559626613056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (A036378 n).toNat + A008706 n

end

end A314175.P10957965559626613056

/-! ## A314175.P7292105553891782127

`A313894(n)+A287320(A266785(n))`
-/

namespace A314175.P7292105553891782127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A287320 (A266785 n).toNat

end

end A314175.P7292105553891782127

/-! ## A314175.P14925166689850098542

`A314049(n)+A160380(A208147(n+1))`
-/

namespace A314175.P14925166689850098542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A160380 (A208147 (n + 1)).toNat

end

end A314175.P14925166689850098542

/-!
# A314176: Coordination sequence Gal.5.313.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314176, the canonical program `A314176.P4544315038910432247` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314176 has offset 0).

The definition of A314176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314176.P4544315038910432247

`A313932(n)+A244895(A142150(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314176

/-- `A313932(n)+A244895(A142150(n))` -/
def P4544315038910432247.Spec : Prop :=
  ∀ n, P4544315038910432247.a n = A314176 n

theorem P4544315038910432247.correct : P4544315038910432247.Spec := by
  intro n
  simp only [A314176]

end A314176

/-! ## A314176.P14262610634184659159

`A330025(A237420(n))+A313932(n)`
-/

namespace A314176.P14262610634184659159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A237420 n).toNat + A313932 n

end

end A314176.P14262610634184659159

namespace A314176

/-- `A330025(A237420(n))+A313932(n)` -/
def P14262610634184659159.Spec : Prop :=
  ∀ n, P14262610634184659159.a n = A314176 n

end A314176

/-! ## A314176.P7783965085906167464

`xor(A189479(A052528(n)), A301718(n))`
-/

namespace A314176.P7783965085906167464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A189479 (A052528 n).toNat) (A301718 n)

end

end A314176.P7783965085906167464

namespace A314176

/-- `xor(A189479(A052528(n)), A301718(n))` -/
def P7783965085906167464.Spec : Prop :=
  ∀ n, P7783965085906167464.a n = A314176 n

end A314176

/-! ## A314176.P1611858290541284316

`xor(A010051(A236913(2*(n+2))), A301718(n))`
-/

namespace A314176.P1611858290541284316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A236913 (2 * (n + 2))).toNat) (A301718 n)

end

end A314176.P1611858290541284316

namespace A314176

/-- `xor(A010051(A236913(2*(n+2))), A301718(n))` -/
def P1611858290541284316.Spec : Prop :=
  ∀ n, P1611858290541284316.a n = A314176 n

end A314176

/-! ## A314176.P17502003401713793736

`or(A140101(2*n), A204171(A329912(n+1)))`
-/

namespace A314176.P17502003401713793736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A140101 (2 * n)) (A204171 (A329912 (n + 1)).toNat)

end

end A314176.P17502003401713793736

namespace A314176

/-- `or(A140101(2*n), A204171(A329912(n+1)))` -/
def P17502003401713793736.Spec : Prop :=
  ∀ n, P17502003401713793736.a n = A314176 n

end A314176

/-!
# A314177: Coordination sequence Gal.5.317.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314177, there is no canonical definition to state claims against.
-/

/-! ## A314177.P10467948888778451122

`A331410(A049893(2*(n+1)))+A250120(n)`
-/

namespace A314177.P10467948888778451122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A049893 (2 * (n + 1))).toNat + A250120 n

end

end A314177.P10467948888778451122

/-! ## A314177.P11742029125109445478

`A226957(n+1)+A102342(A077168(3*n))`
-/

namespace A314177.P11742029125109445478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (n + 1) + A102342 (A077168 (3 * n)).toNat

end

end A314177.P11742029125109445478

/-! ## A314177.P7662383439514829821

`A004280(3*n+1)-A281116(A338673(n))`
-/

namespace A314177.P7662383439514829821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (3 * n + 1) - A281116 (A338673 n).toNat

end

end A314177.P7662383439514829821

/-!
# A314178: Coordination sequence Gal.6.653.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314178, there is no canonical definition to state claims against.
-/

/-! ## A314178.P13223563982601958163

`A313937(n)+A257991(A265808(n+2))`
-/

namespace A314178.P13223563982601958163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313937 n + A257991 (A265808 (n + 2)).toNat

end

end A314178.P13223563982601958163

/-! ## A314178.P1163816569385297435

`A301726(n)+A060571(A242891(n+1))`
-/

namespace A314178.P1163816569385297435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + A060571 (A242891 (n + 1)).toNat

end

end A314178.P1163816569385297435

/-! ## A314178.P15550363006188081055

`A315703(n)-A288600(A001628(n+2))`
-/

namespace A314178.P15550363006188081055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A288600 (A001628 (n + 2)).toNat

end

end A314178.P15550363006188081055

/-! ## A314178.P14272565041022831779

`A303431(3*n+2)-A322423(A000252(n+1))`
-/

namespace A314178.P14272565041022831779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (3 * n + 2) - A322423 (A000252 (n + 1)).toNat

end

end A314178.P14272565041022831779

/-! ## A314178.P9387870045815904186

`A286402(3*n+1)-A286400(A000041(3*(n+1)))`
-/

namespace A314178.P9387870045815904186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (3 * n + 1) - A286400 (A000041 (3 * (n + 1))).toNat

end

end A314178.P9387870045815904186

/-!
# A314179: Coordination sequence Gal.5.316.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314179, the canonical program `A314179.P1720842195241523705` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314179 has offset 0).

The definition of A314179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314179.P1720842195241523705

`A313118(n)+A313933(n)-A312562(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A314179

/-- `A313118(n)+A313933(n)-A312562(n)` -/
def P1720842195241523705.Spec : Prop :=
  ∀ n, P1720842195241523705.a n = A314179 n

theorem P1720842195241523705.correct : P1720842195241523705.Spec := by
  intro n
  simp only [A314179]

end A314179

/-! ## A314179.P13597596067483113614

`A313118(n)+A313933(n)%(A312562(n)/A000034(n))`
-/

namespace A314179.P13597596067483113614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313118 n + Int.tmod (A313933 n) (SequenceMachineLib.roundAway ((A312562 n : ℚ) / (A000034 n : ℚ)))

end

end A314179.P13597596067483113614

namespace A314179

/-- `A313118(n)+A313933(n)%(A312562(n)/A000034(n))` -/
def P13597596067483113614.Spec : Prop :=
  ∀ n, P13597596067483113614.a n = A314179 n

end A314179

/-! ## A314179.P13210193033814010117

`A313793(n)+A001221(A000110(n))`
-/

namespace A314179.P13210193033814010117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n + A001221 (A000110 n).toNat

end

end A314179.P13210193033814010117

namespace A314179

/-- `A313793(n)+A001221(A000110(n))` -/
def P13210193033814010117.Spec : Prop :=
  ∀ n, P13210193033814010117.a n = A314179 n

end A314179

/-! ## A314179.P7495157767156307136

`or(A014081(A005774(n)), A314157(n))`
-/

namespace A314179.P7495157767156307136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014081 (A005774 n).toNat) (A314157 n)

end

end A314179.P7495157767156307136

namespace A314179

/-- `or(A014081(A005774(n)), A314157(n))` -/
def P7495157767156307136.Spec : Prop :=
  ∀ n, P7495157767156307136.a n = A314179 n

end A314179

/-!
# A314180: Coordination sequence Gal.6.645.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314180, there is no canonical definition to state claims against.
-/

/-! ## A314180.P6141278253351652577

`A310529(n)+A102283(n²²)`
-/

namespace A314180.P6141278253351652577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n + A102283 ((n ^ 2) ^ 2)

end

end A314180.P6141278253351652577

/-! ## A314180.P11965686391358662453

`∑[A109129(∑[A164576(3*n+2)])]`
-/

namespace A314180.P11965686391358662453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164576 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314180.P11965686391358662453

/-! ## A314180.P6972061481571716878

`A310529(n)+A057078(A046631(n))`
-/

namespace A314180.P6972061481571716878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n + A057078 (A046631 n).toNat

end

end A314180.P6972061481571716878

/-! ## A314180.P1202257379623308886

`A314264(n)-A335447(A332920(n+1))`
-/

namespace A314180.P1202257379623308886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314264 n - A335447 (A332920 (n + 1)).toNat

end

end A314180.P1202257379623308886

/-! ## A314180.P15775126050767067306

`A314056(n)+A001221(A065619(n+1)-A121289(n))`
-/

namespace A314180.P15775126050767067306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n + A001221 (A065619 (n + 1) - A121289 n).toNat

end

end A314180.P15775126050767067306

/-!
# A314183: Coordination sequence Gal.6.664.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314183, there is no canonical definition to state claims against.
-/

/-! ## A314183.P6155051749531498660

`A314200(n)-A014082(A079430(n+1))`
-/

namespace A314183.P6155051749531498660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314200 n - A014082 (A079430 (n + 1)).toNat

end

end A314183.P6155051749531498660

/-!
# A314184: Coordination sequence Gal.5.318.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314184, there is no canonical definition to state claims against.
-/

/-! ## A314184.P14556541543207430948

`A314284(n)-A170980(A032559(n+1))`
-/

namespace A314184.P14556541543207430948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314284 n - A170980 (A032559 (n + 1)).toNat

end

end A314184.P14556541543207430948

/-! ## A314184.P11019174096895700324

`A259934(n+1)-A112739(A029965(n+1))`
-/

namespace A314184.P11019174096895700324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (n + 1) - A112739 (A029965 (n + 1)).toNat

end

end A314184.P11019174096895700324

/-! ## A314184.P4235762003565358034

`A259934(n+1)-A081651(A179233(n+1))`
-/

namespace A314184.P4235762003565358034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (n + 1) - A081651 (A179233 (n + 1)).toNat

end

end A314184.P4235762003565358034

/-! ## A314184.P8991353348328483033

`A338224(3*n+2)-A101296(A138961(n+1))`
-/

namespace A314184.P8991353348328483033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (3 * n + 2) - A101296 (A138961 (n + 1)).toNat

end

end A314184.P8991353348328483033

/-!
# A314185: Coordination sequence Gal.6.205.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314185, the canonical program `A314185.P11421094011403531864` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314185 has offset 0).

The definition of A314185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314185.P11421094011403531864

`A313688(n)+Δ[floor(C(n, 2)/2)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314185

/-- `A313688(n)+Δ[floor(C(n, 2)/2)]` -/
def P11421094011403531864.Spec : Prop :=
  ∀ n, P11421094011403531864.a n = A314185 n

theorem P11421094011403531864.correct : P11421094011403531864.Spec := by
  intro n
  simp only [A314185]

end A314185

/-! ## A314185.P9675003683734095422

`abs(A008592(n)-A314770(n))`
-/

namespace A314185.P9675003683734095422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314770 n|

end

end A314185.P9675003683734095422

namespace A314185

/-- `abs(A008592(n)-A314770(n))` -/
def P9675003683734095422.Spec : Prop :=
  ∀ n, P9675003683734095422.a n = A314185 n

end A314185

/-! ## A314185.P9374152527260335027

`A313688(n)+∑[A021913(n)]`
-/

namespace A314185.P9374152527260335027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314185.P9374152527260335027

namespace A314185

/-- `A313688(n)+∑[A021913(n)]` -/
def P9374152527260335027.Spec : Prop :=
  ∀ n, P9374152527260335027.a n = A314185 n

end A314185

/-! ## A314185.P5722468586573073000

`A313824(n)+∑[A022003(n)]`
-/

namespace A314185.P5722468586573073000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313824 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314185.P5722468586573073000

namespace A314185

/-- `A313824(n)+∑[A022003(n)]` -/
def P5722468586573073000.Spec : Prop :=
  ∀ n, P5722468586573073000.a n = A314185 n

end A314185

/-! ## A314185.P574150030484677101

`A313688(n)+Δ[A011848(n)]`
-/

namespace A314185.P574150030484677101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + (f1 (n + 1) - f1 n)

end

end A314185.P574150030484677101

namespace A314185

/-- `A313688(n)+Δ[A011848(n)]` -/
def P574150030484677101.Spec : Prop :=
  ∀ n, P574150030484677101.a n = A314185 n

end A314185

/-! ## A314185.P15698283029155674845

`A313824(n)+A002264(n+1)`
-/

namespace A314185.P15698283029155674845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313824 n + A002264 (n + 1)

end

end A314185.P15698283029155674845

namespace A314185

/-- `A313824(n)+A002264(n+1)` -/
def P15698283029155674845.Spec : Prop :=
  ∀ n, P15698283029155674845.a n = A314185 n

end A314185

/-! ## A314185.P5674251003858584557

`A313688(n)+A004524(n+1)`
-/

namespace A314185.P5674251003858584557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + A004524 (n + 1)

end

end A314185.P5674251003858584557

namespace A314185

/-- `A313688(n)+A004524(n+1)` -/
def P5674251003858584557.Spec : Prop :=
  ∀ n, P5674251003858584557.a n = A314185 n

end A314185

/-! ## A314185.P13781204442279552154

`2*A008706(n)-A314770(n)`
-/

namespace A314185.P13781204442279552154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314770 n

end

end A314185.P13781204442279552154

namespace A314185

/-- `2*A008706(n)-A314770(n)` -/
def P13781204442279552154.Spec : Prop :=
  ∀ n, P13781204442279552154.a n = A314185 n

end A314185

/-! ## A314185.P18416560036579929193

`A313688(n)+n-A004525(n)`
-/

namespace A314185.P18416560036579929193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + ((n : ℤ) - A004525 n)

end

end A314185.P18416560036579929193

namespace A314185

/-- `A313688(n)+n-A004525(n)` -/
def P18416560036579929193.Spec : Prop :=
  ∀ n, P18416560036579929193.a n = A314185 n

end A314185

/-! ## A314185.P13354396695351828616

`A313688(n)+n-Δ[A054925(n)]`
-/

namespace A314185.P13354396695351828616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314185.P13354396695351828616

namespace A314185

/-- `A313688(n)+n-Δ[A054925(n)]` -/
def P13354396695351828616.Spec : Prop :=
  ∀ n, P13354396695351828616.a n = A314185 n

end A314185

/-! ## A314185.P13754952481746931143

`A008486(n)+A313824(n)-A008576(n)`
-/

namespace A314185.P13754952481746931143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313824 n - A008576 n)

end

end A314185.P13754952481746931143

namespace A314185

/-- `A008486(n)+A313824(n)-A008576(n)` -/
def P13754952481746931143.Spec : Prop :=
  ∀ n, P13754952481746931143.a n = A314185 n

end A314185

/-! ## A314185.P16655220141862639270

`A008458(n)+A008574(n)-A314770(n)`
-/

namespace A314185.P16655220141862639270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314770 n)

end

end A314185.P16655220141862639270

namespace A314185

/-- `A008458(n)+A008574(n)-A314770(n)` -/
def P16655220141862639270.Spec : Prop :=
  ∀ n, P16655220141862639270.a n = A314185 n

end A314185

/-! ## A314185.P14514795180903913548

`A315474(n)-A101455(n)`
-/

namespace A314185.P14514795180903913548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315474 n - A101455 n

end

end A314185.P14514795180903913548

namespace A314185

/-- `A315474(n)-A101455(n)` -/
def P14514795180903913548.Spec : Prop :=
  ∀ n, P14514795180903913548.a n = A314185 n

end A314185

/-! ## A314185.P16029206875926029521

`A315747(n)-A004525(n)`
-/

namespace A314185.P16029206875926029521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - A004525 n

end

end A314185.P16029206875926029521

namespace A314185

/-- `A315747(n)-A004525(n)` -/
def P16029206875926029521.Spec : Prop :=
  ∀ n, P16029206875926029521.a n = A314185 n

end A314185

/-! ## A314185.P4380618011907624464

`∑[A021913(n)]+A315747(n)-n`
-/

namespace A314185.P4380618011907624464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315747 n - (n : ℤ))

end

end A314185.P4380618011907624464

namespace A314185

/-- `∑[A021913(n)]+A315747(n)-n` -/
def P4380618011907624464.Spec : Prop :=
  ∀ n, P4380618011907624464.a n = A314185 n

end A314185

/-! ## A314185.P13782973626941548567

`Δ[A011848(n)]+A315747(n)-n`
-/

namespace A314185.P13782973626941548567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315747 n - (n : ℤ))

end

end A314185.P13782973626941548567

namespace A314185

/-- `Δ[A011848(n)]+A315747(n)-n` -/
def P13782973626941548567.Spec : Prop :=
  ∀ n, P13782973626941548567.a n = A314185 n

end A314185

/-!
# A314186: Coordination sequence Gal.6.330.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314186, the canonical program `A314186.P10880923475952212698` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314186 has offset 0).

The definition of A314186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314186.P3605653594150286696

`abs(A008592(n)-A314765(n))`
-/

namespace A314186.P3605653594150286696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314765 n|

end

end A314186.P3605653594150286696

namespace A314186

/-- `abs(A008592(n)-A314765(n))` -/
def P3605653594150286696.Spec : Prop :=
  ∀ n, P3605653594150286696.a n = A314186 n

end A314186

/-! ## A314186.P10880923475952212698

`A314106(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A314186

/-- `A314106(n)+Δ[A011864(n)]` -/
def P10880923475952212698.Spec : Prop :=
  ∀ n, P10880923475952212698.a n = A314186 n

theorem P10880923475952212698.correct : P10880923475952212698.Spec := by
  intro n
  simp only [A314186]

end A314186

/-! ## A314186.P14508916385210319261

`A008458(n)+A008574(n)-A314765(n)`
-/

namespace A314186.P14508916385210319261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314765 n)

end

end A314186.P14508916385210319261

namespace A314186

/-- `A008458(n)+A008574(n)-A314765(n)` -/
def P14508916385210319261.Spec : Prop :=
  ∀ n, P14508916385210319261.a n = A314186 n

end A314186

/-! ## A314186.P11769991197314792999

`A000122(A344314(n+1))+A008592(n)-A314765(n)`
-/

namespace A314186.P11769991197314792999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A344314 (n + 1)).toNat + (A008592 n - A314765 n)

end

end A314186.P11769991197314792999

namespace A314186

/-- `A000122(A344314(n+1))+A008592(n)-A314765(n)` -/
def P11769991197314792999.Spec : Prop :=
  ∀ n, P11769991197314792999.a n = A314186 n

end A314186

/-! ## A314186.P6694227376753620216

`2*n+A004396(A310496(n))`
-/

namespace A314186.P6694227376753620216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310496 n).toNat

end

end A314186.P6694227376753620216

namespace A314186

/-- `2*n+A004396(A310496(n))` -/
def P6694227376753620216.Spec : Prop :=
  ∀ n, P6694227376753620216.a n = A314186 n

end A314186

/-! ## A314186.P17830466850447266984

`2*n+A004396(A313825(n))`
-/

namespace A314186.P17830466850447266984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A313825 n).toNat

end

end A314186.P17830466850447266984

namespace A314186

/-- `2*n+A004396(A313825(n))` -/
def P17830466850447266984.Spec : Prop :=
  ∀ n, P17830466850447266984.a n = A314186 n

end A314186

/-! ## A314186.P6594437909532144571

`A008585(n)+A004396(A313825(n))-n`
-/

namespace A314186.P6594437909532144571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A004396 (A313825 n).toNat - (n : ℤ))

end

end A314186.P6594437909532144571

namespace A314186

/-- `A008585(n)+A004396(A313825(n))-n` -/
def P6594437909532144571.Spec : Prop :=
  ∀ n, P6594437909532144571.a n = A314186 n

end A314186

/-! ## A314186.P7581111905794230438

`A008585(n)-(n-A004396(A310496(n)))`
-/

namespace A314186.P7581111905794230438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A310496 n).toNat)

end

end A314186.P7581111905794230438

namespace A314186

/-- `A008585(n)-(n-A004396(A310496(n)))` -/
def P7581111905794230438.Spec : Prop :=
  ∀ n, P7581111905794230438.a n = A314186 n

end A314186

/-! ## A314186.P10856542759294102147

`A004396(A310496(n)+A008486(n))`
-/

namespace A314186.P10856542759294102147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310496 n + A008486 n).toNat

end

end A314186.P10856542759294102147

namespace A314186

/-- `A004396(A310496(n)+A008486(n))` -/
def P10856542759294102147.Spec : Prop :=
  ∀ n, P10856542759294102147.a n = A314186 n

end A314186

/-! ## A314186.P11093377968489408079

`A004396(A310496(n)+A008585(n))`
-/

namespace A314186.P11093377968489408079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310496 n + A008585 n).toNat

end

end A314186.P11093377968489408079

namespace A314186

/-- `A004396(A310496(n)+A008585(n))` -/
def P11093377968489408079.Spec : Prop :=
  ∀ n, P11093377968489408079.a n = A314186 n

end A314186

/-! ## A314186.P3166746794865859594

`A004396(A313825(n)+A008486(n))`
-/

namespace A314186.P3166746794865859594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313825 n + A008486 n).toNat

end

end A314186.P3166746794865859594

namespace A314186

/-- `A004396(A313825(n)+A008486(n))` -/
def P3166746794865859594.Spec : Prop :=
  ∀ n, P3166746794865859594.a n = A314186 n

end A314186

/-! ## A314186.P6338127802488869168

`A004396(A313825(n)+A008585(n))`
-/

namespace A314186.P6338127802488869168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313825 n + A008585 n).toNat

end

end A314186.P6338127802488869168

namespace A314186

/-- `A004396(A313825(n)+A008585(n))` -/
def P6338127802488869168.Spec : Prop :=
  ∀ n, P6338127802488869168.a n = A314186 n

end A314186

/-! ## A314186.P2422260082624327109

`A000122(n²+1)+A008592(n)-A314765(n)`
-/

namespace A314186.P2422260082624327109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) + (A008592 n - A314765 n)

end

end A314186.P2422260082624327109

namespace A314186

/-- `A000122(n²+1)+A008592(n)-A314765(n)` -/
def P2422260082624327109.Spec : Prop :=
  ∀ n, P2422260082624327109.a n = A314186 n

end A314186

/-!
# A314187: Coordination sequence Gal.6.487.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314187, there is no canonical definition to state claims against.
-/

/-! ## A314187.P497437643611165799

`A313832(n)+A001221(A040027(n))`
-/

namespace A314187.P497437643611165799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313832 n + A001221 (A040027 n).toNat

end

end A314187.P497437643611165799

/-! ## A314187.P16197830633811282244

`A314131(n)-A014017(A295404(n))`
-/

namespace A314187.P16197830633811282244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314131 n - A014017 (A295404 n).toNat

end

end A314187.P16197830633811282244

/-! ## A314187.P1000120771974587303

`A315729(n)-A339027(A339027(n))`
-/

namespace A314187.P1000120771974587303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315729 n - A339027 (A339027 n).toNat

end

end A314187.P1000120771974587303

/-! ## A314187.P15443308997524754564

`A301718(n)-A081221(A002619(n+1))`
-/

namespace A314187.P15443308997524754564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A081221 (A002619 (n + 1)).toNat

end

end A314187.P15443308997524754564

/-! ## A314187.P10839109910518707920

`A315676(n)-A085405(A065574(n+1))`
-/

namespace A314187.P10839109910518707920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315676 n - A085405 (A065574 (n + 1)).toNat

end

end A314187.P10839109910518707920

/-!
# A314188: Coordination sequence Gal.4.145.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314188, the canonical program `A314188.P6409328397070527992` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314188 has offset 0).

The definition of A314188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314188.P9469183470847272642

`A348237(n)+comp[or(2, n)+n]+n`
-/

namespace A314188.P9469183470847272642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (n : ℤ)

end

end A314188.P9469183470847272642

namespace A314188

/-- `A348237(n)+comp[or(2, n)+n]+n` -/
def P9469183470847272642.Spec : Prop :=
  ∀ n, P9469183470847272642.a n = A314188 n

end A314188

/-! ## A314188.P9053802022481610196

`A314685(n)+A201629(n)`
-/

namespace A314188.P9053802022481610196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n + A201629 n

end

end A314188.P9053802022481610196

namespace A314188

/-- `A314685(n)+A201629(n)` -/
def P9053802022481610196.Spec : Prop :=
  ∀ n, P9053802022481610196.a n = A314188 n

end A314188

/-! ## A314188.P6409328397070527992

`A072154(n)+A276283(n)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314188

/-- `A072154(n)+A276283(n)-1` -/
def P6409328397070527992.Spec : Prop :=
  ∀ n, P6409328397070527992.a n = A314188 n

theorem P6409328397070527992.correct : P6409328397070527992.Spec := by
  intro n
  simp only [A314188]

end A314188

/-! ## A314188.P2946853149631686261

`A047538(n+1)+A072154(n)+n`
-/

namespace A314188.P2946853149631686261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1) + (A072154 n + (n : ℤ))

end

end A314188.P2946853149631686261

namespace A314188

/-- `A047538(n+1)+A072154(n)+n` -/
def P2946853149631686261.Spec : Prop :=
  ∀ n, P2946853149631686261.a n = A314188 n

end A314188

/-! ## A314188.P3322254158959371637

`A047486(n+1)+A348237(n)+n`
-/

namespace A314188.P3322254158959371637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A348237 n + (n : ℤ))

end

end A314188.P3322254158959371637

namespace A314188

/-- `A047486(n+1)+A348237(n)+n` -/
def P3322254158959371637.Spec : Prop :=
  ∀ n, P3322254158959371637.a n = A314188 n

end A314188

/-! ## A314188.P8936155704201984859

`2*n+A201629(n)+A072154(n)`
-/

namespace A314188.P8936155704201984859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A201629 n + A072154 n)

end

end A314188.P8936155704201984859

namespace A314188

/-- `2*n+A201629(n)+A072154(n)` -/
def P8936155704201984859.Spec : Prop :=
  ∀ n, P8936155704201984859.a n = A314188 n

end A314188

/-! ## A314188.P14538601023126027783

`A072154(n)+A004442(A276283(n))`
-/

namespace A314188.P14538601023126027783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + A004442 (A276283 n).toNat

end

end A314188.P14538601023126027783

namespace A314188

/-- `A072154(n)+A004442(A276283(n))` -/
def P14538601023126027783.Spec : Prop :=
  ∀ n, P14538601023126027783.a n = A314188 n

end A314188

/-! ## A314188.P4485540554640019675

`A072154(n)+A005843(A004525(3*n))`
-/

namespace A314188.P4485540554640019675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + A005843 (A004525 (3 * n)).toNat

end

end A314188.P4485540554640019675

namespace A314188

/-- `A072154(n)+A005843(A004525(3*n))` -/
def P4485540554640019675.Spec : Prop :=
  ∀ n, P4485540554640019675.a n = A314188 n

end A314188

/-! ## A314188.P2068634292235906605

`A008458(n)+A250120(n)-A315337(n)`
-/

namespace A314188.P2068634292235906605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315337 n)

end

end A314188.P2068634292235906605

namespace A314188

/-- `A008458(n)+A250120(n)-A315337(n)` -/
def P2068634292235906605.Spec : Prop :=
  ∀ n, P2068634292235906605.a n = A314188 n

end A314188

/-! ## A314188.P12343066402703842694

`A315477(n)-A101455(n)`
-/

namespace A314188.P12343066402703842694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n - A101455 n

end

end A314188.P12343066402703842694

namespace A314188

/-- `A315477(n)-A101455(n)` -/
def P12343066402703842694.Spec : Prop :=
  ∀ n, P12343066402703842694.a n = A314188 n

end A314188

/-! ## A314188.P6835573387582097828

`A315477(n)+A056594(n+1)`
-/

namespace A314188.P6835573387582097828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n + A056594 (n + 1)

end

end A314188.P6835573387582097828

namespace A314188

/-- `A315477(n)+A056594(n+1)` -/
def P6835573387582097828.Spec : Prop :=
  ∀ n, P6835573387582097828.a n = A314188 n

end A314188

/-! ## A314188.P13747635219477719665

`A315477(n)-A046978(2*n)`
-/

namespace A314188.P13747635219477719665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n - A046978 (2 * n)

end

end A314188.P13747635219477719665

namespace A314188

/-- `A315477(n)-A046978(2*n)` -/
def P13747635219477719665.Spec : Prop :=
  ∀ n, P13747635219477719665.a n = A314188 n

end A314188

/-! ## A314188.P12074743046249992424

`A314242(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314188.P12074743046249992424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314242 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314188.P12074743046249992424

namespace A314188

/-- `A314242(2*n)+A008458(n+1)-(12*n+6)` -/
def P12074743046249992424.Spec : Prop :=
  ∀ n, P12074743046249992424.a n = A314188 n

end A314188

/-!
# A314189: Coordination sequence Gal.6.636.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314189, the canonical program `A314189.P7331010239298869687` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314189 has offset 0).

The definition of A314189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314189.P13849178643029573659

`abs(A008592(n)-A314758(n))`
-/

namespace A314189.P13849178643029573659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314758 n|

end

end A314189.P13849178643029573659

namespace A314189

/-- `abs(A008592(n)-A314758(n))` -/
def P13849178643029573659.Spec : Prop :=
  ∀ n, P13849178643029573659.a n = A314189 n

end A314189

/-! ## A314189.P4184242586973451311

`A313702(n)+∑[A021913(n)]`
-/

namespace A314189.P4184242586973451311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313702 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314189.P4184242586973451311

namespace A314189

/-- `A313702(n)+∑[A021913(n)]` -/
def P4184242586973451311.Spec : Prop :=
  ∀ n, P4184242586973451311.a n = A314189 n

end A314189

/-! ## A314189.P7331010239298869687

`A313829(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A314189

/-- `A313829(n)+∑[A022003(n)]` -/
def P7331010239298869687.Spec : Prop :=
  ∀ n, P7331010239298869687.a n = A314189 n

theorem P7331010239298869687.correct : P7331010239298869687.Spec := by
  intro n
  simp only [A314189]

end A314189

/-! ## A314189.P12004087526780285153

`A313702(n)+Δ[A011848(n)]`
-/

namespace A314189.P12004087526780285153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313702 n + (f1 (n + 1) - f1 n)

end

end A314189.P12004087526780285153

namespace A314189

/-- `A313702(n)+Δ[A011848(n)]` -/
def P12004087526780285153.Spec : Prop :=
  ∀ n, P12004087526780285153.a n = A314189 n

end A314189

/-! ## A314189.P18068276325550638581

`A314110(n)+Δ[A011865(n)]`
-/

namespace A314189.P18068276325550638581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n + (f1 (n + 1) - f1 n)

end

end A314189.P18068276325550638581

namespace A314189

/-- `A314110(n)+Δ[A011865(n)]` -/
def P18068276325550638581.Spec : Prop :=
  ∀ n, P18068276325550638581.a n = A314189 n

end A314189

/-! ## A314189.P11169839148756527648

`A313829(n)+A002264(n+1)`
-/

namespace A314189.P11169839148756527648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n + A002264 (n + 1)

end

end A314189.P11169839148756527648

namespace A314189

/-- `A313829(n)+A002264(n+1)` -/
def P11169839148756527648.Spec : Prop :=
  ∀ n, P11169839148756527648.a n = A314189 n

end A314189

/-! ## A314189.P18444494016528257901

`A313829(n)+n-A004396(n)`
-/

namespace A314189.P18444494016528257901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n + ((n : ℤ) - A004396 n)

end

end A314189.P18444494016528257901

namespace A314189

/-- `A313829(n)+n-A004396(n)` -/
def P18444494016528257901.Spec : Prop :=
  ∀ n, P18444494016528257901.a n = A314189 n

end A314189

/-! ## A314189.P5841155398231732782

`A313837(n)+A004525(n-A004396(n))`
-/

namespace A314189.P5841155398231732782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314189.P5841155398231732782

namespace A314189

/-- `A313837(n)+A004525(n-A004396(n))` -/
def P5841155398231732782.Spec : Prop :=
  ∀ n, P5841155398231732782.a n = A314189 n

end A314189

/-! ## A314189.P5042547423305553824

`A008486(n)+A313829(n)-A008576(n)`
-/

namespace A314189.P5042547423305553824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313829 n - A008576 n)

end

end A314189.P5042547423305553824

namespace A314189

/-- `A008486(n)+A313829(n)-A008576(n)` -/
def P5042547423305553824.Spec : Prop :=
  ∀ n, P5042547423305553824.a n = A314189 n

end A314189

/-! ## A314189.P9811004906967657964

`A008458(n)+A008574(n)-A314758(n)`
-/

namespace A314189.P9811004906967657964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314758 n)

end

end A314189.P9811004906967657964

namespace A314189

/-- `A008458(n)+A008574(n)-A314758(n)` -/
def P9811004906967657964.Spec : Prop :=
  ∀ n, P9811004906967657964.a n = A314189 n

end A314189

/-! ## A314189.P17330680272901946669

`A004525(A008854(n+1))+A008706(n)-A004525(n)`
-/

namespace A314189.P17330680272901946669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008854 (n + 1)).toNat + (A008706 n - A004525 n)

end

end A314189.P17330680272901946669

namespace A314189

/-- `A004525(A008854(n+1))+A008706(n)-A004525(n)` -/
def P17330680272901946669.Spec : Prop :=
  ∀ n, P17330680272901946669.a n = A314189 n

end A314189

/-! ## A314189.P13966034338684229819

`A004396(A314094(n))+2*n`
-/

namespace A314189.P13966034338684229819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314094 n).toNat + (2 * n : ℤ)

end

end A314189.P13966034338684229819

namespace A314189

/-- `A004396(A314094(n))+2*n` -/
def P13966034338684229819.Spec : Prop :=
  ∀ n, P13966034338684229819.a n = A314189 n

end A314189

/-! ## A314189.P3014378035244972666

`A004396(A314098(n))+2*n`
-/

namespace A314189.P3014378035244972666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314098 n).toNat + (2 * n : ℤ)

end

end A314189.P3014378035244972666

namespace A314189

/-- `A004396(A314098(n))+2*n` -/
def P3014378035244972666.Spec : Prop :=
  ∀ n, P3014378035244972666.a n = A314189 n

end A314189

/-! ## A314189.P7156218415966717032

`A004396(2*(A313829(n)-n))`
-/

namespace A314189.P7156218415966717032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313829 n - (n : ℤ))).toNat

end

end A314189.P7156218415966717032

namespace A314189

/-- `A004396(2*(A313829(n)-n))` -/
def P7156218415966717032.Spec : Prop :=
  ∀ n, P7156218415966717032.a n = A314189 n

end A314189

/-! ## A314189.P8617972062541658973

`A004396(2*(A314836(n)-A004525(n)))`
-/

namespace A314189.P8617972062541658973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A314836 n - A004525 n)).toNat

end

end A314189.P8617972062541658973

namespace A314189

/-- `A004396(2*(A314836(n)-A004525(n)))` -/
def P8617972062541658973.Spec : Prop :=
  ∀ n, P8617972062541658973.a n = A314189 n

end A314189

/-! ## A314189.P15799459630099197931

`A004525(2*A310440(n)+n)`
-/

namespace A314189.P15799459630099197931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A310440 n + (n : ℤ)).toNat

end

end A314189.P15799459630099197931

namespace A314189

/-- `A004525(2*A310440(n)+n)` -/
def P15799459630099197931.Spec : Prop :=
  ∀ n, P15799459630099197931.a n = A314189 n

end A314189

/-! ## A314189.P13241309744961691418

`A004525(2*A313693(n)+n)`
-/

namespace A314189.P13241309744961691418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313693 n + (n : ℤ)).toNat

end

end A314189.P13241309744961691418

namespace A314189

/-- `A004525(2*A313693(n)+n)` -/
def P13241309744961691418.Spec : Prop :=
  ∀ n, P13241309744961691418.a n = A314189 n

end A314189

/-! ## A314189.P5390606060577624764

`A004525(A315744(n)+5*n)`
-/

namespace A314189.P5390606060577624764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315744 n + (5 * n : ℤ)).toNat

end

end A314189.P5390606060577624764

namespace A314189

/-- `A004525(A315744(n)+5*n)` -/
def P5390606060577624764.Spec : Prop :=
  ∀ n, P5390606060577624764.a n = A314189 n

end A314189

/-! ## A314189.P3714649076611612113

`A004525((n%4-2)%2+2*A219529(n))`
-/

namespace A314189.P3714649076611612113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (((n % 4 : ℕ) : ℤ) - 2) 2 + 2 * A219529 n).toNat

end

end A314189.P3714649076611612113

namespace A314189

/-- `A004525((n%4-2)%2+2*A219529(n))` -/
def P3714649076611612113.Spec : Prop :=
  ∀ n, P3714649076611612113.a n = A314189 n

end A314189

/-! ## A314189.P14816675047110815391

`A004525(A310440(n)+A310440(n)+n)`
-/

namespace A314189.P14816675047110815391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310440 n + (A310440 n + (n : ℤ))).toNat

end

end A314189.P14816675047110815391

namespace A314189

/-- `A004525(A310440(n)+A310440(n)+n)` -/
def P14816675047110815391.Spec : Prop :=
  ∀ n, P14816675047110815391.a n = A314189 n

end A314189

/-!
# A314190: Coordination sequence Gal.6.651.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314190, the canonical program `A314190.P16264638501610305232` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314190 has offset 0).

The definition of A314190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314190.P5009419516656324055

`A310501(n)+A004525(A004396(n))`
-/

namespace A314190.P5009419516656324055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310501 n + A004525 (A004396 n).toNat

end

end A314190.P5009419516656324055

namespace A314190

/-- `A310501(n)+A004525(A004396(n))` -/
def P5009419516656324055.Spec : Prop :=
  ∀ n, P5009419516656324055.a n = A314190 n

end A314190

/-! ## A314190.P17978082173540352239

`A310501(n)+A004525(A274616(n))`
-/

namespace A314190.P17978082173540352239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310501 n + A004525 (A274616 n).toNat

end

end A314190.P17978082173540352239

namespace A314190

/-- `A310501(n)+A004525(A274616(n))` -/
def P17978082173540352239.Spec : Prop :=
  ∀ n, P17978082173540352239.a n = A314190 n

end A314190

/-! ## A314190.P16264638501610305232

`A004525(A004396(n))+2*A313045(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314190

/-- `A004525(A004396(n))+2*A313045(n)-A008574(n)` -/
def P16264638501610305232.Spec : Prop :=
  ∀ n, P16264638501610305232.a n = A314190 n

theorem P16264638501610305232.correct : P16264638501610305232.Spec := by
  intro n
  simp only [A314190]

end A314190

/-! ## A314190.P6347155613886259467

`A314210(n)+A314225(n)-A314247(n)`
-/

namespace A314190.P6347155613886259467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314210 n + (A314225 n - A314247 n)

end

end A314190.P6347155613886259467

namespace A314190

/-- `A314210(n)+A314225(n)-A314247(n)` -/
def P6347155613886259467.Spec : Prop :=
  ∀ n, P6347155613886259467.a n = A314190 n

end A314190

/-! ## A314190.P11114492855623453775

`A004525(A004396(n))+A312507(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A314190.P11114492855623453775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312507 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ)))

end

end A314190.P11114492855623453775

namespace A314190

/-- `A004525(A004396(n))+A312507(2*n)+A008574(n+1)-(8*n+4)` -/
def P11114492855623453775.Spec : Prop :=
  ∀ n, P11114492855623453775.a n = A314190 n

end A314190

/-! ## A314190.P15515610125607592891

`A004525(A004396(n))+2*A008574(2*n)-A315650(2*n)`
-/

namespace A314190.P15515610125607592891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (2 * A008574 (2 * n) - A315650 (2 * n))

end

end A314190.P15515610125607592891

namespace A314190

/-- `A004525(A004396(n))+2*A008574(2*n)-A315650(2*n)` -/
def P15515610125607592891.Spec : Prop :=
  ∀ n, P15515610125607592891.a n = A314190 n

end A314190

/-!
# A314191: Coordination sequence Gal.5.292.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314191, the canonical program `A314191.P6792675617802763548` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314191 has offset 0).

The definition of A314191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314191.P12372670774806349169

`A315333(n)-A330033(n)`
-/

namespace A314191.P12372670774806349169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315333 n - A330033 n

end

end A314191.P12372670774806349169

namespace A314191

/-- `A315333(n)-A330033(n)` -/
def P12372670774806349169.Spec : Prop :=
  ∀ n, P12372670774806349169.a n = A314191 n

end A314191

/-! ## A314191.P11530991048211137965

`A008458(n)+A008574(n)-A314754(n)`
-/

namespace A314191.P11530991048211137965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314754 n)

end

end A314191.P11530991048211137965

namespace A314191

/-- `A008458(n)+A008574(n)-A314754(n)` -/
def P11530991048211137965.Spec : Prop :=
  ∀ n, P11530991048211137965.a n = A314191 n

end A314191

/-! ## A314191.P2153652736946810994

`A250120(n)+A310375(n)-A008574(n)`
-/

namespace A314191.P2153652736946810994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A310375 n - A008574 n)

end

end A314191.P2153652736946810994

namespace A314191

/-- `A250120(n)+A310375(n)-A008574(n)` -/
def P2153652736946810994.Spec : Prop :=
  ∀ n, P2153652736946810994.a n = A314191 n

end A314191

/-! ## A314191.P4805390785936813865

`A008458(n)+A250120(n)-A315333(n)`
-/

namespace A314191.P4805390785936813865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315333 n)

end

end A314191.P4805390785936813865

namespace A314191

/-- `A008458(n)+A250120(n)-A315333(n)` -/
def P4805390785936813865.Spec : Prop :=
  ∀ n, P4805390785936813865.a n = A314191 n

end A314191

/-! ## A314191.P6792675617802763548

`A008574(n)+A004525(A047363(2*n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314191

/-- `A008574(n)+A004525(A047363(2*n+1))` -/
def P6792675617802763548.Spec : Prop :=
  ∀ n, P6792675617802763548.a n = A314191 n

theorem P6792675617802763548.correct : P6792675617802763548.Spec := by
  intro n
  simp only [A314191]

end A314191

/-! ## A314191.P9313494273307623928

`A250120(n)+A004524(A271114(n)-A250120(n))`
-/

namespace A314191.P9313494273307623928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A004524 (A271114 n - A250120 n).toNat

end

end A314191.P9313494273307623928

namespace A314191

/-- `A250120(n)+A004524(A271114(n)-A250120(n))` -/
def P9313494273307623928.Spec : Prop :=
  ∀ n, P9313494273307623928.a n = A314191 n

end A314191

/-! ## A314191.P10307426801489514951

`A180004(A314100(n))`
-/

namespace A314191.P10307426801489514951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A314100 n).toNat

end

end A314191.P10307426801489514951

namespace A314191

/-- `A180004(A314100(n))` -/
def P10307426801489514951.Spec : Prop :=
  ∀ n, P10307426801489514951.a n = A314191 n

end A314191

/-! ## A314191.P13778968053310404442

`A004525(A301726(2*n))`
-/

namespace A314191.P13778968053310404442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301726 (2 * n)).toNat

end

end A314191.P13778968053310404442

namespace A314191

/-- `A004525(A301726(2*n))` -/
def P13778968053310404442.Spec : Prop :=
  ∀ n, P13778968053310404442.a n = A314191 n

end A314191

/-! ## A314191.P9577091703388293705

`A004525(A250120(n)+6*n)`
-/

namespace A314191.P9577091703388293705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A250120 n + (6 * n : ℤ)).toNat

end

end A314191.P9577091703388293705

namespace A314191

/-- `A004525(A250120(n)+6*n)` -/
def P9577091703388293705.Spec : Prop :=
  ∀ n, P9577091703388293705.a n = A314191 n

end A314191

/-! ## A314191.P8267144692184424194

`A004525(A314670(2*n)+A151988(2*n))`
-/

namespace A314191.P8267144692184424194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314670 (2 * n) + A151988 (2 * n)).toNat

end

end A314191.P8267144692184424194

namespace A314191

/-- `A004525(A314670(2*n)+A151988(2*n))` -/
def P8267144692184424194.Spec : Prop :=
  ∀ n, P8267144692184424194.a n = A314191 n

end A314191

/-! ## A314191.P11604954516211274996

`A004525(A072154(2*n)+A004277(3*n))`
-/

namespace A314191.P11604954516211274996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A072154 (2 * n) + A004277 (3 * n)).toNat

end

end A314191.P11604954516211274996

namespace A314191

/-- `A004525(A072154(2*n)+A004277(3*n))` -/
def P11604954516211274996.Spec : Prop :=
  ∀ n, P11604954516211274996.a n = A314191 n

end A314191

/-! ## A314191.P14945047782385780085

`A008458(A008486(n))-A314670(A008486(n))`
-/

namespace A314191.P14945047782385780085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008486 n).toNat - A314670 (A008486 n).toNat

end

end A314191.P14945047782385780085

namespace A314191

/-- `A008458(A008486(n))-A314670(A008486(n))` -/
def P14945047782385780085.Spec : Prop :=
  ∀ n, P14945047782385780085.a n = A314191 n

end A314191

/-!
# A314192: Coordination sequence Gal.6.651.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314192, the canonical program `A314192.P4251070382321067139` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314192 has offset 0).

The definition of A314192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314192.P4251070382321067139

`A313831(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A314192

/-- `A313831(n)+∑[A022003(n)]` -/
def P4251070382321067139.Spec : Prop :=
  ∀ n, P4251070382321067139.a n = A314192 n

theorem P4251070382321067139.correct : P4251070382321067139.Spec := by
  intro n
  simp only [A314192]

end A314192

/-! ## A314192.P6562569458374691132

`A313831(n)+A002264(n+1)`
-/

namespace A314192.P6562569458374691132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n + A002264 (n + 1)

end

end A314192.P6562569458374691132

namespace A314192

/-- `A313831(n)+A002264(n+1)` -/
def P6562569458374691132.Spec : Prop :=
  ∀ n, P6562569458374691132.a n = A314192 n

end A314192

/-! ## A314192.P13027092291206040689

`A313831(n)+n-A004396(n)`
-/

namespace A314192.P13027092291206040689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n + ((n : ℤ) - A004396 n)

end

end A314192.P13027092291206040689

namespace A314192

/-- `A313831(n)+n-A004396(n)` -/
def P13027092291206040689.Spec : Prop :=
  ∀ n, P13027092291206040689.a n = A314192 n

end A314192

/-! ## A314192.P14431220709769311891

`A313831(n)+A008615(2*n+1)`
-/

namespace A314192.P14431220709769311891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n + A008615 (2 * n + 1)

end

end A314192.P14431220709769311891

namespace A314192

/-- `A313831(n)+A008615(2*n+1)` -/
def P14431220709769311891.Spec : Prop :=
  ∀ n, P14431220709769311891.a n = A314192 n

end A314192

/-! ## A314192.P11859688703673725224

`A313831(n)+A008679(A016813(n))`
-/

namespace A314192.P11859688703673725224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n + A008679 (A016813 n).toNat

end

end A314192.P11859688703673725224

namespace A314192

/-- `A313831(n)+A008679(A016813(n))` -/
def P11859688703673725224.Spec : Prop :=
  ∀ n, P11859688703673725224.a n = A314192 n

end A314192

/-! ## A314192.P18410765259544516808

`A008486(n)+A313831(n)-A008576(n)`
-/

namespace A314192.P18410765259544516808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313831 n - A008576 n)

end

end A314192.P18410765259544516808

namespace A314192

/-- `A008486(n)+A313831(n)-A008576(n)` -/
def P18410765259544516808.Spec : Prop :=
  ∀ n, P18410765259544516808.a n = A314192 n

end A314192

/-! ## A314192.P9072844213383575013

`A313831(n)-(A002264(n)-A004523(n))`
-/

namespace A314192.P9072844213383575013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - (A002264 n - A004523 n)

end

end A314192.P9072844213383575013

namespace A314192

/-- `A313831(n)-(A002264(n)-A004523(n))` -/
def P9072844213383575013.Spec : Prop :=
  ∀ n, P9072844213383575013.a n = A314192 n

end A314192

/-! ## A314192.P9379009828125298644

`A004396(A005843(n))-(n-A313831(n))`
-/

namespace A314192.P9379009828125298644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 n).toNat - ((n : ℤ) - A313831 n)

end

end A314192.P9379009828125298644

namespace A314192

/-- `A004396(A005843(n))-(n-A313831(n))` -/
def P9379009828125298644.Spec : Prop :=
  ∀ n, P9379009828125298644.a n = A314192 n

end A314192

/-!
# A314193: Coordination sequence Gal.4.141.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314193, the canonical program `A314193.P7624956979305627608` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314193 has offset 0).

The definition of A314193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314193.P7624956979305627608

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=17, a(4)=21, a(5)=27, a(6)=33, a(7)=38, a(8)=43`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A314193

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P7624956979305627608.Spec : Prop :=
  ∀ n, P7624956979305627608.a n = A314193 n

theorem P7624956979305627608.correct : P7624956979305627608.Spec := by
  intro n
  simp only [A314193]

end A314193

/-! ## A314193.P13422552676583784905

`A315511(n)-A238469(n)`
-/

namespace A314193.P13422552676583784905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n - A238469 n

end

end A314193.P13422552676583784905

namespace A314193

/-- `A315511(n)-A238469(n)` -/
def P13422552676583784905.Spec : Prop :=
  ∀ n, P13422552676583784905.a n = A314193 n

end A314193

/-! ## A314193.P15771535187826767176

`abs(A008592(n)-A314753(n))`
-/

namespace A314193.P15771535187826767176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314753 n|

end

end A314193.P15771535187826767176

namespace A314193

/-- `abs(A008592(n)-A314753(n))` -/
def P15771535187826767176.Spec : Prop :=
  ∀ n, P15771535187826767176.a n = A314193 n

end A314193

/-! ## A314193.P2292933852821798244

`A314096(n)+Δ[A011860(n)]`
-/

namespace A314193.P2292933852821798244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314096 n + (f1 (n + 1) - f1 n)

end

end A314193.P2292933852821798244

namespace A314193

/-- `A314096(n)+Δ[A011860(n)]` -/
def P2292933852821798244.Spec : Prop :=
  ∀ n, P2292933852821798244.a n = A314193 n

end A314193

/-! ## A314193.P13950442725288183267

`2*A008706(n)-A314753(n)`
-/

namespace A314193.P13950442725288183267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314753 n

end

end A314193.P13950442725288183267

namespace A314193

/-- `2*A008706(n)-A314753(n)` -/
def P13950442725288183267.Spec : Prop :=
  ∀ n, P13950442725288183267.a n = A314193 n

end A314193

/-! ## A314193.P9415062468286650184

`A314148(n)-A238469(2*n)`
-/

namespace A314193.P9415062468286650184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314148 n - A238469 (2 * n)

end

end A314193.P9415062468286650184

namespace A314193

/-- `A314148(n)-A238469(2*n)` -/
def P9415062468286650184.Spec : Prop :=
  ∀ n, P9415062468286650184.a n = A314193 n

end A314193

/-! ## A314193.P13996199341209668750

`A315511(n)-A238470(2*n)`
-/

namespace A314193.P13996199341209668750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n - A238470 (2 * n)

end

end A314193.P13996199341209668750

namespace A314193

/-- `A315511(n)-A238470(2*n)` -/
def P13996199341209668750.Spec : Prop :=
  ∀ n, P13996199341209668750.a n = A314193 n

end A314193

/-! ## A314193.P15928367897047941304

`A191275(2*n+1)+A004277(n)`
-/

namespace A314193.P15928367897047941304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (2 * n + 1) + A004277 n

end

end A314193.P15928367897047941304

namespace A314193

/-- `A191275(2*n+1)+A004277(n)` -/
def P15928367897047941304.Spec : Prop :=
  ∀ n, P15928367897047941304.a n = A314193 n

end A314193

/-! ## A314193.P8793255180112191859

`A191275(2*n+1)+A004275(n+1)`
-/

namespace A314193.P8793255180112191859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (2 * n + 1) + A004275 (n + 1)

end

end A314193.P8793255180112191859

namespace A314193

/-- `A191275(2*n+1)+A004275(n+1)` -/
def P8793255180112191859.Spec : Prop :=
  ∀ n, P8793255180112191859.a n = A314193 n

end A314193

/-! ## A314193.P7285861257914633598

`A191275(2*n+1)+A028310(2*n)`
-/

namespace A314193.P7285861257914633598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (2 * n + 1) + A028310 (2 * n)

end

end A314193.P7285861257914633598

namespace A314193

/-- `A191275(2*n+1)+A028310(2*n)` -/
def P7285861257914633598.Spec : Prop :=
  ∀ n, P7285861257914633598.a n = A314193 n

end A314193

/-! ## A314193.P13809973359758932097

`2*n+A313051(n)-A047588(n+1)`
-/

namespace A314193.P13809973359758932097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A313051 n - A047588 (n + 1))

end

end A314193.P13809973359758932097

namespace A314193

/-- `2*n+A313051(n)-A047588(n+1)` -/
def P13809973359758932097.Spec : Prop :=
  ∀ n, P13809973359758932097.a n = A314193 n

end A314193

/-! ## A314193.P8425733711653883548

`A008458(n)-A004525(A047588(n+1))`
-/

namespace A314193.P8425733711653883548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A047588 (n + 1)).toNat

end

end A314193.P8425733711653883548

namespace A314193

/-- `A008458(n)-A004525(A047588(n+1))` -/
def P8425733711653883548.Spec : Prop :=
  ∀ n, P8425733711653883548.a n = A314193 n

end A314193

/-! ## A314193.P15750972466086677967

`A008458(n)+A008574(n)-A314753(n)`
-/

namespace A314193.P15750972466086677967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314753 n)

end

end A314193.P15750972466086677967

namespace A314193

/-- `A008458(n)+A008574(n)-A314753(n)` -/
def P15750972466086677967.Spec : Prop :=
  ∀ n, P15750972466086677967.a n = A314193 n

end A314193

/-! ## A314193.P17530616108175585603

`A008458(n)-A004525(A008458(n)-A310441(n))`
-/

namespace A314193.P17530616108175585603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310441 n).toNat

end

end A314193.P17530616108175585603

namespace A314193

/-- `A008458(n)-A004525(A008458(n)-A310441(n))` -/
def P17530616108175585603.Spec : Prop :=
  ∀ n, P17530616108175585603.a n = A314193 n

end A314193

/-! ## A314193.P4538542561056370955

`A004396(A310503(n))+2*n`
-/

namespace A314193.P4538542561056370955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310503 n).toNat + (2 * n : ℤ)

end

end A314193.P4538542561056370955

namespace A314193

/-- `A004396(A310503(n))+2*n` -/
def P4538542561056370955.Spec : Prop :=
  ∀ n, P4538542561056370955.a n = A314193 n

end A314193

/-! ## A314193.P6290624847501916659

`A004396(A313836(n))+2*n`
-/

namespace A314193.P6290624847501916659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313836 n).toNat + (2 * n : ℤ)

end

end A314193.P6290624847501916659

namespace A314193

/-- `A004396(A313836(n))+2*n` -/
def P6290624847501916659.Spec : Prop :=
  ∀ n, P6290624847501916659.a n = A314193 n

end A314193

/-! ## A314193.P6598004101473956302

`A005843(n)+A004396(A310503(n))`
-/

namespace A314193.P6598004101473956302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A310503 n).toNat

end

end A314193.P6598004101473956302

namespace A314193

/-- `A005843(n)+A004396(A310503(n))` -/
def P6598004101473956302.Spec : Prop :=
  ∀ n, P6598004101473956302.a n = A314193 n

end A314193

/-! ## A314193.P1185715951271344149

`A005843(n)+A004396(A313836(n))`
-/

namespace A314193.P1185715951271344149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313836 n).toNat

end

end A314193.P1185715951271344149

namespace A314193

/-- `A005843(n)+A004396(A313836(n))` -/
def P1185715951271344149.Spec : Prop :=
  ∀ n, P1185715951271344149.a n = A314193 n

end A314193

/-! ## A314193.P9431294770732897980

`A008585(n)-(n-A004396(A310503(n)))`
-/

namespace A314193.P9431294770732897980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A310503 n).toNat)

end

end A314193.P9431294770732897980

namespace A314193

/-- `A008585(n)-(n-A004396(A310503(n)))` -/
def P9431294770732897980.Spec : Prop :=
  ∀ n, P9431294770732897980.a n = A314193 n

end A314193

/-! ## A314193.P5661796684080383115

`A315647(n)-A175629(n)`
-/

namespace A314193.P5661796684080383115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n - A175629 n

end

end A314193.P5661796684080383115

namespace A314193

/-- `A315647(n)-A175629(n)` -/
def P5661796684080383115.Spec : Prop :=
  ∀ n, P5661796684080383115.a n = A314193 n

end A314193

/-!
# A314194: Coordination sequence Gal.6.625.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314194, the canonical program `A314194.P5043649871563701470` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314194 has offset 0).

The definition of A314194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314194.P4209840492753190265

`abs(A008592(n)-A314752(n))`
-/

namespace A314194.P4209840492753190265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314752 n|

end

end A314194.P4209840492753190265

namespace A314194

/-- `abs(A008592(n)-A314752(n))` -/
def P4209840492753190265.Spec : Prop :=
  ∀ n, P4209840492753190265.a n = A314194 n

end A314194

/-! ## A314194.P5043649871563701470

`A314117(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314194

/-- `A314117(n)+Δ[A011864(n)]` -/
def P5043649871563701470.Spec : Prop :=
  ∀ n, P5043649871563701470.a n = A314194 n

theorem P5043649871563701470.correct : P5043649871563701470.Spec := by
  intro n
  simp only [A314194]

end A314194

/-! ## A314194.P1300068647784532722

`A008458(n)+A008574(n)-A314752(n)`
-/

namespace A314194.P1300068647784532722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314752 n)

end

end A314194.P1300068647784532722

namespace A314194

/-- `A008458(n)+A008574(n)-A314752(n)` -/
def P1300068647784532722.Spec : Prop :=
  ∀ n, P1300068647784532722.a n = A314194 n

end A314194

/-! ## A314194.P14594654587681281204

`A008458(n)-A004525(A008458(n)-A310442(n))`
-/

namespace A314194.P14594654587681281204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310442 n).toNat

end

end A314194.P14594654587681281204

namespace A314194

/-- `A008458(n)-A004525(A008458(n)-A310442(n))` -/
def P14594654587681281204.Spec : Prop :=
  ∀ n, P14594654587681281204.a n = A314194 n

end A314194

/-! ## A314194.P11173404966906875941

`A008458(n)-A004525(A008458(n)-A313696(n))`
-/

namespace A314194.P11173404966906875941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A313696 n).toNat

end

end A314194.P11173404966906875941

namespace A314194

/-- `A008458(n)-A004525(A008458(n)-A313696(n))` -/
def P11173404966906875941.Spec : Prop :=
  ∀ n, P11173404966906875941.a n = A314194 n

end A314194

/-! ## A314194.P11820520803187666645

`A008458(n)-A004525(A008458(n)-A315034(n))`
-/

namespace A314194.P11820520803187666645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A315034 n).toNat

end

end A314194.P11820520803187666645

namespace A314194

/-- `A008458(n)-A004525(A008458(n)-A315034(n))` -/
def P11820520803187666645.Spec : Prop :=
  ∀ n, P11820520803187666645.a n = A314194 n

end A314194

/-! ## A314194.P13310273699119133227

`abs(8*n-A004525(A314038(n)))`
-/

namespace A314194.P13310273699119133227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) - A004525 (A314038 n).toNat|

end

end A314194.P13310273699119133227

namespace A314194

/-- `abs(8*n-A004525(A314038(n)))` -/
def P13310273699119133227.Spec : Prop :=
  ∀ n, P13310273699119133227.a n = A314194 n

end A314194

/-! ## A314194.P11413956546299697889

`A004396(2*(A313831(n)-n))`
-/

namespace A314194.P11413956546299697889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313831 n - (n : ℤ))).toNat

end

end A314194.P11413956546299697889

namespace A314194

/-- `A004396(2*(A313831(n)-n))` -/
def P11413956546299697889.Spec : Prop :=
  ∀ n, P11413956546299697889.a n = A314194 n

end A314194

/-! ## A314194.P12924886456853430820

`A004396(A005843(A313831(n)-n))`
-/

namespace A314194.P12924886456853430820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A313831 n - (n : ℤ)).toNat).toNat

end

end A314194.P12924886456853430820

namespace A314194

/-- `A004396(A005843(A313831(n)-n))` -/
def P12924886456853430820.Spec : Prop :=
  ∀ n, P12924886456853430820.a n = A314194 n

end A314194

/-! ## A314194.P6754261103685567048

`A315019(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A314194.P6754261103685567048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315019 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A314194.P6754261103685567048

namespace A314194

/-- `A315019(2*n)+A008574(n+1)-(8*n+4)` -/
def P6754261103685567048.Spec : Prop :=
  ∀ n, P6754261103685567048.a n = A314194 n

end A314194

/-! ## A314194.P13850206212508439287

`A008574(2*n)+A315019(2*n)-A008458(2*n)`
-/

namespace A314194.P13850206212508439287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A315019 (2 * n) - A008458 (2 * n))

end

end A314194.P13850206212508439287

namespace A314194

/-- `A008574(2*n)+A315019(2*n)-A008458(2*n)` -/
def P13850206212508439287.Spec : Prop :=
  ∀ n, P13850206212508439287.a n = A314194 n

end A314194

/-! ## A314194.P9510549281137936939

`2*A008574(2*n)-A314057(2*n)`
-/

namespace A314194.P9510549281137936939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314057 (2 * n)

end

end A314194.P9510549281137936939

namespace A314194

/-- `2*A008574(2*n)-A314057(2*n)` -/
def P9510549281137936939.Spec : Prop :=
  ∀ n, P9510549281137936939.a n = A314194 n

end A314194

/-! ## A314194.P6115785223456176843

`A004525(A314210(2*n))`
-/

namespace A314194.P6115785223456176843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314210 (2 * n)).toNat

end

end A314194.P6115785223456176843

namespace A314194

/-- `A004525(A314210(2*n))` -/
def P6115785223456176843.Spec : Prop :=
  ∀ n, P6115785223456176843.a n = A314194 n

end A314194

/-! ## A314194.P17946136207247554730

`A004525(A315519(2*n))`
-/

namespace A314194.P17946136207247554730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315519 (2 * n)).toNat

end

end A314194.P17946136207247554730

namespace A314194

/-- `A004525(A315519(2*n))` -/
def P17946136207247554730.Spec : Prop :=
  ∀ n, P17946136207247554730.a n = A314194 n

end A314194

/-! ## A314194.P6562594585252867991

`A004525(A310442(n)+A008458(n))`
-/

namespace A314194.P6562594585252867991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310442 n + A008458 n).toNat

end

end A314194.P6562594585252867991

namespace A314194

/-- `A004525(A310442(n)+A008458(n))` -/
def P6562594585252867991.Spec : Prop :=
  ∀ n, P6562594585252867991.a n = A314194 n

end A314194

/-! ## A314194.P12517807757961840914

`A004525(A310442(n)+A008588(n))`
-/

namespace A314194.P12517807757961840914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310442 n + A008588 n).toNat

end

end A314194.P12517807757961840914

namespace A314194

/-- `A004525(A310442(n)+A008588(n))` -/
def P12517807757961840914.Spec : Prop :=
  ∀ n, P12517807757961840914.a n = A314194 n

end A314194

/-! ## A314194.P12208626719555481114

`A004525(A313696(n)+A008458(n))`
-/

namespace A314194.P12208626719555481114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313696 n + A008458 n).toNat

end

end A314194.P12208626719555481114

namespace A314194

/-- `A004525(A313696(n)+A008458(n))` -/
def P12208626719555481114.Spec : Prop :=
  ∀ n, P12208626719555481114.a n = A314194 n

end A314194

/-! ## A314194.P4985021956048873392

`A004525(A315034(n)+A008458(n))`
-/

namespace A314194.P4985021956048873392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315034 n + A008458 n).toNat

end

end A314194.P4985021956048873392

namespace A314194

/-- `A004525(A315034(n)+A008458(n))` -/
def P4985021956048873392.Spec : Prop :=
  ∀ n, P4985021956048873392.a n = A314194 n

end A314194

/-! ## A314194.P5874569980911890029

`A004525(A315034(n)+A008588(n))`
-/

namespace A314194.P5874569980911890029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315034 n + A008588 n).toNat

end

end A314194.P5874569980911890029

namespace A314194

/-- `A004525(A315034(n)+A008588(n))` -/
def P5874569980911890029.Spec : Prop :=
  ∀ n, P5874569980911890029.a n = A314194 n

end A314194

/-! ## A314194.P16079780447749046890

`A310533(A008486(n))/2-A008486(n)`
-/

namespace A314194.P16079780447749046890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310533 (A008486 n).toNat : ℚ) / 2 - (A008486 n : ℚ)

end

end A314194.P16079780447749046890

namespace A314194

/-- `A310533(A008486(n))/2-A008486(n)` -/
def P16079780447749046890.Spec : Prop :=
  ∀ n, P16079780447749046890.a n = (A314194 n : ℚ)

end A314194

/-!
# A314195: Coordination sequence Gal.6.645.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314195, there is no canonical definition to state claims against.
-/

/-! ## A314195.P15040052204919735508

`or(A001221(A148504(n)), A314133(n))`
-/

namespace A314195.P15040052204919735508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A148504 n).toNat) (A314133 n)

end

end A314195.P15040052204919735508

/-! ## A314195.P14183171911734328749

`or(A286487(A295059(n)), A313899(n))`
-/

namespace A314195.P14183171911734328749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286487 (A295059 n).toNat) (A313899 n)

end

end A314195.P14183171911734328749

/-! ## A314195.P16332823029677715782

`or(A008835(A077741(n+1)), A313899(n))`
-/

namespace A314195.P16332823029677715782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008835 (A077741 (n + 1)).toNat) (A313899 n)

end

end A314195.P16332823029677715782

/-! ## A314195.P4259585109409926156

`or(A086251(A104870(n+1)), A314133(n))`
-/

namespace A314195.P4259585109409926156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086251 (A104870 (n + 1)).toNat) (A314133 n)

end

end A314195.P4259585109409926156

/-! ## A314195.P5082348422452400518

`A213923(A101822(n+1))`
-/

namespace A314195.P5082348422452400518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213923 (A101822 (n + 1)).toNat

end

end A314195.P5082348422452400518

/-!
# A314196: Coordination sequence Gal.5.298.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314196, there is no canonical definition to state claims against.
-/

/-! ## A314196.P1527610414898124794

`or(A035612(ceil(2^(n-1))), A314134(n))`
-/

namespace A314196.P1527610414898124794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035612 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A314134 n)

end

end A314196.P1527610414898124794

/-! ## A314196.P1218109269950128650

`or(A238802(A187829(n+1)), A314134(n))`
-/

namespace A314196.P1218109269950128650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238802 (A187829 (n + 1)).toNat) (A314134 n)

end

end A314196.P1218109269950128650

/-! ## A314196.P11437115771601974154

`or(A119269(A324969(n+1)), A314134(n))`
-/

namespace A314196.P11437115771601974154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A119269 (A324969 (n + 1)).toNat) (A314134 n)

end

end A314196.P11437115771601974154

/-! ## A314196.P18311316944672620251

`or(A279060(A290905(n)), A313899(n))`
-/

namespace A314196.P18311316944672620251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279060 (A290905 n).toNat) (A313899 n)

end

end A314196.P18311316944672620251

/-! ## A314196.P12424259226878631899

`or(A279060(A290905(n)), A314134(n))`
-/

namespace A314196.P12424259226878631899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279060 (A290905 n).toNat) (A314134 n)

end

end A314196.P12424259226878631899

/-!
# A314197: Coordination sequence Gal.5.307.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314197, there is no canonical definition to state claims against.
-/

/-! ## A314197.P15118803340432607362

`A250120(n)+A023416(A026150(n))`
-/

namespace A314197.P15118803340432607362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A023416 (A026150 n).toNat

end

end A314197.P15118803340432607362

/-! ## A314197.P16144476846795827173

`A072154(2*n)+A023416(A026150(n))`
-/

namespace A314197.P16144476846795827173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A023416 (A026150 n).toNat

end

end A314197.P16144476846795827173

/-! ## A314197.P4830547948184601570

`A263085(2*(n+1))-A263087(A259381(n+1))`
-/

namespace A314197.P4830547948184601570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (2 * (n + 1)) - A263087 (A259381 (n + 1)).toNat

end

end A314197.P4830547948184601570

/-! ## A314197.P16132553248145638476

`A023416(A026150(n))+record[A072154(n)/(-1)^n]`
-/

namespace A314197.P16132553248145638476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023416 (A026150 n).toNat : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314197.P16132553248145638476

/-! ## A314197.P2333763374926298602

`A047486(A008486(n)+1)+A023416(A026150(n))`
-/

namespace A314197.P2333763374926298602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat + A023416 (A026150 n).toNat

end

end A314197.P2333763374926298602

/-!
# A314198: Coordination sequence Gal.3.59.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314198, there is no canonical definition to state claims against.
-/

/-! ## A314198.P12011091299444797727

`A313786(n)+A313321(n)-A250122(2*n)`
-/

namespace A314198.P12011091299444797727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n + (A313321 n - A250122 (2 * n))

end

end A314198.P12011091299444797727

/-! ## A314198.P10322450638231333568

`A313842(n)+A001222(A200755(n))`
-/

namespace A314198.P10322450638231333568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n + A001222 (A200755 n).toNat

end

end A314198.P10322450638231333568

/-! ## A314198.P7013910024631389713

`A314224(n)-A008683(A254260(n+1))`
-/

namespace A314198.P7013910024631389713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314224 n - A008683 (A254260 (n + 1)).toNat

end

end A314198.P7013910024631389713

/-! ## A314198.P4047602622674928513

`A314815(n)+A001222(A003665(n))`
-/

namespace A314198.P4047602622674928513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314815 n + A001222 (A003665 n).toNat

end

end A314198.P4047602622674928513

/-!
# A314199: Coordination sequence Gal.5.327.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314199, there is no canonical definition to state claims against.
-/

/-! ## A314199.P4790822235209224467

`A314187(n)+A327343(A224118(n+1)+1)-1`
-/

namespace A314199.P4790822235209224467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314187 n + (A327343 (A224118 (n + 1) + 1).toNat - 1)

end

end A314199.P4790822235209224467

