import SequenceMachineLib.Basic
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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A310300: Coordination sequence Gal.5.25.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310300, there is no canonical definition to state claims against.
-/

/-! ## A310300.P4390855601586600463

`A283481(n+1)+A029837(A283487(n+1))`
-/

namespace A310300.P4390855601586600463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283481 (n + 1) + A029837 (A283487 (n + 1)).toNat

end

end A310300.P4390855601586600463

/-! ## A310300.P10451734721851896878

`A156262(A136054(n+1)-A026453(n+1))`
-/

namespace A310300.P10451734721851896878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A136054 (n + 1) - A026453 (n + 1)).toNat

end

end A310300.P10451734721851896878

/-!
# A310301: Coordination sequence Gal.5.28.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310301, there is no canonical definition to state claims against.
-/

/-! ## A310301.P15644279954099052231

`A310302(n)%A095617(n)`
-/

namespace A310301.P15644279954099052231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310302 n) (A095617 n)

end

end A310301.P15644279954099052231

/-! ## A310301.P7904609995569779087

`∑[A165116(A160786(2*n))]`
-/

namespace A310301.P7904609995569779087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165116 (A160786 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310301.P7904609995569779087

/-! ## A310301.P15401678003918823038

`A310302(n*Δ[A045918(n)])`
-/

namespace A310301.P15401678003918823038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310302 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A310301.P15401678003918823038

/-! ## A310301.P950481264933681220

`A310302(A061134(n+1)+n)`
-/

namespace A310301.P950481264933681220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310302 (A061134 (n + 1) + (n : ℤ)).toNat

end

end A310301.P950481264933681220

/-! ## A310301.P929789596428453264

`A310302(n)+A000007(A328437(n))`
-/

namespace A310301.P929789596428453264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310302 n + A000007 (A328437 n).toNat

end

end A310301.P929789596428453264

/-!
# A310303: Coordination sequence Gal.6.59.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310303, there is no canonical definition to state claims against.
-/

/-! ## A310303.P14406616614328454659

`A310398(n)-A123369(A057575(n))`
-/

namespace A310303.P14406616614328454659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A123369 (A057575 n).toNat

end

end A310303.P14406616614328454659

/-! ## A310303.P3168545505150023581

`A311794(n)-A327222(A292549(n))`
-/

namespace A310303.P3168545505150023581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311794 n - A327222 (A292549 n).toNat

end

end A310303.P3168545505150023581

/-! ## A310303.P16491862026244969332

`A311794(n)-A327222(A316411(n))`
-/

namespace A310303.P16491862026244969332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311794 n - A327222 (A316411 (n + 10)).toNat

end

end A310303.P16491862026244969332

/-! ## A310303.P10422395108249788025

`A301293(n)-A161606(A249310(n+1))`
-/

namespace A310303.P10422395108249788025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A161606 (A249310 (n + 1)).toNat

end

end A310303.P10422395108249788025

/-! ## A310303.P216454395069215672

`A311794(n)-A327222(A316408(n+7))`
-/

namespace A310303.P216454395069215672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311794 n - A327222 (A316408 (n + 7)).toNat

end

end A310303.P216454395069215672

/-!
# A310305: Coordination sequence Gal.6.68.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310305, there is no canonical definition to state claims against.
-/

/-! ## A310305.P9301717628362565518

`∑[A323312(A264755(n+1))]`
-/

namespace A310305.P9301717628362565518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323312 (A264755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310305.P9301717628362565518

/-! ## A310305.P17765878431571497712

`eq[Δ[A194509(n+1)²], A185322(n+1)]`
-/

namespace A310305.P17765878431571497712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A310305.P17765878431571497712

/-! ## A310305.P8115143000865094923

`A310258(n)+A277007(A000738(n))`
-/

namespace A310305.P8115143000865094923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310258 n + A277007 (A000738 n).toNat

end

end A310305.P8115143000865094923

/-! ## A310305.P5218516096873517962

`A312664(n)-A165277(A253409(n))`
-/

namespace A310305.P5218516096873517962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312664 n - A165277 (A253409 n).toNat

end

end A310305.P5218516096873517962

/-! ## A310305.P7138997833247971203

`A313108(n)-A102669(A104350(n+1))`
-/

namespace A310305.P7138997833247971203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313108 n - A102669 (A104350 (n + 1)).toNat

end

end A310305.P7138997833247971203

/-!
# A310306: Coordination sequence Gal.6.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310306, there is no canonical definition to state claims against.
-/

/-! ## A310306.P18023215249997828182

`∑[A001918(3^A121380(n+1))]`
-/

namespace A310306.P18023215249997828182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A121380 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310306.P18023215249997828182

/-! ## A310306.P11666469560645405566

`record[A310529(n)-A162228(n+1)]`
-/

namespace A310306.P11666469560645405566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n - A162228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310306.P11666469560645405566

/-! ## A310306.P16001314030746562030

`record[A000040(2*n+1)-A214452(n+1)]`
-/

namespace A310306.P16001314030746562030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) - A214452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310306.P16001314030746562030

/-!
# A310307: Coordination sequence Gal.6.65.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310307, there is no canonical definition to state claims against.
-/

/-! ## A310307.P7646357406584417265

`A312351(n)+A008683(A260498(n+1))`
-/

namespace A310307.P7646357406584417265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312351 n + A008683 (A260498 (n + 1)).toNat

end

end A310307.P7646357406584417265

/-!
# A310308: Coordination sequence Gal.4.20.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310308, there is no canonical definition to state claims against.
-/

/-! ## A310308.P15085563632887570854

`A310309(n)-A017847(A032559(n+1))`
-/

namespace A310308.P15085563632887570854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310309 n - A017847 (A032559 (n + 1)).toNat

end

end A310308.P15085563632887570854

/-!
# A310309: Coordination sequence Gal.6.63.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310309, there is no canonical definition to state claims against.
-/

/-! ## A310309.P3100080959680295755

`A310308(n)+A017847(A032559(n+1))`
-/

namespace A310309.P3100080959680295755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310308 n + A017847 (A032559 (n + 1)).toNat

end

end A310309.P3100080959680295755

/-!
# A310311: Coordination sequence Gal.6.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310311, there is no canonical definition to state claims against.
-/

/-! ## A310311.P4728754364745423999

`∑[dr(A227876(A024025(n)))]`
-/

namespace A310311.P4728754364745423999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A227876 (A024025 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310311.P4728754364745423999

/-!
# A310312: Coordination sequence Gal.6.58.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310312, there is no canonical definition to state claims against.
-/

/-! ## A310312.P5774128897144179153

`A111925(n+1)-A334028(A105571(n+1))`
-/

namespace A310312.P5774128897144179153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1) - A334028 (A105571 (n + 1)).toNat

end

end A310312.P5774128897144179153

/-! ## A310312.P4509468413939942145

`∑[A261876(A056391(∑{d}[n+1, #]))]`
-/

namespace A310312.P4509468413939942145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261876 (A056391 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310312.P4509468413939942145

/-! ## A310312.P1019165258780997643

`A310255(n)+A001222(A001930(n))`
-/

namespace A310312.P1019165258780997643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310255 n + A001222 (A001930 n).toNat

end

end A310312.P1019165258780997643

/-! ## A310312.P13374392249236188726

`A111925(n+1)-A230643(A042051(n))`
-/

namespace A310312.P13374392249236188726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1) - A230643 (A042051 n).toNat

end

end A310312.P13374392249236188726

/-! ## A310312.P117921388166381188

`A140595(lt[A144228(3*n+4), A160009(n+3)])`
-/

namespace A310312.P117921388166381188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310312.P117921388166381188

/-!
# A310313: Coordination sequence Gal.6.56.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310313, there is no canonical definition to state claims against.
-/

/-! ## A310313.P4871196555851194146

`∑[A234533(A234643(n))]`
-/

namespace A310313.P4871196555851194146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234533 (A234643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310313.P4871196555851194146

/-! ## A310313.P11094182610602931845

`A088752(A118958(n+2))`
-/

namespace A310313.P11094182610602931845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088752 (A118958 (n + 2)).toNat

end

end A310313.P11094182610602931845

/-! ## A310313.P7276227091698139574

`∑[A320033(A320040(n+1)+A320026(n+1))]`
-/

namespace A310313.P7276227091698139574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320033 (A320040 (n + 1) + A320026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310313.P7276227091698139574

/-!
# A310315: Coordination sequence Gal.5.31.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310315, there is no canonical definition to state claims against.
-/

/-! ## A310315.P8066200906545260058

`or(A342098(n+1), A342515(A002313(n+1)))`
-/

namespace A310315.P8066200906545260058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A342098 (n + 1)) (A342515 (A002313 (n + 1)).toNat)

end

end A310315.P8066200906545260058

/-!
# A310316: Coordination sequence Gal.6.78.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310316, there is no canonical definition to state claims against.
-/

/-! ## A310316.P1521261127079650580

`A204551(A030142(3*n+1)²)`
-/

namespace A310316.P1521261127079650580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A030142 (3 * n + 1) ^ 2).toNat

end

end A310316.P1521261127079650580

/-! ## A310316.P7204345540052323564

`lt[A168347(2*(n+1)), A297094(n+1)]+n+1`
-/

namespace A310316.P7204345540052323564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168347 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (n + 1)

end

end A310316.P7204345540052323564

/-! ## A310316.P799358217983191370

`A188012(n+1)-A134570(A000124(n))`
-/

namespace A310316.P799358217983191370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (n + 1) - A134570 (A000124 n).toNat

end

end A310316.P799358217983191370

/-! ## A310316.P15948400939818630408

`A190437(n+1)-A250068(A116286(n+1))`
-/

namespace A310316.P15948400939818630408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190437 (n + 1) - A250068 (A116286 (n + 1)).toNat

end

end A310316.P15948400939818630408

/-!
# A310322: Coordination sequence Gal.4.22.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310322, there is no canonical definition to state claims against.
-/

/-! ## A310322.P4810222973149009742

`A310393(n)-A109004(A075173(n+1))`
-/

namespace A310322.P4810222973149009742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310393 n - A109004 (A075173 (n + 1)).toNat

end

end A310322.P4810222973149009742

/-! ## A310322.P8808314553762541726

`A310154(A004396(2*n)%A061954(2*(n+1)))`
-/

namespace A310322.P8808314553762541726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310154 (Int.tmod (A004396 (2 * n)) (A061954 (2 * (n + 1)))).toNat

end

end A310322.P8808314553762541726

/-! ## A310322.P9441695644733895424

`A310154(A004396(2*n))%A029542(2*n+5)`
-/

namespace A310322.P9441695644733895424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310154 (A004396 (2 * n)).toNat) (A029542 (2 * n + 5))

end

end A310322.P9441695644733895424

/-! ## A310322.P17830744392827891514

`∑{digits}[A000082(A211282(n)), #]`
-/

namespace A310322.P17830744392827891514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (A211282 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A310322.P17830744392827891514

/-!
# A310323: Coordination sequence Gal.5.30.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310323, there is no canonical definition to state claims against.
-/

/-! ## A310323.P3925690227248132867

`A261953(n)+A112765(A210725(2*(n+1)))`
-/

namespace A310323.P3925690227248132867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 n + A112765 (A210725 (2 * (n + 1))).toNat

end

end A310323.P3925690227248132867

/-!
# A310330: Coordination sequence Gal.6.73.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310330, there is no canonical definition to state claims against.
-/

/-! ## A310330.P2336109093403476144

`record[A189737(n+1)%A196252(3*n+1)]`
-/

namespace A310330.P2336109093403476144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189737 (n + 1)) (A196252 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310330.P2336109093403476144

/-! ## A310330.P13344286535391796651

`A250120(n)-A242830(A042317(n))`
-/

namespace A310330.P13344286535391796651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A242830 (A042317 n).toNat

end

end A310330.P13344286535391796651

/-! ## A310330.P12390316974506254856

`A008486(eq[A029291(n), A060576(n)])`
-/

namespace A310330.P12390316974506254856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A310330.P12390316974506254856

/-! ## A310330.P9881279642664261396

`∩[A346131(A066650(n+1)), A008486(n)]`
-/

namespace A310330.P9881279642664261396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (A066650 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A310330.P9881279642664261396

/-! ## A310330.P11442481664812974230

`A250120(n)-A278045(A369923(3*n+5))`
-/

namespace A310330.P11442481664812974230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A278045 (A369923 (3 * n + 5)).toNat

end

end A310330.P11442481664812974230

/-!
# A310331: Coordination sequence Gal.6.77.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310331, the canonical program `A310331.P12389006043562410268` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310331 has offset 0).

The definition of A310331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310331.P12389006043562410268

`A298024(A047273(n+1))-A265188(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310331

/-- `A298024(A047273(n+1))-A265188(n+1)` -/
def P12389006043562410268.Spec : Prop :=
  ∀ n, P12389006043562410268.a n = A310331 n

theorem P12389006043562410268.correct : P12389006043562410268.Spec := by
  intro n
  simp only [A310331]

end A310331

/-! ## A310331.P5662087682455958365

`A008486(A047263(3*n+1)-A047599(n+1))`
-/

namespace A310331.P5662087682455958365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047263 (3 * n + 1) - A047599 (n + 1)).toNat

end

end A310331.P5662087682455958365

namespace A310331

/-- `A008486(A047263(3*n+1)-A047599(n+1))` -/
def P5662087682455958365.Spec : Prop :=
  ∀ n, P5662087682455958365.a n = A310331 n

end A310331

/-! ## A310331.P16016627835695492757

`A312620(A004525(3*n))-A265188(n+1)`
-/

namespace A310331.P16016627835695492757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 (A004525 (3 * n)).toNat - A265188 (n + 1)

end

end A310331.P16016627835695492757

namespace A310331

/-- `A312620(A004525(3*n))-A265188(n+1)` -/
def P16016627835695492757.Spec : Prop :=
  ∀ n, P16016627835695492757.a n = A310331 n

end A310331

/-! ## A310331.P7746785261474970687

`A312620(n-(A004525(n)-n))-A265188(n+1)`
-/

namespace A310331.P7746785261474970687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 ((n : ℤ) - (A004525 n - (n : ℤ))).toNat - A265188 (n + 1)

end

end A310331.P7746785261474970687

namespace A310331

/-- `A312620(n-(A004525(n)-n))-A265188(n+1)` -/
def P7746785261474970687.Spec : Prop :=
  ∀ n, P7746785261474970687.a n = A310331 n

end A310331

/-! ## A310331.P11679618247224914286

`A008486(A313956(2*n)%A008486(n))`
-/

namespace A310331.P11679618247224914286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A313956 (2 * n)) (A008486 n)).toNat

end

end A310331.P11679618247224914286

namespace A310331

/-- `A008486(A313956(2*n)%A008486(n))` -/
def P11679618247224914286.Spec : Prop :=
  ∀ n, P11679618247224914286.a n = A310331 n

end A310331

/-!
# A310333: Coordination sequence Gal.6.13.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310333, there is no canonical definition to state claims against.
-/

/-! ## A310333.P4397228701470978776

`xor(A016813(n), A032741(A001159(n+1)))`
-/

namespace A310333.P4397228701470978776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016813 n) (A032741 (A001159 (n + 1)).toNat)

end

end A310333.P4397228701470978776

/-! ## A310333.P9205492159917869139

`A383299(2*n+1)+A138121(A072083(n+1))`
-/

namespace A310333.P9205492159917869139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383299 (2 * n + 1) + A138121 (A072083 (n + 1)).toNat

end

end A310333.P9205492159917869139

/-!
# A310334: Coordination sequence Gal.6.52.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310334, there is no canonical definition to state claims against.
-/

/-! ## A310334.P10391408783187501718

`A310335(A087051(n))`
-/

namespace A310334.P10391408783187501718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310335 (A087051 n).toNat

end

end A310334.P10391408783187501718

/-! ## A310334.P8296383207231448516

`A310335(A227549(n+1))`
-/

namespace A310334.P8296383207231448516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310335 (A227549 (n + 1)).toNat

end

end A310334.P8296383207231448516

/-! ## A310334.P3957564044903739139

`A310335(A396204(n+1))`
-/

namespace A310334.P3957564044903739139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310335 (A396204 (n + 1)).toNat

end

end A310334.P3957564044903739139

/-! ## A310334.P11228571621554350859

`A036445(2*A310335(n))`
-/

namespace A310334.P11228571621554350859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (2 * A310335 n).toNat

end

end A310334.P11228571621554350859

/-! ## A310334.P14686537986540137741

`A323462(2*A310335(n))`
-/

namespace A310334.P14686537986540137741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323462 (2 * A310335 n).toNat

end

end A310334.P14686537986540137741

/-!
# A310337: Coordination sequence Gal.5.126.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310337, there is no canonical definition to state claims against.
-/

/-! ## A310337.P14103748567462107196

`2*A313446(n)-A315311(n)`
-/

namespace A310337.P14103748567462107196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313446 n - A315311 n

end

end A310337.P14103748567462107196

/-! ## A310337.P16251925594639900102

`A004277(A313446(n))-A315311(n)`
-/

namespace A310337.P16251925594639900102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313446 n).toNat - A315311 n

end

end A310337.P16251925594639900102

/-!
# A310339: Coordination sequence Gal.6.58.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310339, there is no canonical definition to state claims against.
-/

/-! ## A310339.P1192493250982792059

`or(A028242(n), A085516(A311440(n)))`
-/

namespace A310339.P1192493250982792059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028242 n) (A085516 (A311440 n).toNat)

end

end A310339.P1192493250982792059

/-!
# A310341: Coordination sequence Gal.6.527.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310341, the canonical program `A310341.P11035500024239819754` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310341 has offset 0).

The definition of A310341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310341.P11035500024239819754

`A312289(n)-2*A238468(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310341

/-- `A312289(n)-2*A238468(n)` -/
def P11035500024239819754.Spec : Prop :=
  ∀ n, P11035500024239819754.a n = A310341 n

theorem P11035500024239819754.correct : P11035500024239819754.Spec := by
  intro n
  simp only [A310341]

end A310341

/-! ## A310341.P18177533369395283700

`A314674(n)-A175629(A175629(n)+n)`
-/

namespace A310341.P18177533369395283700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n - A175629 (A175629 n + (n : ℤ)).toNat

end

end A310341.P18177533369395283700

namespace A310341

/-- `A314674(n)-A175629(A175629(n)+n)` -/
def P18177533369395283700.Spec : Prop :=
  ∀ n, P18177533369395283700.a n = A310341 n

end A310341

/-! ## A310341.P17674699859237493974

`A312895(n)-A238468(n)`
-/

namespace A310341.P17674699859237493974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n - A238468 n

end

end A310341.P17674699859237493974

namespace A310341

/-- `A312895(n)-A238468(n)` -/
def P17674699859237493974.Spec : Prop :=
  ∀ n, P17674699859237493974.a n = A310341 n

end A310341

/-! ## A310341.P17010174400080543926

`2*A312895(n)-A312289(n)`
-/

namespace A310341.P17010174400080543926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312895 n - A312289 n

end

end A310341.P17010174400080543926

namespace A310341

/-- `2*A312895(n)-A312289(n)` -/
def P17010174400080543926.Spec : Prop :=
  ∀ n, P17010174400080543926.a n = A310341 n

end A310341

/-! ## A310341.P5071675663456815870

`A311586(n)+2*A238470(n)`
-/

namespace A310341.P5071675663456815870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + 2 * A238470 n

end

end A310341.P5071675663456815870

namespace A310341

/-- `A311586(n)+2*A238470(n)` -/
def P5071675663456815870.Spec : Prop :=
  ∀ n, P5071675663456815870.a n = A310341 n

end A310341

/-! ## A310341.P3383622147669245094

`2*A310411(n)-A310529(n)`
-/

namespace A310341.P3383622147669245094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310411 n - A310529 n

end

end A310341.P3383622147669245094

namespace A310341

/-- `2*A310411(n)-A310529(n)` -/
def P3383622147669245094.Spec : Prop :=
  ∀ n, P3383622147669245094.a n = A310341 n

end A310341

/-! ## A310341.P954258580382452073

`A310529(n)-A005843(A310529(n)-A310411(n))`
-/

namespace A310341.P954258580382452073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n - A005843 (A310529 n - A310411 n).toNat

end

end A310341.P954258580382452073

namespace A310341

/-- `A310529(n)-A005843(A310529(n)-A310411(n))` -/
def P954258580382452073.Spec : Prop :=
  ∀ n, P954258580382452073.a n = A310341 n

end A310341

/-! ## A310341.P18227805662821380101

`2*A314040(n)-A008458(n)`
-/

namespace A310341.P18227805662821380101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314040 n - A008458 n

end

end A310341.P18227805662821380101

namespace A310341

/-- `2*A314040(n)-A008458(n)` -/
def P18227805662821380101.Spec : Prop :=
  ∀ n, P18227805662821380101.a n = A310341 n

end A310341

/-! ## A310341.P16115956917023393789

`A103517(A314040(n)-A016777(n))`
-/

namespace A310341.P16115956917023393789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314040 n - A016777 n).toNat

end

end A310341.P16115956917023393789

namespace A310341

/-- `A103517(A314040(n)-A016777(n))` -/
def P16115956917023393789.Spec : Prop :=
  ∀ n, P16115956917023393789.a n = A310341 n

end A310341

/-! ## A310341.P10129543366831705428

`A103517(A314040(n)%A016777(n))`
-/

namespace A310341.P10129543366831705428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A314040 n) (A016777 n)).toNat

end

end A310341.P10129543366831705428

namespace A310341

/-- `A103517(A314040(n)%A016777(n))` -/
def P10129543366831705428.Spec : Prop :=
  ∀ n, P10129543366831705428.a n = A310341 n

end A310341

/-! ## A310341.P17610849998932115618

`A008458(n)-A005843(A008458(n)-A314040(n))`
-/

namespace A310341.P17610849998932115618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314040 n).toNat

end

end A310341.P17610849998932115618

namespace A310341

/-- `A008458(n)-A005843(A008458(n)-A314040(n))` -/
def P17610849998932115618.Spec : Prop :=
  ∀ n, P17610849998932115618.a n = A310341 n

end A310341

/-! ## A310341.P11353503253597275683

`A005843(A312895(n))-A312289(n)`
-/

namespace A310341.P11353503253597275683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312895 n).toNat - A312289 n

end

end A310341.P11353503253597275683

namespace A310341

/-- `A005843(A312895(n))-A312289(n)` -/
def P11353503253597275683.Spec : Prop :=
  ∀ n, P11353503253597275683.a n = A310341 n

end A310341

/-! ## A310341.P817203138347432750

`A005843(A310411(n))-A310529(n)`
-/

namespace A310341.P817203138347432750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310411 n).toNat - A310529 n

end

end A310341.P817203138347432750

namespace A310341

/-- `A005843(A310411(n))-A310529(n)` -/
def P817203138347432750.Spec : Prop :=
  ∀ n, P817203138347432750.a n = A310341 n

end A310341

/-! ## A310341.P7878650905496866031

`A005843(A314040(n))-A008458(n)`
-/

namespace A310341.P7878650905496866031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314040 n).toNat - A008458 n

end

end A310341.P7878650905496866031

namespace A310341

/-- `A005843(A314040(n))-A008458(n)` -/
def P7878650905496866031.Spec : Prop :=
  ∀ n, P7878650905496866031.a n = A310341 n

end A310341

/-!
# A310342: Coordination sequence Gal.5.253.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310342, the canonical program `A310342.P2244144917321736231` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310342 has offset 0).

The definition of A310342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310342.P2244144917321736231

`record[A266437(n)+A058207(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310342

/-- `record[A266437(n)+A058207(n)]` -/
def P2244144917321736231.Spec : Prop :=
  ∀ n, P2244144917321736231.a n = A310342 n

theorem P2244144917321736231.correct : P2244144917321736231.Spec := by
  intro n
  simp only [A310342]

end A310342

/-! ## A310342.P3148043189930921614

`A004275(A047412(2*(n+1))-n)`
-/

namespace A310342.P3148043189930921614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047412 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A310342.P3148043189930921614

namespace A310342

/-- `A004275(A047412(2*(n+1))-n)` -/
def P3148043189930921614.Spec : Prop :=
  ∀ n, P3148043189930921614.a n = A310342 n

end A310342

/-! ## A310342.P14491124472776551973

`A004277(A047486(2*n+1)-n)`
-/

namespace A310342.P14491124472776551973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047486 (2 * n + 1) - (n : ℤ)).toNat

end

end A310342.P14491124472776551973

namespace A310342

/-- `A004277(A047486(2*n+1)-n)` -/
def P14491124472776551973.Spec : Prop :=
  ∀ n, P14491124472776551973.a n = A310342 n

end A310342

/-! ## A310342.P2927683687587939493

`A310518(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310342.P2927683687587939493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310342.P2927683687587939493

namespace A310342

/-- `A310518(2*n)+A008458(n+1)-(12*n+6)` -/
def P2927683687587939493.Spec : Prop :=
  ∀ n, P2927683687587939493.a n = A310342 n

end A310342

/-! ## A310342.P13879853978716363212

`A047486(2*n+1)+A004525(A072154(n))`
-/

namespace A310342.P13879853978716363212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * n + 1) + A004525 (A072154 n).toNat

end

end A310342.P13879853978716363212

namespace A310342

/-- `A047486(2*n+1)+A004525(A072154(n))` -/
def P13879853978716363212.Spec : Prop :=
  ∀ n, P13879853978716363212.a n = A310342 n

end A310342

/-! ## A310342.P4033642059515826888

`A008458(n)-2*A004525(A047486(n+1))`
-/

namespace A310342.P4033642059515826888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004525 (A047486 (n + 1)).toNat

end

end A310342.P4033642059515826888

namespace A310342

/-- `A008458(n)-2*A004525(A047486(n+1))` -/
def P4033642059515826888.Spec : Prop :=
  ∀ n, P4033642059515826888.a n = A310342 n

end A310342

/-! ## A310342.P12763617585778926426

`A314685(n)-A244895(2*n)`
-/

namespace A310342.P12763617585778926426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n - A244895 (2 * n)

end

end A310342.P12763617585778926426

namespace A310342

/-- `A314685(n)-A244895(2*n)` -/
def P12763617585778926426.Spec : Prop :=
  ∀ n, P12763617585778926426.a n = A310342 n

end A310342

/-! ## A310342.P13176057485697126567

`2*A314049(n)-A008458(n)`
-/

namespace A310342.P13176057485697126567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314049 n - A008458 n

end

end A310342.P13176057485697126567

namespace A310342

/-- `2*A314049(n)-A008458(n)` -/
def P13176057485697126567.Spec : Prop :=
  ∀ n, P13176057485697126567.a n = A310342 n

end A310342

/-! ## A310342.P12239051793155011312

`A103517(A314049(n)-A016777(n))`
-/

namespace A310342.P12239051793155011312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314049 n - A016777 n).toNat

end

end A310342.P12239051793155011312

namespace A310342

/-- `A103517(A314049(n)-A016777(n))` -/
def P12239051793155011312.Spec : Prop :=
  ∀ n, P12239051793155011312.a n = A310342 n

end A310342

/-! ## A310342.P8650855696050943253

`A103517(A314049(n)%A016777(n))`
-/

namespace A310342.P8650855696050943253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A314049 n) (A016777 n)).toNat

end

end A310342.P8650855696050943253

namespace A310342

/-- `A103517(A314049(n)%A016777(n))` -/
def P8650855696050943253.Spec : Prop :=
  ∀ n, P8650855696050943253.a n = A310342 n

end A310342

/-! ## A310342.P16445899573722750483

`A004277(A314049(n)-(A004277(n)+n))`
-/

namespace A310342.P16445899573722750483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314049 n - (A004277 n + (n : ℤ))).toNat

end

end A310342.P16445899573722750483

namespace A310342

/-- `A004277(A314049(n)-(A004277(n)+n))` -/
def P16445899573722750483.Spec : Prop :=
  ∀ n, P16445899573722750483.a n = A310342 n

end A310342

/-! ## A310342.P6061417322314309661

`A008574(n)+A314049(n)-A250120(n)`
-/

namespace A310342.P6061417322314309661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314049 n - A250120 n)

end

end A310342.P6061417322314309661

namespace A310342

/-- `A008574(n)+A314049(n)-A250120(n)` -/
def P6061417322314309661.Spec : Prop :=
  ∀ n, P6061417322314309661.a n = A310342 n

end A310342

/-! ## A310342.P5291598554955891345

`A004277(A314049(n)-n-A004277(n))`
-/

namespace A310342.P5291598554955891345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314049 n - (n : ℤ) - A004277 n).toNat

end

end A310342.P5291598554955891345

namespace A310342

/-- `A004277(A314049(n)-n-A004277(n))` -/
def P5291598554955891345.Spec : Prop :=
  ∀ n, P5291598554955891345.a n = A310342 n

end A310342

/-! ## A310342.P2073048135419296440

`A004277(A008706(n))-A348237(2*n)`
-/

namespace A310342.P2073048135419296440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008706 n).toNat - A348237 (2 * n)

end

end A310342.P2073048135419296440

namespace A310342

/-- `A004277(A008706(n))-A348237(2*n)` -/
def P2073048135419296440.Spec : Prop :=
  ∀ n, P2073048135419296440.a n = A310342 n

end A310342

/-! ## A310342.P7474784162809560650

`A005843(A314049(n))-A008458(n)`
-/

namespace A310342.P7474784162809560650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314049 n).toNat - A008458 n

end

end A310342.P7474784162809560650

namespace A310342

/-- `A005843(A314049(n))-A008458(n)` -/
def P7474784162809560650.Spec : Prop :=
  ∀ n, P7474784162809560650.a n = A310342 n

end A310342

/-! ## A310342.P16886233815783106835

`A311570(2*n)-4*n`
-/

namespace A310342.P16886233815783106835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311570 (2 * n) - (4 * n : ℤ)

end

end A310342.P16886233815783106835

namespace A310342

/-- `A311570(2*n)-4*n` -/
def P16886233815783106835.Spec : Prop :=
  ∀ n, P16886233815783106835.a n = A310342 n

end A310342

/-! ## A310342.P10954553256313937653

`A312475(2*n)-A237420(A312475(n))`
-/

namespace A310342.P10954553256313937653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 (2 * n) - A237420 (A312475 n).toNat

end

end A310342.P10954553256313937653

namespace A310342

/-- `A312475(2*n)-A237420(A312475(n))` -/
def P10954553256313937653.Spec : Prop :=
  ∀ n, P10954553256313937653.a n = A310342 n

end A310342

/-! ## A310342.P9598144467052266419

`A315327(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310342.P9598144467052266419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315327 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310342.P9598144467052266419

namespace A310342

/-- `A315327(2*n)+A008458(n+1)-(12*n+6)` -/
def P9598144467052266419.Spec : Prop :=
  ∀ n, P9598144467052266419.a n = A310342 n

end A310342

/-!
# A310344: Coordination sequence Gal.6.537.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310344, there is no canonical definition to state claims against.
-/

/-! ## A310344.P5413159300824924228

`A245343(A319552(n))`
-/

namespace A310344.P5413159300824924228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245343 (A319552 n).toNat

end

end A310344.P5413159300824924228

/-! ## A310344.P1055363304445846728

`A310341(n)+A103185(A061138(n))`
-/

namespace A310344.P1055363304445846728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310341 n + A103185 (A061138 n).toNat

end

end A310344.P1055363304445846728

/-! ## A310344.P15002247011083036247

`and(A217118(A332359(n+1)), A310345(n))`
-/

namespace A310344.P15002247011083036247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217118 (A332359 (n + 1)).toNat) (A310345 n)

end

end A310344.P15002247011083036247

/-! ## A310344.P7860712068177119799

`eq[A171900(A078649(n+1)), A336173(n)]`
-/

namespace A310344.P7860712068177119799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171900 (A078649 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310344.P7860712068177119799

/-!
# A310345: Coordination sequence Gal.6.536.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310345, there is no canonical definition to state claims against.
-/

/-! ## A310345.P9822096922253733329

`A315203(A120126(n))-A010673(n)`
-/

namespace A310345.P9822096922253733329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 (A120126 n).toNat - A010673 n

end

end A310345.P9822096922253733329

/-! ## A310345.P14229014283064565269

`A315203(n)-A010673(n²²)`
-/

namespace A310345.P14229014283064565269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 n - A010673 ((n ^ 2) ^ 2)

end

end A310345.P14229014283064565269

/-! ## A310345.P8172438221057442525

`record[A032602(n+1)-A005843(A032153(n))]`
-/

namespace A310345.P8172438221057442525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - A005843 (A032153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310345.P8172438221057442525

/-! ## A310345.P5785509386735915359

`eq[comp[2*n+3]^(n%2)^n, A321724(A001481(2*n+5))]`
-/

namespace A310345.P5785509386735915359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ (n % 2) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321724 (A001481 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A310345.P5785509386735915359

/-! ## A310345.P9395433150098685693

`A143432(A000244(n))+A045672(n)`
-/

namespace A310345.P9395433150098685693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143432 (A000244 n).toNat + A045672 n

end

end A310345.P9395433150098685693

/-!
# A310347: Coordination sequence Gal.6.528.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310347, there is no canonical definition to state claims against.
-/

/-! ## A310347.P4077444777810075427

`A276150(A165801(n+1))+A265227(2*n+1)`
-/

namespace A310347.P4077444777810075427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A165801 (n + 1)).toNat + A265227 (2 * n + 1)

end

end A310347.P4077444777810075427

/-! ## A310347.P7911612088995745988

`A342753(n²+7)+A007093(3*n+1)`
-/

namespace A310347.P7911612088995745988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (n ^ 2 + 7) + A007093 (3 * n + 1)

end

end A310347.P7911612088995745988

/-! ## A310347.P7993242236285046700

`A311816(n)+A227836(A227809(n))`
-/

namespace A310347.P7993242236285046700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A227836 (A227809 (n + 15)).toNat

end

end A310347.P7993242236285046700

/-! ## A310347.P12733668228454126949

`eq[A106340(A097609(n)), A257991(n+1)]`
-/

namespace A310347.P12733668228454126949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106340 (A097609 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310347.P12733668228454126949

/-! ## A310347.P9851339848105739396

`A014082(A026641(n))+A007093(3*n+1)`
-/

namespace A310347.P9851339848105739396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A026641 n).toNat + A007093 (3 * n + 1)

end

end A310347.P9851339848105739396

/-!
# A310348: Coordination sequence Gal.5.264.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310348, there is no canonical definition to state claims against.
-/

/-! ## A310348.P5060174151378278768

`or(A001221(A041111(n)), A311951(n))`
-/

namespace A310348.P5060174151378278768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A041111 n).toNat) (A311951 n)

end

end A310348.P5060174151378278768

/-! ## A310348.P16794841003389510458

`A311481(n)+A105700(A149267(n))`
-/

namespace A310348.P16794841003389510458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311481 n + A105700 (A149267 n).toNat

end

end A310348.P16794841003389510458

/-! ## A310348.P11842615996595130316

`A313041(n)+A244895(A058809(n))`
-/

namespace A310348.P11842615996595130316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313041 n + A244895 (A058809 n).toNat

end

end A310348.P11842615996595130316

/-! ## A310348.P670490134603429815

`A312909(n)+A189203(A279565(n))`
-/

namespace A310348.P670490134603429815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + A189203 (A279565 n).toNat

end

end A310348.P670490134603429815

/-! ## A310348.P10669950316023643678

`A298024(n)-A066829(A003319(n))`
-/

namespace A310348.P10669950316023643678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A066829 (A003319 n).toNat

end

end A310348.P10669950316023643678

/-!
# A310349: Coordination sequence Gal.5.254.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310349, the canonical program `A310349.P8859943485980405476` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310349 has offset 0).

The definition of A310349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310349.P8859943485980405476

`A298024(n)-A004526(A092092(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310349

/-- `A298024(n)-A004526(A092092(n+1))` -/
def P8859943485980405476.Spec : Prop :=
  ∀ n, P8859943485980405476.a n = A310349 n

theorem P8859943485980405476.correct : P8859943485980405476.Spec := by
  intro n
  simp only [A310349]

end A310349

/-! ## A310349.P11381856496249314278

`ceil(A310270(2*n)/2)`
-/

namespace A310349.P11381856496249314278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A310270 (2 * n) : ℚ) / 2⌉

end

end A310349.P11381856496249314278

namespace A310349

/-- `ceil(A310270(2*n)/2)` -/
def P11381856496249314278.Spec : Prop :=
  ∀ n, P11381856496249314278.a n = A310349 n

end A310349

/-! ## A310349.P187809066307536666

`A065033(A310270(2*n))`
-/

namespace A310349.P187809066307536666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A310270 (2 * n)).toNat

end

end A310349.P187809066307536666

namespace A310349

/-- `A065033(A310270(2*n))` -/
def P187809066307536666.Spec : Prop :=
  ∀ n, P187809066307536666.a n = A310349 n

end A310349

/-! ## A310349.P7359396589609594363

`A004526(A310270(2*n)+1)`
-/

namespace A310349.P7359396589609594363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310270 (2 * n) + 1).toNat

end

end A310349.P7359396589609594363

namespace A310349

/-- `A004526(A310270(2*n)+1)` -/
def P7359396589609594363.Spec : Prop :=
  ∀ n, P7359396589609594363.a n = A310349 n

end A310349

/-! ## A310349.P17319557518600861833

`A123108(A310270(2*n)+1)`
-/

namespace A310349.P17319557518600861833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A310270 (2 * n) + 1).toNat

end

end A310349.P17319557518600861833

namespace A310349

/-- `A123108(A310270(2*n)+1)` -/
def P17319557518600861833.Spec : Prop :=
  ∀ n, P17319557518600861833.a n = A310349 n

end A310349

/-!
# A310351: Coordination sequence Gal.6.361.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310351, there is no canonical definition to state claims against.
-/

/-! ## A310351.P127231501024595869

`A241605(A149140(n))+A008574(n)`
-/

namespace A310351.P127231501024595869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241605 (A149140 n).toNat + A008574 n

end

end A310351.P127231501024595869

/-! ## A310351.P10573797998493892675

`A045360(n+1)-A179763(A000670(n))`
-/

namespace A310351.P10573797998493892675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1) - A179763 (A000670 n).toNat

end

end A310351.P10573797998493892675

/-! ## A310351.P592170981397227848

`A045360(n+1)-A023532(A204440(n))`
-/

namespace A310351.P592170981397227848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1) - A023532 (A204440 n).toNat

end

end A310351.P592170981397227848

/-! ## A310351.P9741802091087049438

`A256798(A032559(n+1))-A108852(n)`
-/

namespace A310351.P9741802091087049438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256798 (A032559 (n + 1)).toNat - A108852 n

end

end A310351.P9741802091087049438

/-! ## A310351.P7091949912034884325

`A045360(n+1)-A023532(A317546(n+3))`
-/

namespace A310351.P7091949912034884325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1) - A023532 (A317546 (n + 3)).toNat

end

end A310351.P7091949912034884325

/-!
# A310352: Coordination sequence Gal.6.358.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310352, there is no canonical definition to state claims against.
-/

/-! ## A310352.P9628245260077213256

`A310358(n)-A220136(A293994(n))`
-/

namespace A310352.P9628245260077213256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310358 n - A220136 (A293994 n).toNat

end

end A310352.P9628245260077213256

/-!
# A310353: Coordination sequence Gal.6.359.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310353, there is no canonical definition to state claims against.
-/

/-! ## A310353.P8774131530901395526

`A130091(3*n+2)+A049347(A316980(n))`
-/

namespace A310353.P8774131530901395526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (3 * n + 2) + A049347 (A316980 n).toNat

end

end A310353.P8774131530901395526

/-! ## A310353.P15336629320053951995

`A337101(A000110(n))+A312944(n)`
-/

namespace A310353.P15336629320053951995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A000110 n).toNat + A312944 n

end

end A310353.P15336629320053951995

/-!
# A310354: Coordination sequence Gal.6.384.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310354, there is no canonical definition to state claims against.
-/

/-! ## A310354.P15775753903995134884

`A005811(A261061(n+1))+A004976(n)`
-/

namespace A310354.P15775753903995134884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A261061 (n + 1)).toNat + A004976 n

end

end A310354.P15775753903995134884

/-! ## A310354.P10639237837127769986

`A312963(n)+A144200(A353272(2*(n+1)))`
-/

namespace A310354.P10639237837127769986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + A144200 (A353272 (2 * (n + 1))).toNat

end

end A310354.P10639237837127769986

/-! ## A310354.P17179396040260390223

`A390393(A221178(A390395(A007617(2*n+1))))`
-/

namespace A310354.P17179396040260390223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390393 (A221178 (A390395 (A007617 (2 * n + 1)).toNat).toNat).toNat

end

end A310354.P17179396040260390223

/-! ## A310354.P6384730709744538904

`∑[A352903(A000607(3*n+4))]`
-/

namespace A310354.P6384730709744538904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352903 (A000607 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310354.P6384730709744538904

/-! ## A310354.P10587938827720681259

`A075326(n)+A003137(A017450(n))`
-/

namespace A310354.P10587938827720681259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n + A003137 (A017450 n).toNat

end

end A310354.P10587938827720681259

/-!
# A310355: Coordination sequence Gal.6.478.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310355, the canonical program `A310355.P6495167572357082007` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310355 has offset 0).

The definition of A310355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310355.P919474000028154975

`A314763(n)-A102283(n)`
-/

namespace A310355.P919474000028154975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314763 n - A102283 n

end

end A310355.P919474000028154975

namespace A310355

/-- `A314763(n)-A102283(n)` -/
def P919474000028154975.Spec : Prop :=
  ∀ n, P919474000028154975.a n = A310355 n

theorem P919474000028154975.correct : P919474000028154975.Spec := by
  intro n
  simp only [A310355, Nat.add_sub_cancel, A310355.P919474000028154975.a, A310355.P6495167572357082007.a, A008612, A008612.P16648533606768999186.a, A057979, A057979.P16537735927241777837.a, A102283, A102283.P18218274576938374007.a, A313416, A313416.P3381920737884461264.a, A314763, A314763.P16038055828271141937.a, A056594, A056594.P16236062631889685808.a, A298024, A298024.P3777845383164226265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310355

/-! ## A310355.P9926518120132555243

`A314763(n)+n-A064429(n)`
-/

namespace A310355.P9926518120132555243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314763 n + ((n : ℤ) - A064429 n)

end

end A310355.P9926518120132555243

namespace A310355

/-- `A314763(n)+n-A064429(n)` -/
def P9926518120132555243.Spec : Prop :=
  ∀ n, P9926518120132555243.a n = A310355 n

end A310355

/-! ## A310355.P6495167572357082007

`A313416(n)-A008612(A057979(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310355

/-- `A313416(n)-A008612(A057979(n))` -/
def P6495167572357082007.Spec : Prop :=
  ∀ n, P6495167572357082007.a n = A310355 n

theorem P6495167572357082007.correct : P6495167572357082007.Spec := by
  intro n
  simp only [A310355]

end A310355

/-!
# A310356: Coordination sequence Gal.5.143.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310356, there is no canonical definition to state claims against.
-/

/-! ## A310356.P269677901134133484

`A302534(2*(n+1))+A163805(A302513(n+1))`
-/

namespace A310356.P269677901134133484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302534 (2 * (n + 1)) + A163805 (A302513 (n + 1)).toNat

end

end A310356.P269677901134133484

/-! ## A310356.P1960215924878988588

`A313428(n)-A322437(A183926(n+1))-A014707(A265227(2*(n+1)))`
-/

namespace A310356.P1960215924878988588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A322437 (A183926 (n + 1)).toNat - A014707 (A265227 (2 * (n + 1))).toNat

end

end A310356.P1960215924878988588

/-!
# A310357: Coordination sequence Gal.5.205.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310357, there is no canonical definition to state claims against.
-/

/-! ## A310357.P17743896162389978084

`A311593(n)+A001222(A149440(n))`
-/

namespace A310357.P17743896162389978084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 n + A001222 (A149440 n).toNat

end

end A310357.P17743896162389978084

/-! ## A310357.P10228658275466584251

`A298024(n)+A014834(A000110(n))`
-/

namespace A310357.P10228658275466584251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A014834 (A000110 n).toNat

end

end A310357.P10228658275466584251

/-! ## A310357.P14298188265109221754

`A343632(A006128(n))+A312949(n)`
-/

namespace A310357.P14298188265109221754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (A006128 n).toNat + A312949 n

end

end A310357.P14298188265109221754

/-!
# A310358: Coordination sequence Gal.4.99.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310358, the canonical program `A310358.P14915247389207343671` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310358 has offset 0).

The definition of A310358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310358.P14915247389207343671

`A219529(n)-A006368(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310358

/-- `A219529(n)-A006368(A004396(n))` -/
def P14915247389207343671.Spec : Prop :=
  ∀ n, P14915247389207343671.a n = A310358 n

theorem P14915247389207343671.correct : P14915247389207343671.Spec := by
  intro n
  simp only [A310358]

end A310358

/-! ## A310358.P12568076842852490443

`A008576(2*n)-A006368(A004396(n))`
-/

namespace A310358.P12568076842852490443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A006368 (A004396 n).toNat

end

end A310358.P12568076842852490443

namespace A310358

/-- `A008576(2*n)-A006368(A004396(n))` -/
def P12568076842852490443.Spec : Prop :=
  ∀ n, P12568076842852490443.a n = A310358 n

end A310358

/-! ## A310358.P16268745669160408177

`A301688(n)+A314548(n)-A301686(n)`
-/

namespace A310358.P16268745669160408177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n + (A314548 n - A301686 n)

end

end A310358.P16268745669160408177

namespace A310358

/-- `A301688(n)+A314548(n)-A301686(n)` -/
def P16268745669160408177.Spec : Prop :=
  ∀ n, P16268745669160408177.a n = A310358 n

end A310358

/-! ## A310358.P11868875795488874899

`A004396(A022144(n))-A006368(A004396(n))`
-/

namespace A310358.P11868875795488874899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A022144 n).toNat - A006368 (A004396 n).toNat

end

end A310358.P11868875795488874899

namespace A310358

/-- `A004396(A022144(n))-A006368(A004396(n))` -/
def P11868875795488874899.Spec : Prop :=
  ∀ n, P11868875795488874899.a n = A310358 n

end A310358

/-! ## A310358.P9778732984499510886

`A004396(A008574(2*n))-A006368(A004396(n))`
-/

namespace A310358.P9778732984499510886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008574 (2 * n)).toNat - A006368 (A004396 n).toNat

end

end A310358.P9778732984499510886

namespace A310358

/-- `A004396(A008574(2*n))-A006368(A004396(n))` -/
def P9778732984499510886.Spec : Prop :=
  ∀ n, P9778732984499510886.a n = A310358 n

end A310358

/-!
# A310359: Coordination sequence Gal.6.469.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310359, there is no canonical definition to state claims against.
-/

/-! ## A310359.P8260998910556493587

`A187715(n+1)-A069010(∑[3^n]-1)`
-/

namespace A310359.P8260998910556493587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1) - A069010 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A310359.P8260998910556493587

/-! ## A310359.P16249454586078800321

`A314876(n)+A016340(A008458(n))`
-/

namespace A310359.P16249454586078800321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314876 n + A016340 (A008458 n).toNat

end

end A310359.P16249454586078800321

/-! ## A310359.P1091495676242631492

`A314877(n)+A016340(A008458(n))`
-/

namespace A310359.P1091495676242631492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314877 n + A016340 (A008458 n).toNat

end

end A310359.P1091495676242631492

/-! ## A310359.P10760528758622871939

`A047461(n+1)+A001222(A064914(n))`
-/

namespace A310359.P10760528758622871939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 1) + A001222 (A064914 n).toNat

end

end A310359.P10760528758622871939

/-! ## A310359.P5161670052607968690

`A079599(n)+A003991(A078213(n+1))`
-/

namespace A310359.P5161670052607968690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 n + A003991 (A078213 (n + 1)).toNat

end

end A310359.P5161670052607968690

/-!
# A310361: Coordination sequence Gal.5.265.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310361, there is no canonical definition to state claims against.
-/

/-! ## A310361.P3365555032959043500

`A311371(n)+A000038(A336303(n))`
-/

namespace A310361.P3365555032959043500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311371 n + A000038 (A336303 n).toNat

end

end A310361.P3365555032959043500

/-! ## A310361.P13795250600604220001

`xor(A242830(A024718(n)), A312544(n))`
-/

namespace A310361.P13795250600604220001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A242830 (A024718 n).toNat) (A312544 n)

end

end A310361.P13795250600604220001

/-! ## A310361.P7915021764674587688

`A311369(n)+A268865(A067205(n+1))`
-/

namespace A310361.P7915021764674587688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311369 n + A268865 (A067205 (n + 1)).toNat

end

end A310361.P7915021764674587688

/-! ## A310361.P15709819416418095524

`A324697(2*n+1)-A324672(A332836(n))`
-/

namespace A310361.P15709819416418095524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (2 * n + 1) - A324672 (A332836 n).toNat

end

end A310361.P15709819416418095524

/-! ## A310361.P3980719720468881988

`A298024(n)-A000086(A000204(2*n+3))`
-/

namespace A310361.P3980719720468881988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A000086 (A000204 (2 * n + 3)).toNat

end

end A310361.P3980719720468881988

/-!
# A310362: Coordination sequence Gal.6.563.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310362, there is no canonical definition to state claims against.
-/

/-! ## A310362.P15064715900081575722

`xor(A087624(A000110(n)), A298024(n))`
-/

namespace A310362.P15064715900081575722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087624 (A000110 n).toNat) (A298024 n)

end

end A310362.P15064715900081575722

/-! ## A310362.P11256425193600762435

`A098037(A056272(n))+A020679(n+1)`
-/

namespace A310362.P11256425193600762435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098037 (A056272 n).toNat + A020679 (n + 1)

end

end A310362.P11256425193600762435

/-! ## A310362.P13477398596884676745

`A352745(A102861(n+1))-A033719(n)`
-/

namespace A310362.P13477398596884676745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (A102861 (n + 1)).toNat - A033719 n

end

end A310362.P13477398596884676745

/-!
# A310363: Coordination sequence Gal.6.501.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310363, there is no canonical definition to state claims against.
-/

/-! ## A310363.P17624896962613502463

`A056911(2*(n+1))-A020639(A238711(n+2))`
-/

namespace A310363.P17624896962613502463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (2 * (n + 1)) - A020639 (A238711 (n + 2)).toNat

end

end A310363.P17624896962613502463

/-! ## A310363.P3689453494833148415

`xor(A138811(A130441(2*(n+1))), A312678(n))`
-/

namespace A310363.P3689453494833148415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A138811 (A130441 (2 * (n + 1))).toNat) (A312678 n)

end

end A310363.P3689453494833148415

/-! ## A310363.P161756713336054790

`xor(A138811(A130441(2*(n+1))), A312679(n))`
-/

namespace A310363.P161756713336054790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A138811 (A130441 (2 * (n + 1))).toNat) (A312679 n)

end

end A310363.P161756713336054790

/-! ## A310363.P13317167178713521365

`A337649(n+1)-A181875(A065003(2*n+5))`
-/

namespace A310363.P13317167178713521365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337649 (n + 1) - A181875 (A065003 (2 * n + 5)).toNat

end

end A310363.P13317167178713521365

/-!
# A310364: Coordination sequence Gal.6.508.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310364, there is no canonical definition to state claims against.
-/

/-! ## A310364.P1937143673251078337

`A029903(A029904(n))-A024361(n+1)`
-/

namespace A310364.P1937143673251078337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (A029904 n).toNat - A024361 (n + 1)

end

end A310364.P1937143673251078337

/-! ## A310364.P11257425817060727797

`xor(A353640(A094621(n)), A353685(2*n+1))`
-/

namespace A310364.P11257425817060727797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A353640 (A094621 n).toNat) (A353685 (2 * n + 1))

end

end A310364.P11257425817060727797

/-!
# A310365: Coordination sequence Gal.6.34.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310365, there is no canonical definition to state claims against.
-/

/-! ## A310365.P4539964912154913025

`A072510(3*(n+1))-A063826(A018046(n))`
-/

namespace A310365.P4539964912154913025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072510 (3 * (n + 1)) - A063826 (A018046 n).toNat

end

end A310365.P4539964912154913025

/-!
# A310366: Coordination sequence Gal.6.357.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310366, there is no canonical definition to state claims against.
-/

/-! ## A310366.P14194035933257341541

`A075326(n)-A033999(A056783(n+1))`
-/

namespace A310366.P14194035933257341541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n - A033999 (A056783 (n + 1)).toNat

end

end A310366.P14194035933257341541

/-! ## A310366.P2308949288302276804

`A075326(n)+A033999(A056783(n+1)+1)`
-/

namespace A310366.P2308949288302276804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n + A033999 (A056783 (n + 1) + 1).toNat

end

end A310366.P2308949288302276804

/-! ## A310366.P14241804896411531120

`A165471(A003094(n))+A075326(n)`
-/

namespace A310366.P14241804896411531120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A003094 n).toNat + A075326 n

end

end A310366.P14241804896411531120

/-! ## A310366.P12986952870774675903

`A330025(A044046(n))+A312948(n)`
-/

namespace A310366.P12986952870774675903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A044046 n).toNat + A312948 n

end

end A310366.P12986952870774675903

/-! ## A310366.P743816406072311168

`A310435(n)-A287556(A012262(n))`
-/

namespace A310366.P743816406072311168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310435 n - A287556 (A012262 n).toNat

end

end A310366.P743816406072311168

/-!
# A310367: Coordination sequence Gal.6.129.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310367, the canonical program `A310367.P12244695363259660047` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310367 has offset 0).

The definition of A310367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310367.P18252095089226231178

`2*A312891(n)-A008574(n)`
-/

namespace A310367.P18252095089226231178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312891 n - A008574 n

end

end A310367.P18252095089226231178

namespace A310367

/-- `2*A312891(n)-A008574(n)` -/
def P18252095089226231178.Spec : Prop :=
  ∀ n, P18252095089226231178.a n = A310367 n

end A310367

/-! ## A310367.P13251872066732995354

`2*A312891(n)-(eq[n, A022998(n)]+2*n+1)`
-/

namespace A310367.P13251872066732995354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312891 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1) : ℤ)

end

end A310367.P13251872066732995354

namespace A310367

/-- `2*A312891(n)-(eq[n, A022998(n)]+2*n+1)` -/
def P13251872066732995354.Spec : Prop :=
  ∀ n, P13251872066732995354.a n = A310367 n

end A310367

/-! ## A310367.P4885887244386361033

`A004275(A312891(n)-A004273(n))`
-/

namespace A310367.P4885887244386361033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312891 n - A004273 n).toNat

end

end A310367.P4885887244386361033

namespace A310367

/-- `A004275(A312891(n)-A004273(n))` -/
def P4885887244386361033.Spec : Prop :=
  ∀ n, P4885887244386361033.a n = A310367 n

end A310367

/-! ## A310367.P9830221084845136880

`A004273(A312891(n)-n)-A004273(n)`
-/

namespace A310367.P9830221084845136880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312891 n - (n : ℤ)).toNat - A004273 n

end

end A310367.P9830221084845136880

namespace A310367

/-- `A004273(A312891(n)-n)-A004273(n)` -/
def P9830221084845136880.Spec : Prop :=
  ∀ n, P9830221084845136880.a n = A310367 n

end A310367

/-! ## A310367.P16986028828800250996

`A008574(n)+A005843(A312891(n)-A008574(n))`
-/

namespace A310367.P16986028828800250996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312891 n - A008574 n).toNat

end

end A310367.P16986028828800250996

namespace A310367

/-- `A008574(n)+A005843(A312891(n)-A008574(n))` -/
def P16986028828800250996.Spec : Prop :=
  ∀ n, P16986028828800250996.a n = A310367 n

end A310367

/-! ## A310367.P133807915383101194

`A005843(A312891(n))-A008574(n)`
-/

namespace A310367.P133807915383101194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312891 n).toNat - A008574 n

end

end A310367.P133807915383101194

namespace A310367

/-- `A005843(A312891(n))-A008574(n)` -/
def P133807915383101194.Spec : Prop :=
  ∀ n, P133807915383101194.a n = A310367 n

end A310367

/-! ## A310367.P16231307075643607454

`A004275(A312891(n))-A004275(2*n)`
-/

namespace A310367.P16231307075643607454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312891 n).toNat - A004275 (2 * n)

end

end A310367.P16231307075643607454

namespace A310367

/-- `A004275(A312891(n))-A004275(2*n)` -/
def P16231307075643607454.Spec : Prop :=
  ∀ n, P16231307075643607454.a n = A310367 n

end A310367

/-! ## A310367.P9240850830383804639

`A005843(A312891(n))+n-A008706(n)`
-/

namespace A310367.P9240850830383804639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312891 n).toNat + ((n : ℤ) - A008706 n)

end

end A310367.P9240850830383804639

namespace A310367

/-- `A005843(A312891(n))+n-A008706(n)` -/
def P9240850830383804639.Spec : Prop :=
  ∀ n, P9240850830383804639.a n = A310367 n

end A310367

/-! ## A310367.P17914496088053049231

`2*A310396(n)-A310420(n)`
-/

namespace A310367.P17914496088053049231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310396 n - A310420 n

end

end A310367.P17914496088053049231

namespace A310367

/-- `2*A310396(n)-A310420(n)` -/
def P17914496088053049231.Spec : Prop :=
  ∀ n, P17914496088053049231.a n = A310367 n

end A310367

/-! ## A310367.P12244695363259660047

`A014963(A001316(n))*A004525(A312927(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A310367

/-- `A014963(A001316(n))*A004525(A312927(n))` -/
def P12244695363259660047.Spec : Prop :=
  ∀ n, P12244695363259660047.a n = A310367 n

theorem P12244695363259660047.correct : P12244695363259660047.Spec := by
  intro n
  simp only [A310367]

end A310367

/-! ## A310367.P14473715756957912167

`A020639(A008458(n))*A004525(A313024(n))`
-/

namespace A310367.P14473715756957912167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A004525 (A313024 n).toNat

end

end A310367.P14473715756957912167

namespace A310367

/-- `A020639(A008458(n))*A004525(A313024(n))` -/
def P14473715756957912167.Spec : Prop :=
  ∀ n, P14473715756957912167.a n = A310367 n

end A310367

/-! ## A310367.P1274696528511745214

`A001221(A001749(n+1))*A004525(A313024(n))`
-/

namespace A310367.P1274696528511745214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001749 (n + 1)).toNat * A004525 (A313024 n).toNat

end

end A310367.P1274696528511745214

namespace A310367

/-- `A001221(A001749(n+1))*A004525(A313024(n))` -/
def P1274696528511745214.Spec : Prop :=
  ∀ n, P1274696528511745214.a n = A310367 n

end A310367

/-! ## A310367.P12270403328760354510

`A000005(A008578(n+1))*A004525(A312927(n))`
-/

namespace A310367.P12270403328760354510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A004525 (A312927 n).toNat

end

end A310367.P12270403328760354510

namespace A310367

/-- `A000005(A008578(n+1))*A004525(A312927(n))` -/
def P12270403328760354510.Spec : Prop :=
  ∀ n, P12270403328760354510.a n = A310367 n

end A310367

/-! ## A310367.P15464829232038928228

`abs(A008592(n)-A315345(n))`
-/

namespace A310367.P15464829232038928228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315345 n|

end

end A310367.P15464829232038928228

namespace A310367

/-- `abs(A008592(n)-A315345(n))` -/
def P15464829232038928228.Spec : Prop :=
  ∀ n, P15464829232038928228.a n = A310367 n

end A310367

/-! ## A310367.P5059025642730913936

`2*A008706(n)-A315345(n)`
-/

namespace A310367.P5059025642730913936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315345 n

end

end A310367.P5059025642730913936

namespace A310367

/-- `2*A008706(n)-A315345(n)` -/
def P5059025642730913936.Spec : Prop :=
  ∀ n, P5059025642730913936.a n = A310367 n

end A310367

/-! ## A310367.P12397846229154648944

`xor(1, A017281(n)-A315345(n))`
-/

namespace A310367.P12397846229154648944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315345 n)

end

end A310367.P12397846229154648944

namespace A310367

/-- `xor(1, A017281(n)-A315345(n))` -/
def P12397846229154648944.Spec : Prop :=
  ∀ n, P12397846229154648944.a n = A310367 n

end A310367

/-! ## A310367.P15112267057525198344

`A004442(A017281(n)-A315345(n))`
-/

namespace A310367.P15112267057525198344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315345 n).toNat

end

end A310367.P15112267057525198344

namespace A310367

/-- `A004442(A017281(n)-A315345(n))` -/
def P15112267057525198344.Spec : Prop :=
  ∀ n, P15112267057525198344.a n = A310367 n

end A310367

/-! ## A310367.P2890107718057378645

`A008458(n)+A008574(n)-A315345(n)`
-/

namespace A310367.P2890107718057378645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315345 n)

end

end A310367.P2890107718057378645

namespace A310367

/-- `A008458(n)+A008574(n)-A315345(n)` -/
def P2890107718057378645.Spec : Prop :=
  ∀ n, P2890107718057378645.a n = A310367 n

end A310367

/-!
# A310368: Coordination sequence Gal.6.230.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310368, the canonical program `A310368.P16178457141432640460` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310368 has offset 0).

The definition of A310368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310368.P16178457141432640460

`2*A312892(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310368

/-- `2*A312892(n)-A008574(n)` -/
def P16178457141432640460.Spec : Prop :=
  ∀ n, P16178457141432640460.a n = A310368 n

theorem P16178457141432640460.correct : P16178457141432640460.Spec := by
  intro n
  simp only [A310368]

end A310368

/-! ## A310368.P12512607517795814994

`A004275(A312892(n)-A004273(n))`
-/

namespace A310368.P12512607517795814994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312892 n - A004273 n).toNat

end

end A310368.P12512607517795814994

namespace A310368

/-- `A004275(A312892(n)-A004273(n))` -/
def P12512607517795814994.Spec : Prop :=
  ∀ n, P12512607517795814994.a n = A310368 n

end A310368

/-! ## A310368.P4360520329272834193

`A008458(n)-2*A004396(A151988(n))`
-/

namespace A310368.P4360520329272834193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004396 (A151988 n).toNat

end

end A310368.P4360520329272834193

namespace A310368

/-- `A008458(n)-2*A004396(A151988(n))` -/
def P4360520329272834193.Spec : Prop :=
  ∀ n, P4360520329272834193.a n = A310368 n

end A310368

/-! ## A310368.P1353610268197982993

`A330025(n-A330025(n))+A312903(n)`
-/

namespace A310368.P1353610268197982993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A312903 n

end

end A310368.P1353610268197982993

namespace A310368

/-- `A330025(n-A330025(n))+A312903(n)` -/
def P1353610268197982993.Spec : Prop :=
  ∀ n, P1353610268197982993.a n = A310368 n

end A310368

/-! ## A310368.P9817583201184664433

`A004273(A312892(n)-n)-A004273(n)`
-/

namespace A310368.P9817583201184664433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312892 n - (n : ℤ)).toNat - A004273 n

end

end A310368.P9817583201184664433

namespace A310368

/-- `A004273(A312892(n)-n)-A004273(n)` -/
def P9817583201184664433.Spec : Prop :=
  ∀ n, P9817583201184664433.a n = A310368 n

end A310368

/-! ## A310368.P7810790532847029481

`A008574(n)+A005843(A312892(n)-A008574(n))`
-/

namespace A310368.P7810790532847029481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312892 n - A008574 n).toNat

end

end A310368.P7810790532847029481

namespace A310368

/-- `A008574(n)+A005843(A312892(n)-A008574(n))` -/
def P7810790532847029481.Spec : Prop :=
  ∀ n, P7810790532847029481.a n = A310368 n

end A310368

/-! ## A310368.P16766612976040280785

`A005843(A312892(n))-A008574(n)`
-/

namespace A310368.P16766612976040280785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312892 n).toNat - A008574 n

end

end A310368.P16766612976040280785

namespace A310368

/-- `A005843(A312892(n))-A008574(n)` -/
def P16766612976040280785.Spec : Prop :=
  ∀ n, P16766612976040280785.a n = A310368 n

end A310368

/-! ## A310368.P8105330031590846174

`A004275(A312892(n))-A004275(2*n)`
-/

namespace A310368.P8105330031590846174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312892 n).toNat - A004275 (2 * n)

end

end A310368.P8105330031590846174

namespace A310368

/-- `A004275(A312892(n))-A004275(2*n)` -/
def P8105330031590846174.Spec : Prop :=
  ∀ n, P8105330031590846174.a n = A310368 n

end A310368

/-! ## A310368.P6009498968952678140

`A005843(A312892(n))+n-A008706(n)`
-/

namespace A310368.P6009498968952678140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312892 n).toNat + ((n : ℤ) - A008706 n)

end

end A310368.P6009498968952678140

namespace A310368

/-- `A005843(A312892(n))+n-A008706(n)` -/
def P6009498968952678140.Spec : Prop :=
  ∀ n, P6009498968952678140.a n = A310368 n

end A310368

/-! ## A310368.P2806363221429901766

`2*A314111(n)-A008458(n)`
-/

namespace A310368.P2806363221429901766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314111 n - A008458 n

end

end A310368.P2806363221429901766

namespace A310368

/-- `2*A314111(n)-A008458(n)` -/
def P2806363221429901766.Spec : Prop :=
  ∀ n, P2806363221429901766.a n = A310368 n

end A310368

/-! ## A310368.P4587758841195750022

`A008458(n)-A005843(A008458(n)-A314111(n))`
-/

namespace A310368.P4587758841195750022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314111 n).toNat

end

end A310368.P4587758841195750022

namespace A310368

/-- `A008458(n)-A005843(A008458(n)-A314111(n))` -/
def P4587758841195750022.Spec : Prop :=
  ∀ n, P4587758841195750022.a n = A310368 n

end A310368

/-! ## A310368.P14622202369321009596

`A004275(A004525(A313476(n)+2))`
-/

namespace A310368.P14622202369321009596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004525 (A313476 n + 2).toNat).toNat

end

end A310368.P14622202369321009596

namespace A310368

/-- `A004275(A004525(A313476(n)+2))` -/
def P14622202369321009596.Spec : Prop :=
  ∀ n, P14622202369321009596.a n = A310368 n

end A310368

/-! ## A310368.P17402262519444271983

`abs(A008592(n)-A315344(n))`
-/

namespace A310368.P17402262519444271983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315344 n|

end

end A310368.P17402262519444271983

namespace A310368

/-- `abs(A008592(n)-A315344(n))` -/
def P17402262519444271983.Spec : Prop :=
  ∀ n, P17402262519444271983.a n = A310368 n

end A310368

/-! ## A310368.P6175516370276135525

`2*A008706(n)-A315344(n)`
-/

namespace A310368.P6175516370276135525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315344 n

end

end A310368.P6175516370276135525

namespace A310368

/-- `2*A008706(n)-A315344(n)` -/
def P6175516370276135525.Spec : Prop :=
  ∀ n, P6175516370276135525.a n = A310368 n

end A310368

/-! ## A310368.P14950265742325017933

`A008458(n)+A008574(n)-A315344(n)`
-/

namespace A310368.P14950265742325017933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315344 n)

end

end A310368.P14950265742325017933

namespace A310368

/-- `A008458(n)+A008574(n)-A315344(n)` -/
def P14950265742325017933.Spec : Prop :=
  ∀ n, P14950265742325017933.a n = A310368 n

end A310368

/-! ## A310368.P9994163583458955596

`A315344(n)-A005843(A315344(n)-A008706(n))`
-/

namespace A310368.P9994163583458955596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315344 n - A005843 (A315344 n - A008706 n).toNat

end

end A310368.P9994163583458955596

namespace A310368

/-- `A315344(n)-A005843(A315344(n)-A008706(n))` -/
def P9994163583458955596.Spec : Prop :=
  ∀ n, P9994163583458955596.a n = A310368 n

end A310368

/-! ## A310368.P718079957768498785

`A005843(A008706(n))-A315344(n)`
-/

namespace A310368.P718079957768498785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315344 n

end

end A310368.P718079957768498785

namespace A310368

/-- `A005843(A008706(n))-A315344(n)` -/
def P718079957768498785.Spec : Prop :=
  ∀ n, P718079957768498785.a n = A310368 n

end A310368

/-! ## A310368.P4670034252832118556

`A005843(A314111(n))-A008458(n)`
-/

namespace A310368.P4670034252832118556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314111 n).toNat - A008458 n

end

end A310368.P4670034252832118556

namespace A310368

/-- `A005843(A314111(n))-A008458(n)` -/
def P4670034252832118556.Spec : Prop :=
  ∀ n, P4670034252832118556.a n = A310368 n

end A310368

/-!
# A310369: Coordination sequence Gal.5.64.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310369, the canonical program `A310369.P267865594556305958` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310369 has offset 0).

The definition of A310369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310369.P267865594556305958

`2*A312893(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310369

/-- `2*A312893(n)-A008574(n)` -/
def P267865594556305958.Spec : Prop :=
  ∀ n, P267865594556305958.a n = A310369 n

theorem P267865594556305958.correct : P267865594556305958.Spec := by
  intro n
  simp only [A310369]

end A310369

/-! ## A310369.P16643451122667367374

`A103517(A312893(n)-(2*n+1))`
-/

namespace A310369.P16643451122667367374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A312893 n - (2 * n + 1 : ℤ)).toNat

end

end A310369.P16643451122667367374

namespace A310369

/-- `A103517(A312893(n)-(2*n+1))` -/
def P16643451122667367374.Spec : Prop :=
  ∀ n, P16643451122667367374.a n = A310369 n

end A310369

/-! ## A310369.P17149882225000374579

`A004275(A312893(n)-A004273(n))`
-/

namespace A310369.P17149882225000374579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312893 n - A004273 n).toNat

end

end A310369.P17149882225000374579

namespace A310369

/-- `A004275(A312893(n)-A004273(n))` -/
def P17149882225000374579.Spec : Prop :=
  ∀ n, P17149882225000374579.a n = A310369 n

end A310369

/-! ## A310369.P12402142397428853514

`A314021(n)-A004396(A004396(n))`
-/

namespace A310369.P12402142397428853514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314021 n - A004396 (A004396 n).toNat

end

end A310369.P12402142397428853514

namespace A310369

/-- `A314021(n)-A004396(A004396(n))` -/
def P12402142397428853514.Spec : Prop :=
  ∀ n, P12402142397428853514.a n = A310369 n

end A310369

/-! ## A310369.P11767070277707439539

`A312893(n)+A004396(n-A004396(n))`
-/

namespace A310369.P11767070277707439539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A310369.P11767070277707439539

namespace A310369

/-- `A312893(n)+A004396(n-A004396(n))` -/
def P11767070277707439539.Spec : Prop :=
  ∀ n, P11767070277707439539.a n = A310369 n

end A310369

/-! ## A310369.P13717800429722931866

`A004273(A312893(n)-n)-A004273(n)`
-/

namespace A310369.P13717800429722931866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312893 n - (n : ℤ)).toNat - A004273 n

end

end A310369.P13717800429722931866

namespace A310369

/-- `A004273(A312893(n)-n)-A004273(n)` -/
def P13717800429722931866.Spec : Prop :=
  ∀ n, P13717800429722931866.a n = A310369 n

end A310369

/-! ## A310369.P1522408937288884060

`A020639(A008574(n))*A004396(A298786(n))`
-/

namespace A310369.P1522408937288884060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A004396 (A298786 n).toNat

end

end A310369.P1522408937288884060

namespace A310369

/-- `A020639(A008574(n))*A004396(A298786(n))` -/
def P1522408937288884060.Spec : Prop :=
  ∀ n, P1522408937288884060.a n = A310369 n

end A310369

/-! ## A310369.P15319053535667273863

`A315696(n)-(A004396(n)+A004396(A004396(n)))`
-/

namespace A310369.P15319053535667273863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 n - (A004396 n + A004396 (A004396 n).toNat)

end

end A310369.P15319053535667273863

namespace A310369

/-- `A315696(n)-(A004396(n)+A004396(A004396(n)))` -/
def P15319053535667273863.Spec : Prop :=
  ∀ n, P15319053535667273863.a n = A310369 n

end A310369

/-! ## A310369.P3935772474606397248

`A004275(A312893(n))-A004275(2*n)`
-/

namespace A310369.P3935772474606397248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312893 n).toNat - A004275 (2 * n)

end

end A310369.P3935772474606397248

namespace A310369

/-- `A004275(A312893(n))-A004275(2*n)` -/
def P3935772474606397248.Spec : Prop :=
  ∀ n, P3935772474606397248.a n = A310369 n

end A310369

/-! ## A310369.P3686757548996196829

`2*A314088(n)-A315727(n)`
-/

namespace A310369.P3686757548996196829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314088 n - A315727 n

end

end A310369.P3686757548996196829

namespace A310369

/-- `2*A314088(n)-A315727(n)` -/
def P3686757548996196829.Spec : Prop :=
  ∀ n, P3686757548996196829.a n = A310369 n

end A310369

/-! ## A310369.P18182253808972056635

`A315646(n)-2*A004396(A004396(n))`
-/

namespace A310369.P18182253808972056635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 n - 2 * A004396 (A004396 n).toNat

end

end A310369.P18182253808972056635

namespace A310369

/-- `A315646(n)-2*A004396(A004396(n))` -/
def P18182253808972056635.Spec : Prop :=
  ∀ n, P18182253808972056635.a n = A310369 n

theorem P18182253808972056635.correct : P18182253808972056635.Spec := by
  intro n
  simp only [A310369, Nat.add_sub_cancel, A310369.P18182253808972056635.a, A310369.P267865594556305958.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A312893, A312893.P922128372979076951.a, A315646, A315646.P17156318483534215033.a, A298786, A298786.P14431482331037710348.a, A313538, A313538.P13622609119361302116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310369

/-! ## A310369.P12632357953092547840

`A314205(n)-A004396(2*A004396(n))`
-/

namespace A310369.P12632357953092547840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314205 n - A004396 (2 * A004396 n).toNat

end

end A310369.P12632357953092547840

namespace A310369

/-- `A314205(n)-A004396(2*A004396(n))` -/
def P12632357953092547840.Spec : Prop :=
  ∀ n, P12632357953092547840.a n = A310369 n

end A310369

/-! ## A310369.P9835300992951108197

`abs(A008592(n)-A315343(n))`
-/

namespace A310369.P9835300992951108197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315343 n|

end

end A310369.P9835300992951108197

namespace A310369

/-- `abs(A008592(n)-A315343(n))` -/
def P9835300992951108197.Spec : Prop :=
  ∀ n, P9835300992951108197.a n = A310369 n

end A310369

/-! ## A310369.P9033038379875920197

`A008458(n)+A008574(n)-A315343(n)`
-/

namespace A310369.P9033038379875920197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315343 n)

end

end A310369.P9033038379875920197

namespace A310369

/-- `A008458(n)+A008574(n)-A315343(n)` -/
def P9033038379875920197.Spec : Prop :=
  ∀ n, P9033038379875920197.a n = A310369 n

end A310369

/-! ## A310369.P7590211389063758732

`A315757(n)-2*A004396(n)`
-/

namespace A310369.P7590211389063758732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - 2 * A004396 n

end

end A310369.P7590211389063758732

namespace A310369

/-- `A315757(n)-2*A004396(n)` -/
def P7590211389063758732.Spec : Prop :=
  ∀ n, P7590211389063758732.a n = A310369 n

end A310369

/-! ## A310369.P1296965563614307006

`A315757(n)-A005843(A004396(n))`
-/

namespace A310369.P1296965563614307006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - A005843 (A004396 n).toNat

end

end A310369.P1296965563614307006

namespace A310369

/-- `A315757(n)-A005843(A004396(n))` -/
def P1296965563614307006.Spec : Prop :=
  ∀ n, P1296965563614307006.a n = A310369 n

end A310369

/-! ## A310369.P6574594247179698508

`A004396(2*n)+A004396(A313683(n))`
-/

namespace A310369.P6574594247179698508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A313683 n).toNat

end

end A310369.P6574594247179698508

namespace A310369

/-- `A004396(2*n)+A004396(A313683(n))` -/
def P6574594247179698508.Spec : Prop :=
  ∀ n, P6574594247179698508.a n = A310369 n

end A310369

/-! ## A310369.P9708149248432978757

`A004396(A301298(2*n))-A004396(A042965(2*n+1))`
-/

namespace A310369.P9708149248432978757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301298 (2 * n)).toNat - A004396 (A042965 (2 * n + 1)).toNat

end

end A310369.P9708149248432978757

namespace A310369

/-- `A004396(A301298(2*n))-A004396(A042965(2*n+1))` -/
def P9708149248432978757.Spec : Prop :=
  ∀ n, P9708149248432978757.a n = A310369 n

end A310369

/-! ## A310369.P11185932392310437616

`A004275(A004523(A297465(n)))`
-/

namespace A310369.P11185932392310437616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004523 (A297465 n).toNat).toNat

end

end A310369.P11185932392310437616

namespace A310369

/-- `A004275(A004523(A297465(n)))` -/
def P11185932392310437616.Spec : Prop :=
  ∀ n, P11185932392310437616.a n = A310369 n

end A310369

/-!
# A310370: Coordination sequence Gal.5.109.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310370, the canonical program `A310370.P11121117059766069442` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310370 has offset 0).

The definition of A310370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310370.P11121117059766069442

`2*A312894(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310370

/-- `2*A312894(n)-A008574(n)` -/
def P11121117059766069442.Spec : Prop :=
  ∀ n, P11121117059766069442.a n = A310370 n

theorem P11121117059766069442.correct : P11121117059766069442.Spec := by
  intro n
  simp only [A310370]

end A310370

/-! ## A310370.P1207577143735160895

`A004275(A312894(n)-A004273(n))`
-/

namespace A310370.P1207577143735160895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312894 n - A004273 n).toNat

end

end A310370.P1207577143735160895

namespace A310370

/-- `A004275(A312894(n)-A004273(n))` -/
def P1207577143735160895.Spec : Prop :=
  ∀ n, P1207577143735160895.a n = A310370 n

end A310370

/-! ## A310370.P5244406322611869229

`A312894(n)+A004525(n-A004525(n))`
-/

namespace A310370.P5244406322611869229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312894 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A310370.P5244406322611869229

namespace A310370

/-- `A312894(n)+A004525(n-A004525(n))` -/
def P5244406322611869229.Spec : Prop :=
  ∀ n, P5244406322611869229.a n = A310370 n

end A310370

/-! ## A310370.P2081530254311665556

`A312943(n)+A046978(n-A046978(n))`
-/

namespace A310370.P2081530254311665556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A310370.P2081530254311665556

namespace A310370

/-- `A312943(n)+A046978(n-A046978(n))` -/
def P2081530254311665556.Spec : Prop :=
  ∀ n, P2081530254311665556.a n = A310370 n

end A310370

/-! ## A310370.P15578611264757809110

`A004273(A312894(n)-n)-A004273(n)`
-/

namespace A310370.P15578611264757809110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312894 n - (n : ℤ)).toNat - A004273 n

end

end A310370.P15578611264757809110

namespace A310370

/-- `A004273(A312894(n)-n)-A004273(n)` -/
def P15578611264757809110.Spec : Prop :=
  ∀ n, P15578611264757809110.a n = A310370 n

end A310370

/-! ## A310370.P15521839709705106549

`A004525(A004525(n))+A310397(n)-A004525(n)`
-/

namespace A310370.P15521839709705106549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A310397 n - A004525 n)

end

end A310370.P15521839709705106549

namespace A310370

/-- `A004525(A004525(n))+A310397(n)-A004525(n)` -/
def P15521839709705106549.Spec : Prop :=
  ∀ n, P15521839709705106549.a n = A310370 n

end A310370

/-! ## A310370.P4142590492655382283

`A314026(n)-A004525(n)`
-/

namespace A310370.P4142590492655382283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - A004525 n

end

end A310370.P4142590492655382283

namespace A310370

/-- `A314026(n)-A004525(n)` -/
def P4142590492655382283.Spec : Prop :=
  ∀ n, P4142590492655382283.a n = A310370 n

end A310370

/-! ## A310370.P17852924630803290325

`A314026(n)-Δ[A054925(n)]`
-/

namespace A310370.P17852924630803290325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - (f1 (n + 1) - f1 n)

end

end A310370.P17852924630803290325

namespace A310370

/-- `A314026(n)-Δ[A054925(n)]` -/
def P17852924630803290325.Spec : Prop :=
  ∀ n, P17852924630803290325.a n = A310370 n

end A310370

/-! ## A310370.P6810779365085842737

`A004275(A312894(n))-A004275(2*n)`
-/

namespace A310370.P6810779365085842737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312894 n).toNat - A004275 (2 * n)

end

end A310370.P6810779365085842737

namespace A310370

/-- `A004275(A312894(n))-A004275(2*n)` -/
def P6810779365085842737.Spec : Prop :=
  ∀ n, P6810779365085842737.a n = A310370 n

end A310370

/-! ## A310370.P11839738443164491212

`2*A314112(n)-A008458(n)`
-/

namespace A310370.P11839738443164491212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314112 n - A008458 n

end

end A310370.P11839738443164491212

namespace A310370

/-- `2*A314112(n)-A008458(n)` -/
def P11839738443164491212.Spec : Prop :=
  ∀ n, P11839738443164491212.a n = A310370 n

end A310370

/-! ## A310370.P11717543013299789498

`A314112(n)-A004525(A004525(n)+n)`
-/

namespace A310370.P11717543013299789498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314112 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A310370.P11717543013299789498

namespace A310370

/-- `A314112(n)-A004525(A004525(n)+n)` -/
def P11717543013299789498.Spec : Prop :=
  ∀ n, P11717543013299789498.a n = A310370 n

end A310370

/-! ## A310370.P15920983543432402149

`abs(A008592(n)-A315342(n))`
-/

namespace A310370.P15920983543432402149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315342 n|

end

end A310370.P15920983543432402149

namespace A310370

/-- `abs(A008592(n)-A315342(n))` -/
def P15920983543432402149.Spec : Prop :=
  ∀ n, P15920983543432402149.a n = A310370 n

end A310370

/-! ## A310370.P14546314623625996222

`A008458(n)+A008574(n)-A315342(n)`
-/

namespace A310370.P14546314623625996222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315342 n)

end

end A310370.P14546314623625996222

namespace A310370

/-- `A008458(n)+A008574(n)-A315342(n)` -/
def P14546314623625996222.Spec : Prop :=
  ∀ n, P14546314623625996222.a n = A310370 n

end A310370

/-! ## A310370.P4214452760158777882

`A315651(n)-2*A004525(n)`
-/

namespace A310370.P4214452760158777882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315651 n - 2 * A004525 n

end

end A310370.P4214452760158777882

namespace A310370

/-- `A315651(n)-2*A004525(n)` -/
def P4214452760158777882.Spec : Prop :=
  ∀ n, P4214452760158777882.a n = A310370 n

end A310370

/-! ## A310370.P2816049309731833770

`A312506(2*n)-A201629(A312506(n))`
-/

namespace A310370.P2816049309731833770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 (2 * n) - A201629 (A312506 n).toNat

end

end A310370.P2816049309731833770

namespace A310370

/-- `A312506(2*n)-A201629(A312506(n))` -/
def P2816049309731833770.Spec : Prop :=
  ∀ n, P2816049309731833770.a n = A310370 n

end A310370

/-! ## A310370.P14804155212937676877

`A008706(A311625(2*n))-A311625(A311625(2*n))`
-/

namespace A310370.P14804155212937676877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A311625 (2 * n)).toNat - A311625 (A311625 (2 * n)).toNat

end

end A310370.P14804155212937676877

namespace A310370

/-- `A008706(A311625(2*n))-A311625(A311625(2*n))` -/
def P14804155212937676877.Spec : Prop :=
  ∀ n, P14804155212937676877.a n = A310370 n

end A310370

/-!
# A310371: Coordination sequence Gal.6.258.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310371, the canonical program `A310371.P8576713789504372691` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310371 has offset 0).

The definition of A310371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310371.P18115072875778454898

`2*A314117(n)-A008458(n)`
-/

namespace A310371.P18115072875778454898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314117 n - A008458 n

end

end A310371.P18115072875778454898

namespace A310371

/-- `2*A314117(n)-A008458(n)` -/
def P18115072875778454898.Spec : Prop :=
  ∀ n, P18115072875778454898.a n = A310371 n

end A310371

/-! ## A310371.P8576713789504372691

`2*A314117(n)-A008486(2*n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310371

/-- `2*A314117(n)-A008486(2*n)` -/
def P8576713789504372691.Spec : Prop :=
  ∀ n, P8576713789504372691.a n = A310371 n

theorem P8576713789504372691.correct : P8576713789504372691.Spec := by
  intro n
  simp only [A310371]

end A310371

/-! ## A310371.P7679993785175625869

`A103517(A314117(n)-A016777(n))`
-/

namespace A310371.P7679993785175625869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314117 n - A016777 n).toNat

end

end A310371.P7679993785175625869

namespace A310371

/-- `A103517(A314117(n)-A016777(n))` -/
def P7679993785175625869.Spec : Prop :=
  ∀ n, P7679993785175625869.a n = A310371 n

end A310371

/-! ## A310371.P17889805979093401246

`A008458(n)-A005843(A008458(n)-A314117(n))`
-/

namespace A310371.P17889805979093401246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314117 n).toNat

end

end A310371.P17889805979093401246

namespace A310371

/-- `A008458(n)-A005843(A008458(n)-A314117(n))` -/
def P17889805979093401246.Spec : Prop :=
  ∀ n, P17889805979093401246.a n = A310371 n

end A310371

/-! ## A310371.P2780025929426021734

`abs(A008592(n)-A315340(n))`
-/

namespace A310371.P2780025929426021734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315340 n|

end

end A310371.P2780025929426021734

namespace A310371

/-- `abs(A008592(n)-A315340(n))` -/
def P2780025929426021734.Spec : Prop :=
  ∀ n, P2780025929426021734.a n = A310371 n

end A310371

/-! ## A310371.P13085700272317879476

`2*A008706(n)-A315340(n)`
-/

namespace A310371.P13085700272317879476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315340 n

end

end A310371.P13085700272317879476

namespace A310371

/-- `2*A008706(n)-A315340(n)` -/
def P13085700272317879476.Spec : Prop :=
  ∀ n, P13085700272317879476.a n = A310371 n

end A310371

/-! ## A310371.P17070202010799696180

`xor(1, A017281(n)-A315340(n))`
-/

namespace A310371.P17070202010799696180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315340 n)

end

end A310371.P17070202010799696180

namespace A310371

/-- `xor(1, A017281(n)-A315340(n))` -/
def P17070202010799696180.Spec : Prop :=
  ∀ n, P17070202010799696180.a n = A310371 n

end A310371

/-! ## A310371.P16875981014296246787

`A008458(n)+A008574(n)-A315340(n)`
-/

namespace A310371.P16875981014296246787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315340 n)

end

end A310371.P16875981014296246787

namespace A310371

/-- `A008458(n)+A008574(n)-A315340(n)` -/
def P16875981014296246787.Spec : Prop :=
  ∀ n, P16875981014296246787.a n = A310371 n

end A310371

/-! ## A310371.P10396971497181961472

`A315340(n)-A005843(A315340(n)-A008706(n))`
-/

namespace A310371.P10396971497181961472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 n - A005843 (A315340 n - A008706 n).toNat

end

end A310371.P10396971497181961472

namespace A310371

/-- `A315340(n)-A005843(A315340(n)-A008706(n))` -/
def P10396971497181961472.Spec : Prop :=
  ∀ n, P10396971497181961472.a n = A310371 n

end A310371

/-! ## A310371.P3535650141865799034

`A004442(A017281(n)-A315340(n))`
-/

namespace A310371.P3535650141865799034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315340 n).toNat

end

end A310371.P3535650141865799034

namespace A310371

/-- `A004442(A017281(n)-A315340(n))` -/
def P3535650141865799034.Spec : Prop :=
  ∀ n, P3535650141865799034.a n = A310371 n

end A310371

/-! ## A310371.P11565608811926958049

`2*A310438(n)-A180004(A310438(n))`
-/

namespace A310371.P11565608811926958049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310438 n - A180004 (A310438 n).toNat

end

end A310371.P11565608811926958049

namespace A310371

/-- `2*A310438(n)-A180004(A310438(n))` -/
def P11565608811926958049.Spec : Prop :=
  ∀ n, P11565608811926958049.a n = A310371 n

end A310371

/-! ## A310371.P17473417326082763429

`A005843(A008706(n))-A315340(n)`
-/

namespace A310371.P17473417326082763429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315340 n

end

end A310371.P17473417326082763429

namespace A310371

/-- `A005843(A008706(n))-A315340(n)` -/
def P17473417326082763429.Spec : Prop :=
  ∀ n, P17473417326082763429.a n = A310371 n

end A310371

/-! ## A310371.P3224044640210797366

`A005843(A314117(n))-A008458(n)`
-/

namespace A310371.P3224044640210797366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314117 n).toNat - A008458 n

end

end A310371.P3224044640210797366

namespace A310371

/-- `A005843(A314117(n))-A008458(n)` -/
def P3224044640210797366.Spec : Prop :=
  ∀ n, P3224044640210797366.a n = A310371 n

end A310371

/-! ## A310371.P18040433100103888354

`A005843(A314117(n))-(A008706(n)+n)`
-/

namespace A310371.P18040433100103888354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314117 n).toNat - (A008706 n + (n : ℤ))

end

end A310371.P18040433100103888354

namespace A310371

/-- `A005843(A314117(n))-(A008706(n)+n)` -/
def P18040433100103888354.Spec : Prop :=
  ∀ n, P18040433100103888354.a n = A310371 n

end A310371

/-! ## A310371.P5572480146380598315

`A315329(2*n)+2-A001281(2*n+1)`
-/

namespace A310371.P5572480146380598315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315329 (2 * n) + (2 - A001281 (2 * n + 1))

end

end A310371.P5572480146380598315

namespace A310371

/-- `A315329(2*n)+2-A001281(2*n+1)` -/
def P5572480146380598315.Spec : Prop :=
  ∀ n, P5572480146380598315.a n = A310371 n

end A310371

/-! ## A310371.P2528281473857567938

`A315329(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310371.P2528281473857567938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315329 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310371.P2528281473857567938

namespace A310371

/-- `A315329(2*n)+A008458(n+1)-(12*n+6)` -/
def P2528281473857567938.Spec : Prop :=
  ∀ n, P2528281473857567938.a n = A310371 n

end A310371

/-! ## A310371.P15428035523316133341

`A004275(A002024(A283733(n))+n)`
-/

namespace A310371.P15428035523316133341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A002024 (A283733 n).toNat + (n : ℤ)).toNat

end

end A310371.P15428035523316133341

namespace A310371

/-- `A004275(A002024(A283733(n))+n)` -/
def P15428035523316133341.Spec : Prop :=
  ∀ n, P15428035523316133341.a n = A310371 n

end A310371

/-!
# A310372: Coordination sequence Gal.4.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310372, the canonical program `A310372.P13571883006595967654` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310372 has offset 0).

The definition of A310372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310372.P17752565355149556945

`A313051(n)+A238470(n)`
-/

namespace A310372.P17752565355149556945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A238470 n

end

end A310372.P17752565355149556945

namespace A310372

/-- `A313051(n)+A238470(n)` -/
def P17752565355149556945.Spec : Prop :=
  ∀ n, P17752565355149556945.a n = A310372 n

end A310372

/-! ## A310372.P5888971569794519315

`A314874(n)-A102283(n)`
-/

namespace A310372.P5888971569794519315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314874 n - A102283 n

end

end A310372.P5888971569794519315

namespace A310372

/-- `A314874(n)-A102283(n)` -/
def P5888971569794519315.Spec : Prop :=
  ∀ n, P5888971569794519315.a n = A310372 n

theorem P5888971569794519315.correct : P5888971569794519315.Spec := by
  intro n
  simp only [A310372, Nat.add_sub_cancel, A310372.P5888971569794519315.a, A310372.P13571883006595967654.a, A004275, A004275.P5432371984586133349.a, A004776, A004776.P12492855655341303098.a, A102283, A102283.P18218274576938374007.a, A314874, A314874.P7600466854928953407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310372

/-! ## A310372.P7860710013968541734

`A313487(n)-A238469(n)`
-/

namespace A310372.P7860710013968541734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 n - A238469 n

end

end A310372.P7860710013968541734

namespace A310372

/-- `A313487(n)-A238469(n)` -/
def P7860710013968541734.Spec : Prop :=
  ∀ n, P7860710013968541734.a n = A310372 n

end A310372

/-! ## A310372.P13571883006595967654

`A004275(A004776(2*(n+1)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310372

/-- `A004275(A004776(2*(n+1)))` -/
def P13571883006595967654.Spec : Prop :=
  ∀ n, P13571883006595967654.a n = A310372 n

theorem P13571883006595967654.correct : P13571883006595967654.Spec := by
  intro n
  simp only [A310372]

end A310372

/-! ## A310372.P1031553136007902868

`A004277(A047588(2*n+1))`
-/

namespace A310372.P1031553136007902868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047588 (2 * n + 1)).toNat

end

end A310372.P1031553136007902868

namespace A310372

/-- `A004277(A047588(2*n+1))` -/
def P1031553136007902868.Spec : Prop :=
  ∀ n, P1031553136007902868.a n = A310372 n

end A310372

/-! ## A310372.P15603175866958746779

`A312549(n)+2*A238470(n)`
-/

namespace A310372.P15603175866958746779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + 2 * A238470 n

end

end A310372.P15603175866958746779

namespace A310372

/-- `A312549(n)+2*A238470(n)` -/
def P15603175866958746779.Spec : Prop :=
  ∀ n, P15603175866958746779.a n = A310372 n

end A310372

/-! ## A310372.P16564253958449199248

`2*A312895(n)-A008574(n)`
-/

namespace A310372.P16564253958449199248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312895 n - A008574 n

end

end A310372.P16564253958449199248

namespace A310372

/-- `2*A312895(n)-A008574(n)` -/
def P16564253958449199248.Spec : Prop :=
  ∀ n, P16564253958449199248.a n = A310372 n

end A310372

/-! ## A310372.P2573788738897062428

`A313487(n)-A238470(2*n)`
-/

namespace A310372.P2573788738897062428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 n - A238470 (2 * n)

end

end A310372.P2573788738897062428

namespace A310372

/-- `A313487(n)-A238470(2*n)` -/
def P2573788738897062428.Spec : Prop :=
  ∀ n, P2573788738897062428.a n = A310372 n

end A310372

/-! ## A310372.P16017841794560007323

`A315701(n)-(A242062(n)+n)`
-/

namespace A310372.P16017841794560007323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 n - (A242062 n + (n : ℤ))

end

end A310372.P16017841794560007323

namespace A310372

/-- `A315701(n)-(A242062(n)+n)` -/
def P16017841794560007323.Spec : Prop :=
  ∀ n, P16017841794560007323.a n = A310372 n

end A310372

/-! ## A310372.P4662729519480361878

`A310503(n)-Δ[2*A011860(n)]`
-/

namespace A310372.P4662729519480361878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - (f1 (n + 1) - f1 n)

end

end A310372.P4662729519480361878

namespace A310372

/-- `A310503(n)-Δ[2*A011860(n)]` -/
def P4662729519480361878.Spec : Prop :=
  ∀ n, P4662729519480361878.a n = A310372 n

end A310372

/-! ## A310372.P10257257467516912043

`A004275(A047588(2*n+1)+1)`
-/

namespace A310372.P10257257467516912043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047588 (2 * n + 1) + 1).toNat

end

end A310372.P10257257467516912043

namespace A310372

/-- `A004275(A047588(2*n+1)+1)` -/
def P10257257467516912043.Spec : Prop :=
  ∀ n, P10257257467516912043.a n = A310372 n

end A310372

/-! ## A310372.P11275820108384189257

`A060464(2*n+1)+A004277(n)`
-/

namespace A310372.P11275820108384189257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * n + 1) + A004277 n

end

end A310372.P11275820108384189257

namespace A310372

/-- `A060464(2*n+1)+A004277(n)` -/
def P11275820108384189257.Spec : Prop :=
  ∀ n, P11275820108384189257.a n = A310372 n

end A310372

/-! ## A310372.P2777565610424189725

`A060464(2*n+1)+A004275(n+1)`
-/

namespace A310372.P2777565610424189725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * n + 1) + A004275 (n + 1)

end

end A310372.P2777565610424189725

namespace A310372

/-- `A060464(2*n+1)+A004275(n+1)` -/
def P2777565610424189725.Spec : Prop :=
  ∀ n, P2777565610424189725.a n = A310372 n

end A310372

/-! ## A310372.P2671170608734624031

`A060464(2*n+1)+A028310(2*n)`
-/

namespace A310372.P2671170608734624031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * n + 1) + A028310 (2 * n)

end

end A310372.P2671170608734624031

namespace A310372

/-- `A060464(2*n+1)+A028310(2*n)` -/
def P2671170608734624031.Spec : Prop :=
  ∀ n, P2671170608734624031.a n = A310372 n

end A310372

/-! ## A310372.P13920328243442484793

`A060464(2*n+1)+A065033(4*n)`
-/

namespace A310372.P13920328243442484793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * n + 1) + A065033 (4 * n)

end

end A310372.P13920328243442484793

namespace A310372

/-- `A060464(2*n+1)+A065033(4*n)` -/
def P13920328243442484793.Spec : Prop :=
  ∀ n, P13920328243442484793.a n = A310372 n

end A310372

/-! ## A310372.P2621562683986975377

`A060464(2*n+1)+A004280(n+2)-1`
-/

namespace A310372.P2621562683986975377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * n + 1) + (A004280 (n + 2) - 1)

end

end A310372.P2621562683986975377

namespace A310372

/-- `A060464(2*n+1)+A004280(n+2)-1` -/
def P2621562683986975377.Spec : Prop :=
  ∀ n, P2621562683986975377.a n = A310372 n

end A310372

/-! ## A310372.P2680847073021818037

`A310441(n)-Δ[A011860(n)]`
-/

namespace A310372.P2680847073021818037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310441 n - (f1 (n + 1) - f1 n)

end

end A310372.P2680847073021818037

namespace A310372

/-- `A310441(n)-Δ[A011860(n)]` -/
def P2680847073021818037.Spec : Prop :=
  ∀ n, P2680847073021818037.a n = A310372 n

theorem P2680847073021818037.correct : P2680847073021818037.Spec := by
  intro n
  simp only [A310372, Nat.add_sub_cancel, A310372.P2680847073021818037.f1, A310372.P2680847073021818037.a, A310372.P13571883006595967654.a, A004275, A004275.P5432371984586133349.a, A004776, A004776.P12492855655341303098.a, A011860, A011860.P10402414017759076193.a, A310441, A310441.P12169130983515311112.f1, A310441.P12169130983515311112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310372

/-! ## A310372.P8368657199544391727

`A315175(n)-2*A238469(n)`
-/

namespace A310372.P8368657199544391727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315175 n - 2 * A238469 n

end

end A310372.P8368657199544391727

namespace A310372

/-- `A315175(n)-2*A238469(n)` -/
def P8368657199544391727.Spec : Prop :=
  ∀ n, P8368657199544391727.a n = A310372 n

end A310372

/-! ## A310372.P13804952685860249446

`A315701(n)-A242062(8*n)`
-/

namespace A310372.P13804952685860249446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 n - A242062 (8 * n)

end

end A310372.P13804952685860249446

namespace A310372

/-- `A315701(n)-A242062(8*n)` -/
def P13804952685860249446.Spec : Prop :=
  ∀ n, P13804952685860249446.a n = A310372 n

end A310372

/-!
# A310373: Coordination sequence Gal.6.150.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310373, the canonical program `A310373.P7906756891214118992` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310373 has offset 0).

The definition of A310373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310373.P14761020347445376768

`A313485(n)-A134667(n)`
-/

namespace A310373.P14761020347445376768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n - A134667 n

end

end A310373.P14761020347445376768

namespace A310373

/-- `A313485(n)-A134667(n)` -/
def P14761020347445376768.Spec : Prop :=
  ∀ n, P14761020347445376768.a n = A310373 n

end A310373

/-! ## A310373.P7906756891214118992

`A312890(n)+A002264(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310373

/-- `A312890(n)+A002264(n+1)` -/
def P7906756891214118992.Spec : Prop :=
  ∀ n, P7906756891214118992.a n = A310373 n

theorem P7906756891214118992.correct : P7906756891214118992.Spec := by
  intro n
  simp only [A310373]

end A310373

/-! ## A310373.P17333763685383393614

`A312890(n)+n-A004396(n)`
-/

namespace A310373.P17333763685383393614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + ((n : ℤ) - A004396 n)

end

end A310373.P17333763685383393614

namespace A310373

/-- `A312890(n)+n-A004396(n)` -/
def P17333763685383393614.Spec : Prop :=
  ∀ n, P17333763685383393614.a n = A310373 n

end A310373

/-! ## A310373.P3411939876367192835

`A008486(n)+A312890(n)-A008576(n)`
-/

namespace A310373.P3411939876367192835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312890 n - A008576 n)

end

end A310373.P3411939876367192835

namespace A310373

/-- `A008486(n)+A312890(n)-A008576(n)` -/
def P3411939876367192835.Spec : Prop :=
  ∀ n, P3411939876367192835.a n = A310373 n

end A310373

/-! ## A310373.P5101568533702094026

`A313485(n)-A128834(A128834(n)+n)`
-/

namespace A310373.P5101568533702094026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n - A128834 (A128834 n + (n : ℤ)).toNat

end

end A310373.P5101568533702094026

namespace A310373

/-- `A313485(n)-A128834(A128834(n)+n)` -/
def P5101568533702094026.Spec : Prop :=
  ∀ n, P5101568533702094026.a n = A310373 n

end A310373

/-! ## A310373.P1542428014550949587

`A313088(n)+A128834(n-A128834(n))`
-/

namespace A310373.P1542428014550949587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + A128834 ((n : ℤ) - A128834 n).toNat

end

end A310373.P1542428014550949587

namespace A310373

/-- `A313088(n)+A128834(n-A128834(n))` -/
def P1542428014550949587.Spec : Prop :=
  ∀ n, P1542428014550949587.a n = A310373 n

end A310373

/-! ## A310373.P14982160483161836130

`A004396(A004525(n))+A310452(n)-A004396(n)`
-/

namespace A310373.P14982160483161836130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A310452 n - A004396 n)

end

end A310373.P14982160483161836130

namespace A310373

/-- `A004396(A004525(n))+A310452(n)-A004396(n)` -/
def P14982160483161836130.Spec : Prop :=
  ∀ n, P14982160483161836130.a n = A310373 n

end A310373

/-! ## A310373.P3640391845122199636

`A313720(n)-A008612(2*n+1)`
-/

namespace A310373.P3640391845122199636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n - A008612 (2 * n + 1)

end

end A310373.P3640391845122199636

namespace A310373

/-- `A313720(n)-A008612(2*n+1)` -/
def P3640391845122199636.Spec : Prop :=
  ∀ n, P3640391845122199636.a n = A310373 n

end A310373

/-! ## A310373.P10780889424547069142

`A314031(n)-A004525(n)`
-/

namespace A310373.P10780889424547069142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 n - A004525 n

end

end A310373.P10780889424547069142

namespace A310373

/-- `A314031(n)-A004525(n)` -/
def P10780889424547069142.Spec : Prop :=
  ∀ n, P10780889424547069142.a n = A310373 n

theorem P10780889424547069142.correct : P10780889424547069142.Spec := by
  intro n
  simp only [A310373, Nat.add_sub_cancel, A310373.P10780889424547069142.a, A310373.P7906756891214118992.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A312890, A312890.P5869710039852604831.a, A314031, A314031.P9700743857444675486.a, A008574, A008574.P1300280032690682112.a, A313556, A313556.P12127503874440300930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310373

/-! ## A310373.P3991117777000670056

`A314110(n)-A004396(n)`
-/

namespace A310373.P3991117777000670056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n - A004396 n

end

end A310373.P3991117777000670056

namespace A310373

/-- `A314110(n)-A004396(n)` -/
def P3991117777000670056.Spec : Prop :=
  ∀ n, P3991117777000670056.a n = A310373 n

end A310373

/-! ## A310373.P7260043346951287205

`A314110(n)-A002264(2*n+1)`
-/

namespace A310373.P7260043346951287205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n - A002264 (2 * n + 1)

end

end A310373.P7260043346951287205

namespace A310373

/-- `A314110(n)-A002264(2*n+1)` -/
def P7260043346951287205.Spec : Prop :=
  ∀ n, P7260043346951287205.a n = A310373 n

end A310373

/-! ## A310373.P15301893331525214173

`A315534(n)-A064429(n)`
-/

namespace A310373.P15301893331525214173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315534 n - A064429 n

end

end A310373.P15301893331525214173

namespace A310373

/-- `A315534(n)-A064429(n)` -/
def P15301893331525214173.Spec : Prop :=
  ∀ n, P15301893331525214173.a n = A310373 n

end A310373

/-! ## A310373.P15945110643586187637

`A008458(n)+A008574(n)-A315335(n)`
-/

namespace A310373.P15945110643586187637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315335 n)

end

end A310373.P15945110643586187637

namespace A310373

/-- `A008458(n)+A008574(n)-A315335(n)` -/
def P15945110643586187637.Spec : Prop :=
  ∀ n, P15945110643586187637.a n = A310373 n

end A310373

/-! ## A310373.P4779742284998039917

`A315763(n)-2*A004396(n)`
-/

namespace A310373.P4779742284998039917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - 2 * A004396 n

end

end A310373.P4779742284998039917

namespace A310373

/-- `A315763(n)-2*A004396(n)` -/
def P4779742284998039917.Spec : Prop :=
  ∀ n, P4779742284998039917.a n = A310373 n

end A310373

/-! ## A310373.P1990477534052863291

`A315763(n)-2*A002264(A005408(n))`
-/

namespace A310373.P1990477534052863291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - 2 * A002264 (A005408 n).toNat

end

end A310373.P1990477534052863291

namespace A310373

/-- `A315763(n)-2*A002264(A005408(n))` -/
def P1990477534052863291.Spec : Prop :=
  ∀ n, P1990477534052863291.a n = A310373 n

end A310373

/-! ## A310373.P17367485373161296410

`A028310(A312123(2*n)-A312123(n))`
-/

namespace A310373.P17367485373161296410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A312123 (2 * n) - A312123 n).toNat

end

end A310373.P17367485373161296410

namespace A310373

/-- `A028310(A312123(2*n)-A312123(n))` -/
def P17367485373161296410.Spec : Prop :=
  ∀ n, P17367485373161296410.a n = A310373 n

end A310373

/-!
# A310374: Coordination sequence Gal.6.245.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310374, the canonical program `A310374.P11349914132477843547` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310374 has offset 0).

The definition of A310374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310374.P11349914132477843547

`(A310378(n)+A310367(n))/2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A310374

/-- `(A310378(n)+A310367(n))/2` -/
def P11349914132477843547.Spec : Prop :=
  ∀ n, P11349914132477843547.a n = (A310374 n : ℚ)

end A310374

/-! ## A310374.P12982865498500165781

`A130824(n)+A092038(A314109(n)-A130824(n))`
-/

namespace A310374.P12982865498500165781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A092038 (A314109 n - A130824 n).toNat

end

end A310374.P12982865498500165781

namespace A310374

/-- `A130824(n)+A092038(A314109(n)-A130824(n))` -/
def P12982865498500165781.Spec : Prop :=
  ∀ n, P12982865498500165781.a n = A310374 n

end A310374

/-! ## A310374.P919044335145803422

`A130824(n)+A092038(A314032(n)-A130824(n))`
-/

namespace A310374.P919044335145803422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A092038 (A314032 n - A130824 n).toNat

end

end A310374.P919044335145803422

namespace A310374

/-- `A130824(n)+A092038(A314032(n)-A130824(n))` -/
def P919044335145803422.Spec : Prop :=
  ∀ n, P919044335145803422.a n = A310374 n

end A310374

/-! ## A310374.P12154241852985608367

`A310396(n)-A004525(A310420(n)-A310396(n))`
-/

namespace A310374.P12154241852985608367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310396 n - A004525 (A310420 n - A310396 n).toNat

end

end A310374.P12154241852985608367

namespace A310374

/-- `A310396(n)-A004525(A310420(n)-A310396(n))` -/
def P12154241852985608367.Spec : Prop :=
  ∀ n, P12154241852985608367.a n = A310374 n

end A310374

/-! ## A310374.P13855567327811270644

`abs(A008592(n)-A315334(n))`
-/

namespace A310374.P13855567327811270644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315334 n|

end

end A310374.P13855567327811270644

namespace A310374

/-- `abs(A008592(n)-A315334(n))` -/
def P13855567327811270644.Spec : Prop :=
  ∀ n, P13855567327811270644.a n = A310374 n

end A310374

/-! ## A310374.P4517421427742606452

`2*A008706(n)-A315334(n)`
-/

namespace A310374.P4517421427742606452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315334 n

end

end A310374.P4517421427742606452

namespace A310374

/-- `2*A008706(n)-A315334(n)` -/
def P4517421427742606452.Spec : Prop :=
  ∀ n, P4517421427742606452.a n = A310374 n

end A310374

/-! ## A310374.P12147269295278804813

`A135042(2*n+1)-A315334(n)`
-/

namespace A310374.P12147269295278804813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315334 n

end

end A310374.P12147269295278804813

namespace A310374

/-- `A135042(2*n+1)-A315334(n)` -/
def P12147269295278804813.Spec : Prop :=
  ∀ n, P12147269295278804813.a n = A310374 n

end A310374

/-! ## A310374.P18355381920237665873

`A184418(A008574(n))-A315334(n)`
-/

namespace A310374.P18355381920237665873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315334 n

end

end A310374.P18355381920237665873

namespace A310374

/-- `A184418(A008574(n))-A315334(n)` -/
def P18355381920237665873.Spec : Prop :=
  ∀ n, P18355381920237665873.a n = A310374 n

end A310374

/-! ## A310374.P5953318847411206622

`A008458(n)+A008574(n)-A315334(n)`
-/

namespace A310374.P5953318847411206622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315334 n)

end

end A310374.P5953318847411206622

namespace A310374

/-- `A008458(n)+A008574(n)-A315334(n)` -/
def P5953318847411206622.Spec : Prop :=
  ∀ n, P5953318847411206622.a n = A310374 n

end A310374

/-! ## A310374.P6037421681969666594

`A315334(n)-A005843(A315334(n)-A008706(n))`
-/

namespace A310374.P6037421681969666594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315334 n - A005843 (A315334 n - A008706 n).toNat

end

end A310374.P6037421681969666594

namespace A310374

/-- `A315334(n)-A005843(A315334(n)-A008706(n))` -/
def P6037421681969666594.Spec : Prop :=
  ∀ n, P6037421681969666594.a n = A310374 n

end A310374

/-! ## A310374.P10960481591703819636

`A005843(A008706(n))-A315334(n)`
-/

namespace A310374.P10960481591703819636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315334 n

end

end A310374.P10960481591703819636

namespace A310374

/-- `A005843(A008706(n))-A315334(n)` -/
def P10960481591703819636.Spec : Prop :=
  ∀ n, P10960481591703819636.a n = A310374 n

end A310374

/-! ## A310374.P855203553608994705

`A065502(A008458(n))-A315334(n)`
-/

namespace A310374.P855203553608994705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315334 n

end

end A310374.P855203553608994705

namespace A310374

/-- `A065502(A008458(n))-A315334(n)` -/
def P855203553608994705.Spec : Prop :=
  ∀ n, P855203553608994705.a n = A310374 n

end A310374

/-! ## A310374.P14303574921738977924

`A313908(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310374.P14303574921738977924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313908 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310374.P14303574921738977924

namespace A310374

/-- `A313908(2*n)+A008458(n+1)-(12*n+6)` -/
def P14303574921738977924.Spec : Prop :=
  ∀ n, P14303574921738977924.a n = A310374 n

end A310374

/-! ## A310374.P305648868938941057

`A092038(A314032(n)+A130824(n))`
-/

namespace A310374.P305648868938941057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A314032 n + A130824 n).toNat

end

end A310374.P305648868938941057

namespace A310374

/-- `A092038(A314032(n)+A130824(n))` -/
def P305648868938941057.Spec : Prop :=
  ∀ n, P305648868938941057.a n = A310374 n

end A310374

/-! ## A310374.P13693806835141645874

`A092038(A314109(n)+A130824(n))`
-/

namespace A310374.P13693806835141645874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A314109 n + A130824 n).toNat

end

end A310374.P13693806835141645874

namespace A310374

/-- `A092038(A314109(n)+A130824(n))` -/
def P13693806835141645874.Spec : Prop :=
  ∀ n, P13693806835141645874.a n = A310374 n

end A310374

/-!
# A310375: Coordination sequence Gal.5.82.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310375, the canonical program `A310375.P16852032750516594143` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310375 has offset 0).

The definition of A310375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310375.P16852032750516594143

`A151988(A008486(n))+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310375

/-- `A151988(A008486(n))+n` -/
def P16852032750516594143.Spec : Prop :=
  ∀ n, P16852032750516594143.a n = A310375 n

theorem P16852032750516594143.correct : P16852032750516594143.Spec := by
  intro n
  simp only [A310375]

end A310375

/-! ## A310375.P2980342081075010223

`A312948(n)-A014019(n+3)`
-/

namespace A310375.P2980342081075010223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n - A014019 (n + 3)

end

end A310375.P2980342081075010223

namespace A310375

/-- `A312948(n)-A014019(n+3)` -/
def P2980342081075010223.Spec : Prop :=
  ∀ n, P2980342081075010223.a n = A310375 n

end A310375

/-! ## A310375.P5206283968604539551

`A151988(A004277(n)+n)+n`
-/

namespace A310375.P5206283968604539551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004277 n + (n : ℤ)).toNat + (n : ℤ)

end

end A310375.P5206283968604539551

namespace A310375

/-- `A151988(A004277(n)+n)+n` -/
def P5206283968604539551.Spec : Prop :=
  ∀ n, P5206283968604539551.a n = A310375 n

end A310375

/-! ## A310375.P10714923446400339328

`A151988(A008574(n)-n)+n`
-/

namespace A310375.P10714923446400339328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008574 n - (n : ℤ)).toNat + (n : ℤ)

end

end A310375.P10714923446400339328

namespace A310375

/-- `A151988(A008574(n)-n)+n` -/
def P10714923446400339328.Spec : Prop :=
  ∀ n, P10714923446400339328.a n = A310375 n

end A310375

/-! ## A310375.P4795191296873823254

`A151988(record[A080512(n+1)])+n`
-/

namespace A310375.P4795191296873823254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n : ℤ)

end

end A310375.P4795191296873823254

namespace A310375

/-- `A151988(record[A080512(n+1)])+n` -/
def P4795191296873823254.Spec : Prop :=
  ∀ n, P4795191296873823254.a n = A310375 n

end A310375

/-! ## A310375.P15808951456215997960

`A301726(n)-A004396(A151988(n))`
-/

namespace A310375.P15808951456215997960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A004396 (A151988 n).toNat

end

end A310375.P15808951456215997960

namespace A310375

/-- `A301726(n)-A004396(A151988(n))` -/
def P15808951456215997960.Spec : Prop :=
  ∀ n, P15808951456215997960.a n = A310375 n

end A310375

/-! ## A310375.P8544539024404525539

`A314754(n)-A330033(n)`
-/

namespace A310375.P8544539024404525539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314754 n - A330033 n

end

end A310375.P8544539024404525539

namespace A310375

/-- `A314754(n)-A330033(n)` -/
def P8544539024404525539.Spec : Prop :=
  ∀ n, P8544539024404525539.a n = A310375 n

end A310375

/-! ## A310375.P18195712973214902947

`A310439(n)-A008676(A016777(n))`
-/

namespace A310375.P18195712973214902947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310439 n - A008676 (A016777 n).toNat

end

end A310375.P18195712973214902947

namespace A310375

/-- `A310439(n)-A008676(A016777(n))` -/
def P18195712973214902947.Spec : Prop :=
  ∀ n, P18195712973214902947.a n = A310375 n

end A310375

/-! ## A310375.P16190366943476524325

`A310439(n)-A110654(A057354(n))`
-/

namespace A310375.P16190366943476524325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310439 n - A110654 (A057354 n).toNat

end

end A310375.P16190366943476524325

namespace A310375

/-- `A310439(n)-A110654(A057354(n))` -/
def P16190366943476524325.Spec : Prop :=
  ∀ n, P16190366943476524325.a n = A310375 n

end A310375

/-! ## A310375.P18214482150021235215

`abs(A008592(n)-A315333(n))`
-/

namespace A310375.P18214482150021235215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315333 n|

end

end A310375.P18214482150021235215

namespace A310375

/-- `abs(A008592(n)-A315333(n))` -/
def P18214482150021235215.Spec : Prop :=
  ∀ n, P18214482150021235215.a n = A310375 n

end A310375

/-! ## A310375.P18218473417322496890

`2*A008706(n)-A315333(n)`
-/

namespace A310375.P18218473417322496890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315333 n

end

end A310375.P18218473417322496890

namespace A310375

/-- `2*A008706(n)-A315333(n)` -/
def P18218473417322496890.Spec : Prop :=
  ∀ n, P18218473417322496890.a n = A310375 n

end A310375

/-! ## A310375.P5464600352001908235

`A008458(n)+A008574(n)-A315333(n)`
-/

namespace A310375.P5464600352001908235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315333 n)

end

end A310375.P5464600352001908235

namespace A310375

/-- `A008458(n)+A008574(n)-A315333(n)` -/
def P5464600352001908235.Spec : Prop :=
  ∀ n, P5464600352001908235.a n = A310375 n

end A310375

/-! ## A310375.P2134580574710419247

`A315333(n)-A005843(A315333(n)-A008706(n))`
-/

namespace A310375.P2134580574710419247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315333 n - A005843 (A315333 n - A008706 n).toNat

end

end A310375.P2134580574710419247

namespace A310375

/-- `A315333(n)-A005843(A315333(n)-A008706(n))` -/
def P2134580574710419247.Spec : Prop :=
  ∀ n, P2134580574710419247.a n = A310375 n

end A310375

/-! ## A310375.P9500578814191429317

`A008574(n)+A314191(n)-A250120(n)`
-/

namespace A310375.P9500578814191429317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314191 n - A250120 n)

end

end A310375.P9500578814191429317

namespace A310375

/-- `A008574(n)+A314191(n)-A250120(n)` -/
def P9500578814191429317.Spec : Prop :=
  ∀ n, P9500578814191429317.a n = A310375 n

end A310375

/-! ## A310375.P6202791843148911579

`A005843(A008706(n))-A315333(n)`
-/

namespace A310375.P6202791843148911579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315333 n

end

end A310375.P6202791843148911579

namespace A310375

/-- `A005843(A008706(n))-A315333(n)` -/
def P6202791843148911579.Spec : Prop :=
  ∀ n, P6202791843148911579.a n = A310375 n

end A310375

/-! ## A310375.P5116237882967812128

`A314100(n)-A059995(A016969(n))`
-/

namespace A310375.P5116237882967812128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314100 n - A059995 (A016969 n).toNat

end

end A310375.P5116237882967812128

namespace A310375

/-- `A314100(n)-A059995(A016969(n))` -/
def P5116237882967812128.Spec : Prop :=
  ∀ n, P5116237882967812128.a n = A310375 n

end A310375

/-! ## A310375.P5720803663866457747

`A028310(A314754(2*n)-A314754(n))`
-/

namespace A310375.P5720803663866457747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A314754 (2 * n) - A314754 n).toNat

end

end A310375.P5720803663866457747

namespace A310375

/-- `A028310(A314754(2*n)-A314754(n))` -/
def P5720803663866457747.Spec : Prop :=
  ∀ n, P5720803663866457747.a n = A310375 n

end A310375

/-!
# A310376: Coordination sequence Gal.5.199.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310376, the canonical program `A310376.P1602413668059048262` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310376 has offset 0).

The definition of A310376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310376.P1602413668059048262

`A312998(n)+A087509(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A310376

/-- `A312998(n)+A087509(n)` -/
def P1602413668059048262.Spec : Prop :=
  ∀ n, P1602413668059048262.a n = A310376 n

theorem P1602413668059048262.correct : P1602413668059048262.Spec := by
  intro n
  simp only [A310376]

end A310376

/-! ## A310376.P13674950489542626280

`A312998(n)+Δ[A008133(n)]`
-/

namespace A310376.P13674950489542626280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312998 n + (f1 (n + 1) - f1 n)

end

end A310376.P13674950489542626280

namespace A310376

/-- `A312998(n)+Δ[A008133(n)]` -/
def P13674950489542626280.Spec : Prop :=
  ∀ n, P13674950489542626280.a n = A310376 n

end A310376

/-! ## A310376.P5430773817508359666

`A087509(n)+A312475(n)+∑[A131736(n)]`
-/

namespace A310376.P5430773817508359666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n + (A312475 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A310376.P5430773817508359666

namespace A310376

/-- `A087509(n)+A312475(n)+∑[A131736(n)]` -/
def P5430773817508359666.Spec : Prop :=
  ∀ n, P5430773817508359666.a n = A310376 n

theorem P5430773817508359666.correct : P5430773817508359666.Spec := by
  intro n
  simp only [A310376, Nat.add_sub_cancel, A310376.P5430773817508359666.f1, A310376.P5430773817508359666.a, A310376.P1602413668059048262.a, A087509, A087509.P16726383197486069853.a, A131736, A131736.P13980456010254172596.a, A312475, A312475.P17325744144907721022.a, A312998, A312998.P16096171208213579461.f1, A312998.P16096171208213579461.a, A004275, A004275.P5432371984586133349.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310376

/-! ## A310376.P6532056675677126735

`A314762(2*n)-A314762(n)%A008574(2*n)`
-/

namespace A310376.P6532056675677126735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314762 (2 * n) - Int.tmod (A314762 n) (A008574 (2 * n))

end

end A310376.P6532056675677126735

namespace A310376

/-- `A314762(2*n)-A314762(n)%A008574(2*n)` -/
def P6532056675677126735.Spec : Prop :=
  ∀ n, P6532056675677126735.a n = A310376 n

end A310376

/-! ## A310376.P12535397354420932209

`A312071(n)+A257990(A261762(3*(n+1)))`
-/

namespace A310376.P12535397354420932209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312071 n + A257990 (A261762 (3 * (n + 1))).toNat

end

end A310376.P12535397354420932209

namespace A310376

/-- `A312071(n)+A257990(A261762(3*(n+1)))` -/
def P12535397354420932209.Spec : Prop :=
  ∀ n, P12535397354420932209.a n = A310376 n

end A310376

/-!
# A310377: Coordination sequence Gal.6.318.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310377, there is no canonical definition to state claims against.
-/

/-! ## A310377.P13430583693991683999

`∑[A000005(∑[A189359(n+1)])]`
-/

namespace A310377.P13430583693991683999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189359 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310377.P13430583693991683999

/-! ## A310377.P5870338345176242679

`A116127(A033579(n)+3^n)+4*n`
-/

namespace A310377.P5870338345176242679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116127 (A033579 n + (3 ^ n : ℤ)).toNat + (4 * n : ℤ)

end

end A310377.P5870338345176242679

/-! ## A310377.P16191481644773184723

`A057142(A267694(3*n)+(n+1)²/∏{p}[n+1, #])`
-/

namespace A310377.P16191481644773184723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (SequenceMachineLib.roundAway ((A267694 (3 * n) : ℚ) + ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A310377.P16191481644773184723

/-! ## A310377.P13340609856084472188

`∑[∏{e}[A332215(3*n+1)-A132753(2*n+1)+3, #+1]]`
-/

namespace A310377.P13340609856084472188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332215 (3 * n + 1) - A132753 (2 * n + 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310377.P13340609856084472188

/-! ## A310377.P2905355694898315318

`A298024(n)-A158465(A006981(n))`
-/

namespace A310377.P2905355694898315318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A158465 (A006981 n).toNat

end

end A310377.P2905355694898315318

/-!
# A310378: Coordination sequence Gal.6.320.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310378, the canonical program `A310378.P15514030855777520600` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310378 has offset 0).

The definition of A310378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310378.P11461735350363821074

`2*A312902(n)-A008574(n)`
-/

namespace A310378.P11461735350363821074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312902 n - A008574 n

end

end A310378.P11461735350363821074

namespace A310378

/-- `2*A312902(n)-A008574(n)` -/
def P11461735350363821074.Spec : Prop :=
  ∀ n, P11461735350363821074.a n = A310378 n

end A310378

/-! ## A310378.P4666174775118407954

`2*A310374(n)-A310367(n)`
-/

namespace A310378.P4666174775118407954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310374 n - A310367 n

end

end A310378.P4666174775118407954

namespace A310378

/-- `2*A310374(n)-A310367(n)` -/
def P4666174775118407954.Spec : Prop :=
  ∀ n, P4666174775118407954.a n = A310378 n

end A310378

/-! ## A310378.P10714594348222747661

`A004275(A312902(n)-A004273(n))`
-/

namespace A310378.P10714594348222747661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312902 n - A004273 n).toNat

end

end A310378.P10714594348222747661

namespace A310378

/-- `A004275(A312902(n)-A004273(n))` -/
def P10714594348222747661.Spec : Prop :=
  ∀ n, P10714594348222747661.a n = A310378 n

end A310378

/-! ## A310378.P12147888691765365624

`A004273(A312902(n)-n)-A004273(n)`
-/

namespace A310378.P12147888691765365624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312902 n - (n : ℤ)).toNat - A004273 n

end

end A310378.P12147888691765365624

namespace A310378

/-- `A004273(A312902(n)-n)-A004273(n)` -/
def P12147888691765365624.Spec : Prop :=
  ∀ n, P12147888691765365624.a n = A310378 n

end A310378

/-! ## A310378.P16167029953975597041

`A005843(A312902(n))-A008574(n)`
-/

namespace A310378.P16167029953975597041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312902 n).toNat - A008574 n

end

end A310378.P16167029953975597041

namespace A310378

/-- `A005843(A312902(n))-A008574(n)` -/
def P16167029953975597041.Spec : Prop :=
  ∀ n, P16167029953975597041.a n = A310378 n

end A310378

/-! ## A310378.P18011312412553530940

`A004275(A312902(n))-A004275(2*n)`
-/

namespace A310378.P18011312412553530940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312902 n).toNat - A004275 (2 * n)

end

end A310378.P18011312412553530940

namespace A310378

/-- `A004275(A312902(n))-A004275(2*n)` -/
def P18011312412553530940.Spec : Prop :=
  ∀ n, P18011312412553530940.a n = A310378 n

end A310378

/-! ## A310378.P12660987922241674576

`A005843(A312902(n))+n-A008706(n)`
-/

namespace A310378.P12660987922241674576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312902 n).toNat + ((n : ℤ) - A008706 n)

end

end A310378.P12660987922241674576

namespace A310378

/-- `A005843(A312902(n))+n-A008706(n)` -/
def P12660987922241674576.Spec : Prop :=
  ∀ n, P12660987922241674576.a n = A310378 n

end A310378

/-! ## A310378.P6450327324862503071

`abs(A008592(n)-A315329(n))`
-/

namespace A310378.P6450327324862503071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315329 n|

end

end A310378.P6450327324862503071

namespace A310378

/-- `abs(A008592(n)-A315329(n))` -/
def P6450327324862503071.Spec : Prop :=
  ∀ n, P6450327324862503071.a n = A310378 n

end A310378

/-! ## A310378.P6408466245539448419

`2*A008706(n)-A315329(n)`
-/

namespace A310378.P6408466245539448419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315329 n

end

end A310378.P6408466245539448419

namespace A310378

/-- `2*A008706(n)-A315329(n)` -/
def P6408466245539448419.Spec : Prop :=
  ∀ n, P6408466245539448419.a n = A310378 n

end A310378

/-! ## A310378.P4125240930913420948

`A008458(n)+A008574(n)-A315329(n)`
-/

namespace A310378.P4125240930913420948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315329 n)

end

end A310378.P4125240930913420948

namespace A310378

/-- `A008458(n)+A008574(n)-A315329(n)` -/
def P4125240930913420948.Spec : Prop :=
  ∀ n, P4125240930913420948.a n = A310378 n

end A310378

/-! ## A310378.P12076317209373723578

`∑{d}[A008592(n)-A315329(n), A000010(#)]`
-/

namespace A310378.P12076317209373723578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310378.P12076317209373723578

namespace A310378

/-- `∑{d}[A008592(n)-A315329(n), A000010(#)]` -/
def P12076317209373723578.Spec : Prop :=
  ∀ n, P12076317209373723578.a n = A310378 n

end A310378

/-! ## A310378.P7550780222775354239

`A004442(A017281(n)-A315329(n))`
-/

namespace A310378.P7550780222775354239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315329 n).toNat

end

end A310378.P7550780222775354239

namespace A310378

/-- `A004442(A017281(n)-A315329(n))` -/
def P7550780222775354239.Spec : Prop :=
  ∀ n, P7550780222775354239.a n = A310378 n

end A310378

/-! ## A310378.P6034399508199490233

`∏{d}[A008592(n)-A315329(n), A014963(#)]`
-/

namespace A310378.P6034399508199490233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A310378.P6034399508199490233

namespace A310378

/-- `∏{d}[A008592(n)-A315329(n), A014963(#)]` -/
def P6034399508199490233.Spec : Prop :=
  ∀ n, P6034399508199490233.a n = A310378 n

end A310378

/-! ## A310378.P3496218936711365620

`A005843(A008706(n))-A315329(n)`
-/

namespace A310378.P3496218936711365620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315329 n

end

end A310378.P3496218936711365620

namespace A310378

/-- `A005843(A008706(n))-A315329(n)` -/
def P3496218936711365620.Spec : Prop :=
  ∀ n, P3496218936711365620.a n = A310378 n

end A310378

/-! ## A310378.P15514030855777520600

`2*A311804(2*n)-A008458(2*n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A310378

/-- `2*A311804(2*n)-A008458(2*n)` -/
def P15514030855777520600.Spec : Prop :=
  ∀ n, P15514030855777520600.a n = A310378 n

theorem P15514030855777520600.correct : P15514030855777520600.Spec := by
  intro n
  simp only [A310378]

end A310378

/-! ## A310378.P5695261752906372430

`A312472(2*n)-4*n`
-/

namespace A310378.P5695261752906372430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312472 (2 * n) - (4 * n : ℤ)

end

end A310378.P5695261752906372430

namespace A310378

/-- `A312472(2*n)-4*n` -/
def P5695261752906372430.Spec : Prop :=
  ∀ n, P5695261752906372430.a n = A310378 n

end A310378

/-! ## A310378.P16359491016879828288

`2*A008574(2*n)-A315655(2*n)`
-/

namespace A310378.P16359491016879828288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315655 (2 * n)

end

end A310378.P16359491016879828288

namespace A310378

/-- `2*A008574(2*n)-A315655(2*n)` -/
def P16359491016879828288.Spec : Prop :=
  ∀ n, P16359491016879828288.a n = A310378 n

end A310378

/-!
# A310379: Coordination sequence Gal.6.321.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310379, the canonical program `A310379.P6537019467355233572` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310379 has offset 0).

The definition of A310379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310379.P10941032832308466646

`2*A301726(n)-A008458(n)`
-/

namespace A310379.P10941032832308466646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301726 n - A008458 n

end

end A310379.P10941032832308466646

namespace A310379

/-- `2*A301726(n)-A008458(n)` -/
def P10941032832308466646.Spec : Prop :=
  ∀ n, P10941032832308466646.a n = A310379 n

end A310379

/-! ## A310379.P6537019467355233572

`2*A312903(n)-A008574(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310379

/-- `2*A312903(n)-A008574(n)` -/
def P6537019467355233572.Spec : Prop :=
  ∀ n, P6537019467355233572.a n = A310379 n

theorem P6537019467355233572.correct : P6537019467355233572.Spec := by
  intro n
  simp only [A310379]

end A310379

/-! ## A310379.P2732805677697667576

`A151988(A008486(n))+A151988(n)`
-/

namespace A310379.P2732805677697667576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008486 n).toNat + A151988 n

end

end A310379.P2732805677697667576

namespace A310379

/-- `A151988(A008486(n))+A151988(n)` -/
def P2732805677697667576.Spec : Prop :=
  ∀ n, P2732805677697667576.a n = A310379 n

end A310379

/-! ## A310379.P16641882689590039641

`A004275(A312903(n)-A004273(n))`
-/

namespace A310379.P16641882689590039641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312903 n - A004273 n).toNat

end

end A310379.P16641882689590039641

namespace A310379

/-- `A004275(A312903(n)-A004273(n))` -/
def P16641882689590039641.Spec : Prop :=
  ∀ n, P16641882689590039641.a n = A310379 n

end A310379

/-! ## A310379.P16922107664668729790

`A151988(A004277(n)+n)+A151988(n)`
-/

namespace A310379.P16922107664668729790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004277 n + (n : ℤ)).toNat + A151988 n

end

end A310379.P16922107664668729790

namespace A310379

/-- `A151988(A004277(n)+n)+A151988(n)` -/
def P16922107664668729790.Spec : Prop :=
  ∀ n, P16922107664668729790.a n = A310379 n

end A310379

/-! ## A310379.P7286077382946363894

`A151988(A008574(n)-n)+A151988(n)`
-/

namespace A310379.P7286077382946363894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008574 n - (n : ℤ)).toNat + A151988 n

end

end A310379.P7286077382946363894

namespace A310379

/-- `A151988(A008574(n)-n)+A151988(n)` -/
def P7286077382946363894.Spec : Prop :=
  ∀ n, P7286077382946363894.a n = A310379 n

end A310379

/-! ## A310379.P3582677074703123152

`A004273(A312903(n)-n)-A004273(n)`
-/

namespace A310379.P3582677074703123152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312903 n - (n : ℤ)).toNat - A004273 n

end

end A310379.P3582677074703123152

namespace A310379

/-- `A004273(A312903(n)-n)-A004273(n)` -/
def P3582677074703123152.Spec : Prop :=
  ∀ n, P3582677074703123152.a n = A310379 n

end A310379

/-! ## A310379.P5552577794036525944

`A151988(record[A080512(n+1)])+A151988(n)`
-/

namespace A310379.P5552577794036525944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A151988 n

end

end A310379.P5552577794036525944

namespace A310379

/-- `A151988(record[A080512(n+1)])+A151988(n)` -/
def P5552577794036525944.Spec : Prop :=
  ∀ n, P5552577794036525944.a n = A310379 n

end A310379

/-! ## A310379.P17714024662185407134

`A008458(n)-2*A004525(A047263(n+1))`
-/

namespace A310379.P17714024662185407134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004525 (A047263 (n + 1)).toNat

end

end A310379.P17714024662185407134

namespace A310379

/-- `A008458(n)-2*A004525(A047263(n+1))` -/
def P17714024662185407134.Spec : Prop :=
  ∀ n, P17714024662185407134.a n = A310379 n

end A310379

/-! ## A310379.P4089880307203117175

`A008574(n)+A005843(A312903(n)-A008574(n))`
-/

namespace A310379.P4089880307203117175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312903 n - A008574 n).toNat

end

end A310379.P4089880307203117175

namespace A310379

/-- `A008574(n)+A005843(A312903(n)-A008574(n))` -/
def P4089880307203117175.Spec : Prop :=
  ∀ n, P4089880307203117175.a n = A310379 n

end A310379

/-! ## A310379.P5137785439757800951

`A008458(n)-A005843(A008458(n)-A301726(n))`
-/

namespace A310379.P5137785439757800951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A301726 n).toNat

end

end A310379.P5137785439757800951

namespace A310379

/-- `A008458(n)-A005843(A008458(n)-A301726(n))` -/
def P5137785439757800951.Spec : Prop :=
  ∀ n, P5137785439757800951.a n = A310379 n

end A310379

/-! ## A310379.P10191913168179706717

`A315187(n)-2*A134667(A151988(n))`
-/

namespace A310379.P10191913168179706717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - 2 * A134667 (A151988 n).toNat

end

end A310379.P10191913168179706717

namespace A310379

/-- `A315187(n)-2*A134667(A151988(n))` -/
def P10191913168179706717.Spec : Prop :=
  ∀ n, P10191913168179706717.a n = A310379 n

end A310379

/-! ## A310379.P14321959676137921033

`A310446(n)-A002266(n+2)`
-/

namespace A310379.P14321959676137921033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310446 n - A002266 (n + 2)

end

end A310379.P14321959676137921033

namespace A310379

/-- `A310446(n)-A002266(n+2)` -/
def P14321959676137921033.Spec : Prop :=
  ∀ n, P14321959676137921033.a n = A310379 n

end A310379

/-! ## A310379.P11664571991377891027

`abs(10*n-A315327(n))`
-/

namespace A310379.P11664571991377891027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315327 n|

end

end A310379.P11664571991377891027

namespace A310379

/-- `abs(10*n-A315327(n))` -/
def P11664571991377891027.Spec : Prop :=
  ∀ n, P11664571991377891027.a n = A310379 n

end A310379

/-! ## A310379.P11380838913351344751

`2*A008706(n)-A315327(n)`
-/

namespace A310379.P11380838913351344751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315327 n

end

end A310379.P11380838913351344751

namespace A310379

/-- `2*A008706(n)-A315327(n)` -/
def P11380838913351344751.Spec : Prop :=
  ∀ n, P11380838913351344751.a n = A310379 n

end A310379

/-! ## A310379.P16168830439026196618

`A008458(n)+A008574(n)-A315327(n)`
-/

namespace A310379.P16168830439026196618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315327 n)

end

end A310379.P16168830439026196618

namespace A310379

/-- `A008458(n)+A008574(n)-A315327(n)` -/
def P16168830439026196618.Spec : Prop :=
  ∀ n, P16168830439026196618.a n = A310379 n

end A310379

/-! ## A310379.P177967693261827087

`A315327(n)-A005843(A315327(n)-A008706(n))`
-/

namespace A310379.P177967693261827087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315327 n - A005843 (A315327 n - A008706 n).toNat

end

end A310379.P177967693261827087

namespace A310379

/-- `A315327(n)-A005843(A315327(n)-A008706(n))` -/
def P177967693261827087.Spec : Prop :=
  ∀ n, P177967693261827087.a n = A310379 n

end A310379

/-! ## A310379.P8712726656536300817

`A005843(A312903(n))-A008574(n)`
-/

namespace A310379.P8712726656536300817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312903 n).toNat - A008574 n

end

end A310379.P8712726656536300817

namespace A310379

/-- `A005843(A312903(n))-A008574(n)` -/
def P8712726656536300817.Spec : Prop :=
  ∀ n, P8712726656536300817.a n = A310379 n

end A310379

/-! ## A310379.P2637042376294523798

`A004275(A312903(n))-A004275(2*n)`
-/

namespace A310379.P2637042376294523798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312903 n).toNat - A004275 (2 * n)

end

end A310379.P2637042376294523798

namespace A310379

/-- `A004275(A312903(n))-A004275(2*n)` -/
def P2637042376294523798.Spec : Prop :=
  ∀ n, P2637042376294523798.a n = A310379 n

end A310379

/-! ## A310379.P17032804164588564547

`A005843(A008706(n))-A315327(n)`
-/

namespace A310379.P17032804164588564547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315327 n

end

end A310379.P17032804164588564547

namespace A310379

/-- `A005843(A008706(n))-A315327(n)` -/
def P17032804164588564547.Spec : Prop :=
  ∀ n, P17032804164588564547.a n = A310379 n

end A310379

/-!
# A310380: Coordination sequence Gal.6.322.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310380, the canonical program `A310380.P5834693299645205668` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310380 has offset 0).

The definition of A310380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310380.P5834693299645205668

`A315034(n)-A011582(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310380

/-- `A315034(n)-A011582(n)` -/
def P5834693299645205668.Spec : Prop :=
  ∀ n, P5834693299645205668.a n = A310380 n

theorem P5834693299645205668.correct : P5834693299645205668.Spec := by
  intro n
  simp only [A310380]

end A310380

/-! ## A310380.P9732123845403880984

`abs(A008592(n)-A315326(n))`
-/

namespace A310380.P9732123845403880984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315326 n|

end

end A310380.P9732123845403880984

namespace A310380

/-- `abs(A008592(n)-A315326(n))` -/
def P9732123845403880984.Spec : Prop :=
  ∀ n, P9732123845403880984.a n = A310380 n

end A310380

/-! ## A310380.P14035486533631426575

`2*A314133(n)-A008458(n)`
-/

namespace A310380.P14035486533631426575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314133 n - A008458 n

end

end A310380.P14035486533631426575

namespace A310380

/-- `2*A314133(n)-A008458(n)` -/
def P14035486533631426575.Spec : Prop :=
  ∀ n, P14035486533631426575.a n = A310380 n

end A310380

/-! ## A310380.P6431123535239286549

`2*A008706(n)-A315326(n)`
-/

namespace A310380.P6431123535239286549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315326 n

end

end A310380.P6431123535239286549

namespace A310380

/-- `2*A008706(n)-A315326(n)` -/
def P6431123535239286549.Spec : Prop :=
  ∀ n, P6431123535239286549.a n = A310380 n

end A310380

/-! ## A310380.P8660777261886190009

`A103517(A314133(n)-A016777(n))`
-/

namespace A310380.P8660777261886190009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314133 n - A016777 n).toNat

end

end A310380.P8660777261886190009

namespace A310380

/-- `A103517(A314133(n)-A016777(n))` -/
def P8660777261886190009.Spec : Prop :=
  ∀ n, P8660777261886190009.a n = A310380 n

end A310380

/-! ## A310380.P26541058906905553

`A103517(A314133(n)%A016777(n))`
-/

namespace A310380.P26541058906905553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A314133 n) (A016777 n)).toNat

end

end A310380.P26541058906905553

namespace A310380

/-- `A103517(A314133(n)%A016777(n))` -/
def P26541058906905553.Spec : Prop :=
  ∀ n, P26541058906905553.a n = A310380 n

end A310380

/-! ## A310380.P18313786908374699541

`A000038(n)+A008592(n)-A315326(n)`
-/

namespace A310380.P18313786908374699541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A315326 n)

end

end A310380.P18313786908374699541

namespace A310380

/-- `A000038(n)+A008592(n)-A315326(n)` -/
def P18313786908374699541.Spec : Prop :=
  ∀ n, P18313786908374699541.a n = A310380 n

end A310380

/-! ## A310380.P12145799205173023265

`A008458(n)+A008574(n)-A315326(n)`
-/

namespace A310380.P12145799205173023265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315326 n)

end

end A310380.P12145799205173023265

namespace A310380

/-- `A008458(n)+A008574(n)-A315326(n)` -/
def P12145799205173023265.Spec : Prop :=
  ∀ n, P12145799205173023265.a n = A310380 n

end A310380

/-! ## A310380.P15141622210504854648

`A008458(n)-A005843(A008458(n)-A314133(n))`
-/

namespace A310380.P15141622210504854648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314133 n).toNat

end

end A310380.P15141622210504854648

namespace A310380

/-- `A008458(n)-A005843(A008458(n)-A314133(n))` -/
def P15141622210504854648.Spec : Prop :=
  ∀ n, P15141622210504854648.a n = A310380 n

end A310380

/-! ## A310380.P14554993441550399199

`A005843(A008706(n))-A315326(n)`
-/

namespace A310380.P14554993441550399199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315326 n

end

end A310380.P14554993441550399199

namespace A310380

/-- `A005843(A008706(n))-A315326(n)` -/
def P14554993441550399199.Spec : Prop :=
  ∀ n, P14554993441550399199.a n = A310380 n

end A310380

/-! ## A310380.P15057887553544612185

`A005843(A314133(n))-A008458(n)`
-/

namespace A310380.P15057887553544612185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314133 n).toNat - A008458 n

end

end A310380.P15057887553544612185

namespace A310380

/-- `A005843(A314133(n))-A008458(n)` -/
def P15057887553544612185.Spec : Prop :=
  ∀ n, P15057887553544612185.a n = A310380 n

end A310380

/-! ## A310380.P8630005806769592937

`A065502(A008458(n))-A315326(n)`
-/

namespace A310380.P8630005806769592937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315326 n

end

end A310380.P8630005806769592937

namespace A310380

/-- `A065502(A008458(n))-A315326(n)` -/
def P8630005806769592937.Spec : Prop :=
  ∀ n, P8630005806769592937.a n = A310380 n

end A310380

/-!
# A310382: Coordination sequence Gal.6.507.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310382, there is no canonical definition to state claims against.
-/

/-! ## A310382.P1540496812448374896

`A298024(n)+A111900(A008969(2*n+1))`
-/

namespace A310382.P1540496812448374896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A111900 (A008969 (2 * n + 1)).toNat

end

end A310382.P1540496812448374896

/-!
# A310383: Coordination sequence Gal.6.466.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310383, there is no canonical definition to state claims against.
-/

/-! ## A310383.P1146392066518850743

`A312958(n)+A079813(A026534(n+1))`
-/

namespace A310383.P1146392066518850743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312958 n + A079813 (A026534 (n + 1)).toNat

end

end A310383.P1146392066518850743

/-! ## A310383.P11537547166466063954

`A312901(n)+A001222(A051296(n))`
-/

namespace A310383.P11537547166466063954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n + A001222 (A051296 n).toNat

end

end A310383.P11537547166466063954

/-! ## A310383.P330886485501987844

`A312906(n)+A052344(A186996(n))`
-/

namespace A310383.P330886485501987844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312906 n + A052344 (A186996 n).toNat

end

end A310383.P330886485501987844

/-! ## A310383.P908959202480265831

`A312915(n)+A030315(A215576(n))`
-/

namespace A310383.P908959202480265831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312915 n + A030315 (A215576 n).toNat

end

end A310383.P908959202480265831

/-! ## A310383.P17124628319992454884

`A314031(n)-A001222(A126278(n+1))`
-/

namespace A310383.P17124628319992454884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 n - A001222 (A126278 (n + 1)).toNat

end

end A310383.P17124628319992454884

/-!
# A310385: Coordination sequence Gal.5.266.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310385, there is no canonical definition to state claims against.
-/

/-! ## A310385.P6113470858690406813

`2*A313072(n)-A008579(n)`
-/

namespace A310385.P6113470858690406813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313072 n - A008579 n

end

end A310385.P6113470858690406813

/-! ## A310385.P9868135401124864142

`2*A313072(n)-A250122(A005843(n))`
-/

namespace A310385.P9868135401124864142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313072 n - A250122 (A005843 n).toNat

end

end A310385.P9868135401124864142

/-! ## A310385.P2978887149626168805

`A008458(n)+A008579(n)-A315365(n)`
-/

namespace A310385.P2978887149626168805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315365 n)

end

end A310385.P2978887149626168805

/-! ## A310385.P6077679887645928518

`A008579(n)+A315658(n)-A315331(n)`
-/

namespace A310385.P6077679887645928518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + (A315658 n - A315331 n)

end

end A310385.P6077679887645928518

/-! ## A310385.P3175104418427400888

`A008458(n)+A313072(n)-A315564(n)`
-/

namespace A310385.P3175104418427400888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A313072 n - A315564 n)

end

end A310385.P3175104418427400888

/-! ## A310385.P5809319233084151557

`A008579(n)+A315564(n)-A316071(n)`
-/

namespace A310385.P5809319233084151557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + (A315564 n - A316071 n)

end

end A310385.P5809319233084151557

/-! ## A310385.P10193113147900085846

`A005843(A313072(n))-A008579(n)`
-/

namespace A310385.P10193113147900085846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313072 n).toNat - A008579 n

end

end A310385.P10193113147900085846

/-! ## A310385.P9370270734631875308

`A005843(A313072(n))-A250122(A005843(n))`
-/

namespace A310385.P9370270734631875308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313072 n).toNat - A250122 (A005843 n).toNat

end

end A310385.P9370270734631875308

/-!
# A310386: Coordination sequence Gal.6.368.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310386, there is no canonical definition to state claims against.
-/

/-! ## A310386.P3839163843533204145

`xor(A144078(A097941(n+1)), A312542(n))`
-/

namespace A310386.P3839163843533204145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144078 (A097941 (n + 1)).toNat) (A312542 n)

end

end A310386.P3839163843533204145

/-!
# A310387: Coordination sequence Gal.6.588.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310387, there is no canonical definition to state claims against.
-/

/-! ## A310387.P6490401577525384870

`or(A134451(A001815(n)), A298024(n))`
-/

namespace A310387.P6490401577525384870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 (A001815 n).toNat) (A298024 n)

end

end A310387.P6490401577525384870

/-! ## A310387.P501957133326071862

`or(A134451(A100381(n)), A298024(n))`
-/

namespace A310387.P501957133326071862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 (A100381 n).toNat) (A298024 n)

end

end A310387.P501957133326071862

/-! ## A310387.P3419302445914149298

`or(A134451(A001815(n)), A199765(n+1))`
-/

namespace A310387.P3419302445914149298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 (A001815 n).toNat) (A199765 (n + 1))

end

end A310387.P3419302445914149298

/-! ## A310387.P12496756670364454787

`or(A134451(A100381(n)), A199765(n+1))`
-/

namespace A310387.P12496756670364454787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 (A100381 n).toNat) (A199765 (n + 1))

end

end A310387.P12496756670364454787

/-! ## A310387.P10734445708411016924

`or(A001222(A337761(n+1)²), A298024(n))`
-/

namespace A310387.P10734445708411016924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A337761 (n + 1) ^ 2).toNat) (A298024 n)

end

end A310387.P10734445708411016924

/-!
# A310389: Coordination sequence Gal.3.46.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310389, there is no canonical definition to state claims against.
-/

/-! ## A310389.P6748493863090283371

`A310390(n)-A331097(A129953(n))`
-/

namespace A310389.P6748493863090283371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310390 n - A331097 (A129953 n).toNat

end

end A310389.P6748493863090283371

/-! ## A310389.P17351691796437233115

`A310390(A087051(n))`
-/

namespace A310389.P17351691796437233115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310390 (A087051 n).toNat

end

end A310389.P17351691796437233115

/-! ## A310389.P13537591812490826837

`A092524(A310390(n))`
-/

namespace A310389.P13537591812490826837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A310390 n).toNat

end

end A310389.P13537591812490826837

/-! ## A310389.P11024521568919010991

`A310390(A227549(n+1))`
-/

namespace A310389.P11024521568919010991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310390 (A227549 (n + 1)).toNat

end

end A310389.P11024521568919010991

/-! ## A310389.P18357505578746122452

`A310390(A396204(n+1))`
-/

namespace A310389.P18357505578746122452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310390 (A396204 (n + 1)).toNat

end

end A310389.P18357505578746122452

/-!
# A310391: Coordination sequence Gal.3.45.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310391, there is no canonical definition to state claims against.
-/

/-! ## A310391.P5325996239453294165

`2*A313016(n)-A301674(n)`
-/

namespace A310391.P5325996239453294165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313016 n - A301674 n

end

end A310391.P5325996239453294165

/-!
# A310392: Coordination sequence Gal.6.366.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310392, the canonical program `A310392.P9158652043196933514` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310392 has offset 0).

The definition of A310392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310392.P7020448329821990063

`A315191(n)-2*A134667(n)`
-/

namespace A310392.P7020448329821990063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315191 n - 2 * A134667 n

end

end A310392.P7020448329821990063

namespace A310392

/-- `A315191(n)-2*A134667(n)` -/
def P7020448329821990063.Spec : Prop :=
  ∀ n, P7020448329821990063.a n = A310392 n

end A310392

/-! ## A310392.P9158652043196933514

`A136290(n)+A026741(A047513(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310392

/-- `A136290(n)+A026741(A047513(n+1))` -/
def P9158652043196933514.Spec : Prop :=
  ∀ n, P9158652043196933514.a n = A310392 n

theorem P9158652043196933514.correct : P9158652043196933514.Spec := by
  intro n
  simp only [A310392]

end A310392

/-! ## A310392.P17848722344192786450

`A315191(n)+2*A134667(n)*A033999(n)`
-/

namespace A310392.P17848722344192786450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315191 n + 2 * A134667 n * A033999 n

end

end A310392.P17848722344192786450

namespace A310392

/-- `A315191(n)+2*A134667(n)*A033999(n)` -/
def P17848722344192786450.Spec : Prop :=
  ∀ n, P17848722344192786450.a n = A310392 n

end A310392

/-! ## A310392.P10242039938610606014

`A315191(n)+2*A134667(n)*A057428(n)`
-/

namespace A310392.P10242039938610606014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315191 n + 2 * A134667 n * A057428 n

end

end A310392.P10242039938610606014

namespace A310392

/-- `A315191(n)+2*A134667(n)*A057428(n)` -/
def P10242039938610606014.Spec : Prop :=
  ∀ n, P10242039938610606014.a n = A310392 n

end A310392

/-! ## A310392.P8269672477240014584

`A315191(n)+2*A134667(n)*A062157(2*(n+1))`
-/

namespace A310392.P8269672477240014584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315191 n + 2 * A134667 n * A062157 (2 * (n + 1))

end

end A310392.P8269672477240014584

namespace A310392

/-- `A315191(n)+2*A134667(n)*A062157(2*(n+1))` -/
def P8269672477240014584.Spec : Prop :=
  ∀ n, P8269672477240014584.a n = A310392 n

end A310392

/-!
# A310393: Coordination sequence Gal.6.193.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310393, the canonical program `A310393.P12744869705430097846` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310393 has offset 0).

The definition of A310393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310393.P13291548112057052297

`A312926(n)+A004396(Δ[A011848(n)])`
-/

namespace A310393.P13291548112057052297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A004396 (f1 (n + 1) - f1 n).toNat

end

end A310393.P13291548112057052297

namespace A310393

/-- `A312926(n)+A004396(Δ[A011848(n)])` -/
def P13291548112057052297.Spec : Prop :=
  ∀ n, P13291548112057052297.a n = A310393 n

end A310393

/-! ## A310393.P10016070832434172671

`A312926(n)+A004396(n-A004525(n))`
-/

namespace A310393.P10016070832434172671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A310393.P10016070832434172671

namespace A310393

/-- `A312926(n)+A004396(n-A004525(n))` -/
def P10016070832434172671.Spec : Prop :=
  ∀ n, P10016070832434172671.a n = A310393 n

end A310393

/-! ## A310393.P12744869705430097846

`A312933(n)+A004525(n-A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310393

/-- `A312933(n)+A004525(n-A004396(n))` -/
def P12744869705430097846.Spec : Prop :=
  ∀ n, P12744869705430097846.a n = A310393 n

theorem P12744869705430097846.correct : P12744869705430097846.Spec := by
  intro n
  simp only [A310393]

end A310393

/-! ## A310393.P10960667456182633024

`A004396(A004525(n))+A310410(n)-A004525(n)`
-/

namespace A310393.P10960667456182633024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A310410 n - A004525 n)

end

end A310393.P10960667456182633024

namespace A310393

/-- `A004396(A004525(n))+A310410(n)-A004525(n)` -/
def P10960667456182633024.Spec : Prop :=
  ∀ n, P10960667456182633024.a n = A310393 n

theorem P10960667456182633024.correct : P10960667456182633024.Spec := by
  intro n
  simp only [A310393, Nat.add_sub_cancel, A310393.P10960667456182633024.a, A310393.P12744869705430097846.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310410, A310410.P13699142073105713236.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310393

/-! ## A310393.P7547819139016948566

`2*A008706(n)-A315067(n)-A004525(A004396(n))`
-/

namespace A310393.P7547819139016948566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315067 n - A004525 (A004396 n).toNat

end

end A310393.P7547819139016948566

namespace A310393

/-- `2*A008706(n)-A315067(n)-A004525(A004396(n))` -/
def P7547819139016948566.Spec : Prop :=
  ∀ n, P7547819139016948566.a n = A310393 n

end A310393

/-! ## A310393.P7942318881015297647

`A314022(n)-A004525(A004396(n))`
-/

namespace A310393.P7942318881015297647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n - A004525 (A004396 n).toNat

end

end A310393.P7942318881015297647

namespace A310393

/-- `A314022(n)-A004525(A004396(n))` -/
def P7942318881015297647.Spec : Prop :=
  ∀ n, P7942318881015297647.a n = A310393 n

theorem P7942318881015297647.correct : P7942318881015297647.Spec := by
  intro n
  simp only [A310393, Nat.add_sub_cancel, A310393.P7942318881015297647.a, A310393.P12744869705430097846.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312933, A312933.P2044792691388858937.a, A314022, A314022.P5759349393798454835.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310393

/-! ## A310393.P5324010863779846766

`A314028(n)-A004396(A004525(n))`
-/

namespace A310393.P5324010863779846766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314028 n - A004396 (A004525 n).toNat

end

end A310393.P5324010863779846766

namespace A310393

/-- `A314028(n)-A004396(A004525(n))` -/
def P5324010863779846766.Spec : Prop :=
  ∀ n, P5324010863779846766.a n = A310393 n

theorem P5324010863779846766.correct : P5324010863779846766.Spec := by
  intro n
  simp only [A310393, Nat.add_sub_cancel, A310393.P5324010863779846766.a, A310393.P12744869705430097846.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312933, A312933.P2044792691388858937.a, A314028, A314028.P2289077075418662032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310393

/-! ## A310393.P12287750753515318706

`A004525(A004396(n))+A310470(n)-A004396(n)`
-/

namespace A310393.P12287750753515318706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A310470 n - A004396 n)

end

end A310393.P12287750753515318706

namespace A310393

/-- `A004525(A004396(n))+A310470(n)-A004396(n)` -/
def P12287750753515318706.Spec : Prop :=
  ∀ n, P12287750753515318706.a n = A310393 n

theorem P12287750753515318706.correct : P12287750753515318706.Spec := by
  intro n
  simp only [A310393, Nat.add_sub_cancel, A310393.P12287750753515318706.a, A310393.P12744869705430097846.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310470, A310470.P16306028969988817199.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310393

/-! ## A310393.P7637801650008014409

`A314048(n)-A004525(n)`
-/

namespace A310393.P7637801650008014409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314048 n - A004525 n

end

end A310393.P7637801650008014409

namespace A310393

/-- `A314048(n)-A004525(n)` -/
def P7637801650008014409.Spec : Prop :=
  ∀ n, P7637801650008014409.a n = A310393 n

theorem P7637801650008014409.correct : P7637801650008014409.Spec := by
  intro n
  simp only [A310393, Nat.add_sub_cancel, A310393.P7637801650008014409.a, A310393.P12744869705430097846.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312933, A312933.P2044792691388858937.a, A314048, A314048.P6753169348479549005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310393

/-! ## A310393.P13581450309878805658

`A314048(n)-Δ[A054925(n)]`
-/

namespace A310393.P13581450309878805658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314048 n - (f1 (n + 1) - f1 n)

end

end A310393.P13581450309878805658

namespace A310393

/-- `A314048(n)-Δ[A054925(n)]` -/
def P13581450309878805658.Spec : Prop :=
  ∀ n, P13581450309878805658.a n = A310393 n

end A310393

/-! ## A310393.P13071504719845957994

`abs(A008592(n)-A315322(n))`
-/

namespace A310393.P13071504719845957994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315322 n|

end

end A310393.P13071504719845957994

namespace A310393

/-- `abs(A008592(n)-A315322(n))` -/
def P13071504719845957994.Spec : Prop :=
  ∀ n, P13071504719845957994.a n = A310393 n

end A310393

/-! ## A310393.P18303863814843998342

`2*A008706(n)-A315322(n)`
-/

namespace A310393.P18303863814843998342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315322 n

end

end A310393.P18303863814843998342

namespace A310393

/-- `2*A008706(n)-A315322(n)` -/
def P18303863814843998342.Spec : Prop :=
  ∀ n, P18303863814843998342.a n = A310393 n

end A310393

/-! ## A310393.P7356005068625111476

`A008458(n)+A008574(n)-A315322(n)`
-/

namespace A310393.P7356005068625111476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315322 n)

end

end A310393.P7356005068625111476

namespace A310393

/-- `A008458(n)+A008574(n)-A315322(n)` -/
def P7356005068625111476.Spec : Prop :=
  ∀ n, P7356005068625111476.a n = A310393 n

end A310393

/-! ## A310393.P4017522043358299609

`A314142(n)-A004396(n)`
-/

namespace A310393.P4017522043358299609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n - A004396 n

end

end A310393.P4017522043358299609

namespace A310393

/-- `A314142(n)-A004396(n)` -/
def P4017522043358299609.Spec : Prop :=
  ∀ n, P4017522043358299609.a n = A310393 n

theorem P4017522043358299609.correct : P4017522043358299609.Spec := by
  intro n
  simp only [A310393, Nat.add_sub_cancel, A310393.P4017522043358299609.a, A310393.P12744869705430097846.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312933, A312933.P2044792691388858937.a, A314142, A314142.P8377752906736418581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310393

/-! ## A310393.P17602329482738353886

`A314142(n)-A002264(2*n+1)`
-/

namespace A310393.P17602329482738353886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n - A002264 (2 * n + 1)

end

end A310393.P17602329482738353886

namespace A310393

/-- `A314142(n)-A002264(2*n+1)` -/
def P17602329482738353886.Spec : Prop :=
  ∀ n, P17602329482738353886.a n = A310393 n

theorem P17602329482738353886.correct : P17602329482738353886.Spec := by
  intro n
  simp only [A310393, Nat.add_sub_cancel, A310393.P17602329482738353886.a, A310393.P12744869705430097846.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312933, A312933.P2044792691388858937.a, A314142, A314142.P8377752906736418581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310393

/-! ## A310393.P14892896104313298237

`A314142(n)-A004525(A004773(n))`
-/

namespace A310393.P14892896104313298237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n - A004525 (A004773 n).toNat

end

end A310393.P14892896104313298237

namespace A310393

/-- `A314142(n)-A004525(A004773(n))` -/
def P14892896104313298237.Spec : Prop :=
  ∀ n, P14892896104313298237.a n = A310393 n

end A310393

/-! ## A310393.P181019258523503492

`A315700(n)-(A004396(n)+A004396(A004525(n)))`
-/

namespace A310393.P181019258523503492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - (A004396 n + A004396 (A004525 n).toNat)

end

end A310393.P181019258523503492

namespace A310393

/-- `A315700(n)-(A004396(n)+A004396(A004525(n)))` -/
def P181019258523503492.Spec : Prop :=
  ∀ n, P181019258523503492.a n = A310393 n

end A310393

/-! ## A310393.P17247997095705361713

`A315649(n)-(A004525(A004396(n))+A004525(n))`
-/

namespace A310393.P17247997095705361713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315649 n - (A004525 (A004396 n).toNat + A004525 n)

end

end A310393.P17247997095705361713

namespace A310393

/-- `A315649(n)-(A004525(A004396(n))+A004525(n))` -/
def P17247997095705361713.Spec : Prop :=
  ∀ n, P17247997095705361713.a n = A310393 n

theorem P17247997095705361713.correct : P17247997095705361713.Spec := by
  intro n
  simp only [A310393, Nat.add_sub_cancel, A310393.P17247997095705361713.a, A310393.P12744869705430097846.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312933, A312933.P2044792691388858937.a, A315649, A315649.P5476829177456958284.a, A314022, A314022.P5759349393798454835.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310393

/-! ## A310393.P7786589006489003641

`A004525(A310472(2*n))-A004525(n)`
-/

namespace A310393.P7786589006489003641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310472 (2 * n)).toNat - A004525 n

end

end A310393.P7786589006489003641

namespace A310393

/-- `A004525(A310472(2*n))-A004525(n)` -/
def P7786589006489003641.Spec : Prop :=
  ∀ n, P7786589006489003641.a n = A310393 n

end A310393

/-! ## A310393.P16037609743060800628

`A004525(A310511(2*n))-A004525(n)`
-/

namespace A310393.P16037609743060800628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310511 (2 * n)).toNat - A004525 n

end

end A310393.P16037609743060800628

namespace A310393

/-- `A004525(A310511(2*n))-A004525(n)` -/
def P16037609743060800628.Spec : Prop :=
  ∀ n, P16037609743060800628.a n = A310393 n

end A310393

/-!
# A310394: Coordination sequence Gal.6.568.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310394, there is no canonical definition to state claims against.
-/

/-! ## A310394.P13956966883163841614

`A310398(n)-A288372(A288390(n))`
-/

namespace A310394.P13956966883163841614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A288372 (A288390 n).toNat

end

end A310394.P13956966883163841614

/-! ## A310394.P16172062282801633322

`A310398(n)-A091447(A269075(n+1))`
-/

namespace A310394.P16172062282801633322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A091447 (A269075 (n + 1)).toNat

end

end A310394.P16172062282801633322

/-! ## A310394.P407615159864530799

`A310398(n)-A025466(A078057(n))`
-/

namespace A310394.P407615159864530799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A025466 (A078057 n).toNat

end

end A310394.P407615159864530799

/-! ## A310394.P14869306349888201752

`A310398(n)-A267636(A029895(n))`
-/

namespace A310394.P14869306349888201752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A267636 (A029895 n).toNat

end

end A310394.P14869306349888201752

/-! ## A310394.P10442013924142633834

`A005117(3*n+1)-A357448(28*2^n-15)`
-/

namespace A310394.P10442013924142633834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A357448 (28 * 2 ^ n - 15)

end

end A310394.P10442013924142633834

/-!
# A310395: Coordination sequence Gal.6.548.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310395, there is no canonical definition to state claims against.
-/

/-! ## A310395.P8039590189098129877

`A301710(n)-A000120(A183112(n))`
-/

namespace A310395.P8039590189098129877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A000120 (A183112 n).toNat

end

end A310395.P8039590189098129877

/-! ## A310395.P17490044428927273158

`A310416(n)-A001222(A064184(n))`
-/

namespace A310395.P17490044428927273158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310416 n - A001222 (A064184 n).toNat

end

end A310395.P17490044428927273158

/-! ## A310395.P15787899201866936824

`xor(A001221(A044432(2*n)), A102700(2*n+1))`
-/

namespace A310395.P15787899201866936824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A044432 (2 * n)).toNat) (A102700 (2 * n + 1))

end

end A310395.P15787899201866936824

/-!
# A310396: Coordination sequence Gal.6.320.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310396, the canonical program `A310396.P16584741270594359869` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310396 has offset 0).

The definition of A310396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310396.P9068787717911383125

`abs(A008592(n)-A315321(n))`
-/

namespace A310396.P9068787717911383125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315321 n|

end

end A310396.P9068787717911383125

namespace A310396

/-- `abs(A008592(n)-A315321(n))` -/
def P9068787717911383125.Spec : Prop :=
  ∀ n, P9068787717911383125.a n = A310396 n

end A310396

/-! ## A310396.P14351623668166243473

`2*A008706(n)-A315321(n)`
-/

namespace A310396.P14351623668166243473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315321 n

end

end A310396.P14351623668166243473

namespace A310396

/-- `2*A008706(n)-A315321(n)` -/
def P14351623668166243473.Spec : Prop :=
  ∀ n, P14351623668166243473.a n = A310396 n

end A310396

/-! ## A310396.P16173806076644617254

`A135042(2*n+1)-A315321(n)`
-/

namespace A310396.P16173806076644617254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315321 n

end

end A310396.P16173806076644617254

namespace A310396

/-- `A135042(2*n+1)-A315321(n)` -/
def P16173806076644617254.Spec : Prop :=
  ∀ n, P16173806076644617254.a n = A310396 n

end A310396

/-! ## A310396.P7100884513243997381

`A184418(A008574(n))-A315321(n)`
-/

namespace A310396.P7100884513243997381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315321 n

end

end A310396.P7100884513243997381

namespace A310396

/-- `A184418(A008574(n))-A315321(n)` -/
def P7100884513243997381.Spec : Prop :=
  ∀ n, P7100884513243997381.a n = A310396 n

end A310396

/-! ## A310396.P12882699085894748159

`A008458(n)+A008574(n)-A315321(n)`
-/

namespace A310396.P12882699085894748159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315321 n)

end

end A310396.P12882699085894748159

namespace A310396

/-- `A008458(n)+A008574(n)-A315321(n)` -/
def P12882699085894748159.Spec : Prop :=
  ∀ n, P12882699085894748159.a n = A310396 n

end A310396

/-! ## A310396.P6639235498012055574

`A315321(n)-A005843(A315321(n)-A008706(n))`
-/

namespace A310396.P6639235498012055574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315321 n - A005843 (A315321 n - A008706 n).toNat

end

end A310396.P6639235498012055574

namespace A310396

/-- `A315321(n)-A005843(A315321(n)-A008706(n))` -/
def P6639235498012055574.Spec : Prop :=
  ∀ n, P6639235498012055574.a n = A310396 n

end A310396

/-! ## A310396.P16584741270594359869

`A130824(n)+A092038(A314157(n)-A130824(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A310396

/-- `A130824(n)+A092038(A314157(n)-A130824(n))` -/
def P16584741270594359869.Spec : Prop :=
  ∀ n, P16584741270594359869.a n = A310396 n

theorem P16584741270594359869.correct : P16584741270594359869.Spec := by
  intro n
  simp only [A310396]

end A310396

/-! ## A310396.P2195507897062057247

`A005843(A008706(n))-A315321(n)`
-/

namespace A310396.P2195507897062057247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315321 n

end

end A310396.P2195507897062057247

namespace A310396

/-- `A005843(A008706(n))-A315321(n)` -/
def P2195507897062057247.Spec : Prop :=
  ∀ n, P2195507897062057247.a n = A310396 n

end A310396

/-! ## A310396.P11242251806382403460

`A065502(A008458(n))-A315321(n)`
-/

namespace A310396.P11242251806382403460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315321 n

end

end A310396.P11242251806382403460

namespace A310396

/-- `A065502(A008458(n))-A315321(n)` -/
def P11242251806382403460.Spec : Prop :=
  ∀ n, P11242251806382403460.a n = A310396 n

end A310396

/-! ## A310396.P13742438782078696778

`A312068(2*n)-4*n`
-/

namespace A310396.P13742438782078696778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 (2 * n) - (4 * n : ℤ)

end

end A310396.P13742438782078696778

namespace A310396

/-- `A312068(2*n)-4*n` -/
def P13742438782078696778.Spec : Prop :=
  ∀ n, P13742438782078696778.a n = A310396 n

end A310396

/-! ## A310396.P449302178448243161

`lcm(2, A312656(2*n))/2`
-/

namespace A310396.P449302178448243161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A312656 (2 * n)) : ℚ) / 2

end

end A310396.P449302178448243161

namespace A310396

/-- `lcm(2, A312656(2*n))/2` -/
def P449302178448243161.Spec : Prop :=
  ∀ n, P449302178448243161.a n = (A310396 n : ℚ)

end A310396

/-! ## A310396.P5825939562016058345

`A312656(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A310396.P5825939562016058345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312656 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A310396.P5825939562016058345

namespace A310396

/-- `A312656(2*n)/(4*n+2-A004277(2*n))` -/
def P5825939562016058345.Spec : Prop :=
  ∀ n, P5825939562016058345.a n = (A310396 n : ℚ)

end A310396

/-! ## A310396.P6717170509822618808

`2*A008574(2*n)-A315692(2*n)`
-/

namespace A310396.P6717170509822618808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315692 (2 * n)

end

end A310396.P6717170509822618808

namespace A310396

/-- `2*A008574(2*n)-A315692(2*n)` -/
def P6717170509822618808.Spec : Prop :=
  ∀ n, P6717170509822618808.a n = A310396 n

end A310396

/-! ## A310396.P14240405161198181063

`A004525(A312656(2*n))`
-/

namespace A310396.P14240405161198181063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312656 (2 * n)).toNat

end

end A310396.P14240405161198181063

namespace A310396

/-- `A004525(A312656(2*n))` -/
def P14240405161198181063.Spec : Prop :=
  ∀ n, P14240405161198181063.a n = A310396 n

end A310396

/-! ## A310396.P14861870794654744963

`A004526(A312656(2*n)+1)`
-/

namespace A310396.P14861870794654744963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312656 (2 * n) + 1).toNat

end

end A310396.P14861870794654744963

namespace A310396

/-- `A004526(A312656(2*n)+1)` -/
def P14861870794654744963.Spec : Prop :=
  ∀ n, P14861870794654744963.a n = A310396 n

end A310396

/-! ## A310396.P9878906977040687878

`A092038(A314157(n)+A130824(n))`
-/

namespace A310396.P9878906977040687878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A314157 n + A130824 n).toNat

end

end A310396.P9878906977040687878

namespace A310396

/-- `A092038(A314157(n)+A130824(n))` -/
def P9878906977040687878.Spec : Prop :=
  ∀ n, P9878906977040687878.a n = A310396 n

end A310396

/-!
# A310397: Coordination sequence Gal.4.76.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310397, the canonical program `A310397.P3562784380377388061` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310397 has offset 0).

The definition of A310397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310397.P15650547621319645465

`A315020(n)-A075553(n)`
-/

namespace A310397.P15650547621319645465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n - A075553 n

end

end A310397.P15650547621319645465

namespace A310397

/-- `A315020(n)-A075553(n)` -/
def P15650547621319645465.Spec : Prop :=
  ∀ n, P15650547621319645465.a n = A310397 n

end A310397

/-! ## A310397.P3562784380377388061

`A312943(n)+A004525(n-A004525(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310397

/-- `A312943(n)+A004525(n-A004525(n))` -/
def P3562784380377388061.Spec : Prop :=
  ∀ n, P3562784380377388061.a n = A310397 n

theorem P3562784380377388061.correct : P3562784380377388061.Spec := by
  intro n
  simp only [A310397]

end A310397

/-! ## A310397.P17164321891278855732

`A004525(n)+A310370(n)-A004525(A004525(n))`
-/

namespace A310397.P17164321891278855732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310370 n - A004525 (A004525 n).toNat)

end

end A310397.P17164321891278855732

namespace A310397

/-- `A004525(n)+A310370(n)-A004525(A004525(n))` -/
def P17164321891278855732.Spec : Prop :=
  ∀ n, P17164321891278855732.a n = A310397 n

end A310397

/-! ## A310397.P16298513720212903484

`A313685(n)-A188510(n)`
-/

namespace A310397.P16298513720212903484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n - A188510 n

end

end A310397.P16298513720212903484

namespace A310397

/-- `A313685(n)-A188510(n)` -/
def P16298513720212903484.Spec : Prop :=
  ∀ n, P16298513720212903484.a n = A310397 n

end A310397

/-! ## A310397.P15128245212133568156

`A314026(n)-A004525(A004525(n))`
-/

namespace A310397.P15128245212133568156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - A004525 (A004525 n).toNat

end

end A310397.P15128245212133568156

namespace A310397

/-- `A314026(n)-A004525(A004525(n))` -/
def P15128245212133568156.Spec : Prop :=
  ∀ n, P15128245212133568156.a n = A310397 n

theorem P15128245212133568156.correct : P15128245212133568156.Spec := by
  intro n
  simp only [A310397, Nat.add_sub_cancel, A310397.P15128245212133568156.a, A310397.P3562784380377388061.a, A004525, A004525.P4158271949796742323.a, A312943, A312943.P15149972139158582154.a, A314026, A314026.P8836136784884511113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310397

/-! ## A310397.P11169206618409032626

`A310458(n)-Δ[A011861(n)]`
-/

namespace A310397.P11169206618409032626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n - (f1 (n + 1) - f1 n)

end

end A310397.P11169206618409032626

namespace A310397

/-- `A310458(n)-Δ[A011861(n)]` -/
def P11169206618409032626.Spec : Prop :=
  ∀ n, P11169206618409032626.a n = A310397 n

end A310397

/-! ## A310397.P13518016298146041993

`abs(A008592(n)-A315320(n))`
-/

namespace A310397.P13518016298146041993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315320 n|

end

end A310397.P13518016298146041993

namespace A310397

/-- `abs(A008592(n)-A315320(n))` -/
def P13518016298146041993.Spec : Prop :=
  ∀ n, P13518016298146041993.a n = A310397 n

end A310397

/-! ## A310397.P15571723362532225941

`2*A008706(n)-A315320(n)`
-/

namespace A310397.P15571723362532225941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315320 n

end

end A310397.P15571723362532225941

namespace A310397

/-- `2*A008706(n)-A315320(n)` -/
def P15571723362532225941.Spec : Prop :=
  ∀ n, P15571723362532225941.a n = A310397 n

end A310397

/-! ## A310397.P10423400938001300675

`A008458(n)+A008574(n)-A315320(n)`
-/

namespace A310397.P10423400938001300675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315320 n)

end

end A310397.P10423400938001300675

namespace A310397

/-- `A008458(n)+A008574(n)-A315320(n)` -/
def P10423400938001300675.Spec : Prop :=
  ∀ n, P10423400938001300675.a n = A310397 n

end A310397

/-! ## A310397.P1538376096917968476

`A314056(n)-A004525(n)`
-/

namespace A310397.P1538376096917968476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n - A004525 n

end

end A310397.P1538376096917968476

namespace A310397

/-- `A314056(n)-A004525(n)` -/
def P1538376096917968476.Spec : Prop :=
  ∀ n, P1538376096917968476.a n = A310397 n

theorem P1538376096917968476.correct : P1538376096917968476.Spec := by
  intro n
  simp only [A310397, Nat.add_sub_cancel, A310397.P1538376096917968476.a, A310397.P3562784380377388061.a, A004525, A004525.P4158271949796742323.a, A312943, A312943.P15149972139158582154.a, A314056, A314056.P914995745377123050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310397

/-! ## A310397.P12162020643297200857

`A314161(n)-A004525(A004525(n)+n)`
-/

namespace A310397.P12162020643297200857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A310397.P12162020643297200857

namespace A310397

/-- `A314161(n)-A004525(A004525(n)+n)` -/
def P12162020643297200857.Spec : Prop :=
  ∀ n, P12162020643297200857.a n = A310397 n

end A310397

/-! ## A310397.P4997156006824080536

`A301710(n)-A004525(A004525(3*n))`
-/

namespace A310397.P4997156006824080536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A004525 (A004525 (3 * n)).toNat

end

end A310397.P4997156006824080536

namespace A310397

/-- `A301710(n)-A004525(A004525(3*n))` -/
def P4997156006824080536.Spec : Prop :=
  ∀ n, P4997156006824080536.a n = A310397 n

end A310397

/-! ## A310397.P527842163382225996

`A315651(n)-(A004525(n)+A004525(A004525(n)))`
-/

namespace A310397.P527842163382225996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315651 n - (A004525 n + A004525 (A004525 n).toNat)

end

end A310397.P527842163382225996

namespace A310397

/-- `A315651(n)-(A004525(n)+A004525(A004525(n)))` -/
def P527842163382225996.Spec : Prop :=
  ∀ n, P527842163382225996.a n = A310397 n

theorem P527842163382225996.correct : P527842163382225996.Spec := by
  intro n
  simp only [A310397, Nat.add_sub_cancel, A310397.P527842163382225996.a, A310397.P3562784380377388061.a, A004525, A004525.P4158271949796742323.a, A312943, A312943.P15149972139158582154.a, A315651, A315651.P9904955794810219643.a, A314026, A314026.P8836136784884511113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310397

/-! ## A310397.P15335993055420942893

`A004525(A314112(2*n))-A004525(n)`
-/

namespace A310397.P15335993055420942893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314112 (2 * n)).toNat - A004525 n

end

end A310397.P15335993055420942893

namespace A310397

/-- `A004525(A314112(2*n))-A004525(n)` -/
def P15335993055420942893.Spec : Prop :=
  ∀ n, P15335993055420942893.a n = A310397 n

end A310397

/-! ## A310397.P15379306682565397263

`A004525(A315469(2*n))-A004525(n)`
-/

namespace A310397.P15379306682565397263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315469 (2 * n)).toNat - A004525 n

end

end A310397.P15379306682565397263

namespace A310397

/-- `A004525(A315469(2*n))-A004525(n)` -/
def P15379306682565397263.Spec : Prop :=
  ∀ n, P15379306682565397263.a n = A310397 n

end A310397

/-!
# A310398: Coordination sequence Gal.5.136.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310398, the canonical program `A310398.P3945335365291150677` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310398 has offset 0).

The definition of A310398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310398.P3945335365291150677

`A312903(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310398

/-- `A312903(n)+Δ[A011858(n)]` -/
def P3945335365291150677.Spec : Prop :=
  ∀ n, P3945335365291150677.a n = A310398 n

theorem P3945335365291150677.correct : P3945335365291150677.Spec := by
  intro n
  simp only [A310398]

end A310398

/-! ## A310398.P10923869064249795603

`A151988(n)+A151988(A311440(n)-A151988(n))`
-/

namespace A310398.P10923869064249795603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A151988 (A311440 n - A151988 n).toNat

end

end A310398.P10923869064249795603

namespace A310398

/-- `A151988(n)+A151988(A311440(n)-A151988(n))` -/
def P10923869064249795603.Spec : Prop :=
  ∀ n, P10923869064249795603.a n = A310398 n

end A310398

/-! ## A310398.P10259482223077176210

`A312979(n)+A014019(n+8)`
-/

namespace A310398.P10259482223077176210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n + A014019 (n + 8)

end

end A310398.P10259482223077176210

namespace A310398

/-- `A312979(n)+A014019(n+8)` -/
def P10259482223077176210.Spec : Prop :=
  ∀ n, P10259482223077176210.a n = A310398 n

end A310398

/-! ## A310398.P6287818814740147936

`A314020(n)-A330025(n)`
-/

namespace A310398.P6287818814740147936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314020 n - A330025 n

end

end A310398.P6287818814740147936

namespace A310398

/-- `A314020(n)-A330025(n)` -/
def P6287818814740147936.Spec : Prop :=
  ∀ n, P6287818814740147936.a n = A310398 n

theorem P6287818814740147936.correct : P6287818814740147936.Spec := by
  intro n
  simp only [A310398, Nat.add_sub_cancel, A310398.P6287818814740147936.a, A310398.P3945335365291150677.f1, A310398.P3945335365291150677.a, A011858, A011858.P16234308487928340219.a, A312903, A312903.P5186887365123370171.a, A314020, A314020.P15849566854326766126.f1, A314020.P15849566854326766126.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P10594584635942187014.a, A311384, A311384.P2354907441128154650.a, A313476, A313476.P1237108097731061015.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A310398

/-! ## A310398.P10429620960695577545

`abs(A008592(n)-A315319(n))`
-/

namespace A310398.P10429620960695577545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315319 n|

end

end A310398.P10429620960695577545

namespace A310398

/-- `abs(A008592(n)-A315319(n))` -/
def P10429620960695577545.Spec : Prop :=
  ∀ n, P10429620960695577545.a n = A310398 n

end A310398

/-! ## A310398.P15284448566984509432

`2*A008706(n)-A315319(n)`
-/

namespace A310398.P15284448566984509432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315319 n

end

end A310398.P15284448566984509432

namespace A310398

/-- `2*A008706(n)-A315319(n)` -/
def P15284448566984509432.Spec : Prop :=
  ∀ n, P15284448566984509432.a n = A310398 n

end A310398

/-! ## A310398.P4346917802299891579

`A008458(n)+A008574(n)-A315319(n)`
-/

namespace A310398.P4346917802299891579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315319 n)

end

end A310398.P4346917802299891579

namespace A310398

/-- `A008458(n)+A008574(n)-A315319(n)` -/
def P4346917802299891579.Spec : Prop :=
  ∀ n, P4346917802299891579.a n = A310398 n

end A310398

/-! ## A310398.P2543598192723931755

`A315319(n)-A005843(A315319(n)-A008706(n))`
-/

namespace A310398.P2543598192723931755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315319 n - A005843 (A315319 n - A008706 n).toNat

end

end A310398.P2543598192723931755

namespace A310398

/-- `A315319(n)-A005843(A315319(n)-A008706(n))` -/
def P2543598192723931755.Spec : Prop :=
  ∀ n, P2543598192723931755.a n = A310398 n

end A310398

/-! ## A310398.P5164205881117786444

`A314059(n)-A004525(n)`
-/

namespace A310398.P5164205881117786444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314059 n - A004525 n

end

end A310398.P5164205881117786444

namespace A310398

/-- `A314059(n)-A004525(n)` -/
def P5164205881117786444.Spec : Prop :=
  ∀ n, P5164205881117786444.a n = A310398 n

theorem P5164205881117786444.correct : P5164205881117786444.Spec := by
  intro n
  simp only [A310398, Nat.add_sub_cancel, A310398.P5164205881117786444.a, A310398.P3945335365291150677.f1, A310398.P3945335365291150677.a, A004525, A004525.P4158271949796742323.a, A011858, A011858.P16234308487928340219.a, A312903, A312903.P5186887365123370171.a, A314059, A314059.P15361203540330467185.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P16976327817596103196.a, A008486, A008486.P11623131867527198563.a, A011558, A011558.P10594584635942187014.a, A047363, A047363.P7486090247302327639.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A310398

/-! ## A310398.P5349271850975464303

`A314059(n)-Δ[A054925(n)]`
-/

namespace A310398.P5349271850975464303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314059 n - (f1 (n + 1) - f1 n)

end

end A310398.P5349271850975464303

namespace A310398

/-- `A314059(n)-Δ[A054925(n)]` -/
def P5349271850975464303.Spec : Prop :=
  ∀ n, P5349271850975464303.a n = A310398 n

end A310398

/-! ## A310398.P373353208194712483

`A008574(n)+A314220(n)-A250120(n)`
-/

namespace A310398.P373353208194712483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314220 n - A250120 n)

end

end A310398.P373353208194712483

namespace A310398

/-- `A008574(n)+A314220(n)-A250120(n)` -/
def P373353208194712483.Spec : Prop :=
  ∀ n, P373353208194712483.a n = A310398 n

end A310398

/-! ## A310398.P8984646068101540548

`A005843(A008706(n))-A315319(n)`
-/

namespace A310398.P8984646068101540548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315319 n

end

end A310398.P8984646068101540548

namespace A310398

/-- `A005843(A008706(n))-A315319(n)` -/
def P8984646068101540548.Spec : Prop :=
  ∀ n, P8984646068101540548.a n = A310398 n

end A310398

/-! ## A310398.P5652650414017025836

`A314164(n)-A004396(A151988(n))`
-/

namespace A310398.P5652650414017025836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n - A004396 (A151988 n).toNat

end

end A310398.P5652650414017025836

namespace A310398

/-- `A314164(n)-A004396(A151988(n))` -/
def P5652650414017025836.Spec : Prop :=
  ∀ n, P5652650414017025836.a n = A310398 n

end A310398

/-!
# A310399: Coordination sequence Gal.5.204.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310399, there is no canonical definition to state claims against.
-/

/-! ## A310399.P3448968967958734615

`A219529(n)+A311855(n)-A250120(n)`
-/

namespace A310399.P3448968967958734615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + (A311855 n - A250120 n)

end

end A310399.P3448968967958734615

/-! ## A310399.P16997197144913186414

`A310398(n)+A219463(A051920(n)-1)`
-/

namespace A310399.P16997197144913186414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A219463 (A051920 n - 1).toNat

end

end A310399.P16997197144913186414

/-! ## A310399.P9307315102105825822

`A310398(n)+A107846(A222380(n))`
-/

namespace A310399.P9307315102105825822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A107846 (A222380 n).toNat

end

end A310399.P9307315102105825822

/-! ## A310399.P15705958647645253279

`A310398(n)+A288426(A287199(n))`
-/

namespace A310399.P15705958647645253279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A288426 (A287199 n).toNat

end

end A310399.P15705958647645253279

/-! ## A310399.P1329172723133570478

`A310398(n)+A100910(A296254(n))`
-/

namespace A310399.P1329172723133570478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A100910 (A296254 n).toNat

end

end A310399.P1329172723133570478

