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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A371100: Array A read by upward antidiagonals in which the entry A(n,k) in row n and column k is defined by A(n, k) = 4^n*(6*k - 3 - 2*(-1)^n) + (4^n - 1)/3, n,k >= 1.

The programs for A371100, there is no canonical definition to state claims against.
-/

/-! ## A371100.P12565998236150871574

`A371094(A257852(n+1))`
-/

namespace A371100.P12565998236150871574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (A257852 (n + 1)).toNat

end

end A371100.P12565998236150871574

/-! ## A371100.P6797497371063187766

`A371094(A258415(comp[∑[n]])-1)`
-/

namespace A371100.P6797497371063187766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (A258415 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1).toNat

end

end A371100.P6797497371063187766

/-! ## A371100.P8708354503444951754

`A371094((A257499(comp[C(n, 2)])-1)/2)`
-/

namespace A371100.P8708354503444951754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (SequenceMachineLib.roundAway ((A257499 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1 : ℚ) / 2)).toNat

end

end A371100.P8708354503444951754

/-! ## A371100.P17985055078786202192

`A371094(A257791(n+1)-A257499(n+1))`
-/

namespace A371100.P17985055078786202192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (A257791 (n + 1) - A257499 (n + 1)).toNat

end

end A371100.P17985055078786202192

/-! ## A371100.P14133288929596637938

`A371094(A257791(n+1)-(2*A258415(n+1)-1))`
-/

namespace A371100.P14133288929596637938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (A257791 (n + 1) - (2 * A258415 (n + 1) - 1)).toNat

end

end A371100.P14133288929596637938

/-! ## A371100.P10043333052516358571

`A371094(A000265(A257852(A371092(2*n))))`
-/

namespace A371100.P10043333052516358571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (A000265 (A257852 (A371092 (2 * n)).toNat).toNat).toNat

end

end A371100.P10043333052516358571

/-!
# A371101: Array A read by upward antidiagonals in which the entry A(n,k) = A371092(A371100(n, k)), n,k >= 1.

The programs for A371101, there is no canonical definition to state claims against.
-/

/-! ## A371101.P1412822212954914965

`A371092(A371100(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371101.P1412822212954914965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A371100 (n + 1)).toNat

end

end A371101.P1412822212954914965

/-! ## A371101.P16932173156907733905

`A371092(A371094(A257852(n+1)))`
-/

namespace A371101.P16932173156907733905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A371094 (A257852 (n + 1)).toNat).toNat

end

end A371101.P16932173156907733905

/-! ## A371101.P16095807932770515235

`A371092(A000265(A371100(A371092(2*n))))`
-/

namespace A371101.P16095807932770515235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A000265 (A371100 (A371092 (2 * n)).toNat).toNat).toNat

end

end A371101.P16095807932770515235

/-! ## A371101.P11524372544431996420

`A232451(A163357(n)*A309973(n))`
-/

namespace A371101.P11524372544431996420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232451 (A163357 n * A309973 n).toNat

end

end A371101.P11524372544431996420

/-! ## A371101.P1679523393712044496

`gcd(A082171(n), A338907(A156576(n+1)))`
-/

namespace A371101.P1679523393712044496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082171 n) (A338907 (A156576 (n + 1)).toNat)

end

end A371101.P1679523393712044496

/-!
# A371105: Ternary numbers that are concatenated runs A(1)B(1)C(1)A(2)B(2)C(2)...A(k)B(k)C(k), where A(i) is a run of 1's, B(i) a run of 0's, and C(i) a run of 2's, for i = 1..k.

The programs for A371105, there is no canonical definition to state claims against.
-/

/-! ## A371105.P12370667454649838528

`A007089(A371106(n+1))`
-/

namespace A371105.P12370667454649838528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A371106 (n + 1)).toNat

end

end A371105.P12370667454649838528

/-! ## A371105.P4416350371820008200

`A371055(A004907(n+1)+1)`
-/

namespace A371105.P4416350371820008200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371055 (A004907 (n + 1) + 1).toNat

end

end A371105.P4416350371820008200

/-! ## A371105.P2954647565881513783

`A371055(A004918(n+1)+1)`
-/

namespace A371105.P2954647565881513783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371055 (A004918 (n + 1) + 1).toNat

end

end A371105.P2954647565881513783

/-! ## A371105.P10965051331075964419

`∩[A134948(n+1), A371055(n+1)]`
-/

namespace A371105.P10965051331075964419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371105.P10965051331075964419

/-! ## A371105.P2012234714607052612

`A371055(A004896(n+2))`
-/

namespace A371105.P2012234714607052612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371055 (A004896 (n + 2)).toNat

end

end A371105.P2012234714607052612

/-!
# A371106: Integers whose ternary representation consists of concatenated runs A(1)B(1)C(1)A(2)B(2)C(2)...A(k)B(k)C(k), where A(i) is a run of 1's, B(i) a run of 0's, and C(i) a run of 2's, for i = 1..k.

The programs for A371106, there is no canonical definition to state claims against.
-/

/-! ## A371106.P9978704981660885980

`∩[A297251(n+1), A037080(n)]`
-/

namespace A371106.P9978704981660885980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371106.P9978704981660885980

/-! ## A371106.P16735660254695073307

`A115060(A371054(n+1))`
-/

namespace A371106.P16735660254695073307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A371054 (n + 1)).toNat

end

end A371106.P16735660254695073307

/-! ## A371106.P15506188626549017566

`A371054(n+1)%A351689(3*n+5)`
-/

namespace A371106.P15506188626549017566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371054 (n + 1)) (A351689 (3 * n + 5))

end

end A371106.P15506188626549017566

/-! ## A371106.P1473276874466714218

`A371084(A003418(n))+A371054(n+1)`
-/

namespace A371106.P1473276874466714218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371084 (A003418 n).toNat + A371054 (n + 1)

end

end A371106.P1473276874466714218

/-! ## A371106.P5274305254020267699

`A371054(n+1)%A262623(A383495(n))`
-/

namespace A371106.P5274305254020267699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371054 (n + 1)) (A262623 (A383495 n).toNat)

end

end A371106.P5274305254020267699

/-!
# A371107: Ternary numbers that are concatenated runs A(1)C(1)B(1)A(2)C(2)B(2)...A(k)C(k)B(k), where A(i) is a run of 1's, B(i) a run of 0's, and C(i) a run of 2's, for i = 1..k.

The programs for A371107, there is no canonical definition to state claims against.
-/

/-! ## A371107.P6744255270329462047

`A007089(A371108(n+1))`
-/

namespace A371107.P6744255270329462047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A371108 (n + 1)).toNat

end

end A371107.P6744255270329462047

/-! ## A371107.P13584437130549210370

`∩[A371051(n+1), A007089(n)]`
-/

namespace A371107.P13584437130549210370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371107.P13584437130549210370

/-! ## A371107.P1831786025253561044

`A371084(A000079(n))+A371051(n+1)`
-/

namespace A371107.P1831786025253561044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371084 (A000079 n).toNat + A371051 (n + 1)

end

end A371107.P1831786025253561044

/-! ## A371107.P1045005904162085394

`A371051(n+1)+A208575(A060171(n+1))`
-/

namespace A371107.P1045005904162085394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371051 (n + 1) + A208575 (A060171 (n + 1)).toNat

end

end A371107.P1045005904162085394

/-! ## A371107.P17083381009113443642

`A371051(n+1)+A122257(A292980(n+1))`
-/

namespace A371107.P17083381009113443642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371051 (n + 1) + A122257 (A292980 (n + 1)).toNat

end

end A371107.P17083381009113443642

/-!
# A371108: Integers whose ternary representation consists of concatenated runs A(1)C(1)B(1)A(2)C(2)B(2)...A(k)C(k)B(k), where A(i) is a run of 1's, B(i) a run of 0's, and C(i) a run of 2's, for i = 1..k.

The programs for A371108, there is no canonical definition to state claims against.
-/

/-! ## A371108.P4775861038539491148

`A371050(n+1)%A125063(n+3)`
-/

namespace A371108.P4775861038539491148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371050 (n + 1)) (A125063 (n + 3))

end

end A371108.P4775861038539491148

/-! ## A371108.P13513302129577136992

`A371084(A000079(n))+A371050(n+1)`
-/

namespace A371108.P13513302129577136992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371084 (A000079 n).toNat + A371050 (n + 1)

end

end A371108.P13513302129577136992

/-! ## A371108.P10594208971994243846

`A371050(n+1)%A094377(A240078(n))`
-/

namespace A371108.P10594208971994243846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371050 (n + 1)) (A094377 (A240078 n).toNat)

end

end A371108.P10594208971994243846

/-! ## A371108.P12697328190846032241

`A371050(n+1)+A000122(A121039(n+1))`
-/

namespace A371108.P12697328190846032241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371050 (n + 1) + A000122 (A121039 (n + 1)).toNat

end

end A371108.P12697328190846032241

/-! ## A371108.P13767982671822659151

`A371050(n+1)+A007814(A202988(n+1))`
-/

namespace A371108.P13767982671822659151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371050 (n + 1) + A007814 (A202988 (n + 1)).toNat

end

end A371108.P13767982671822659151

/-!
# A371109: Ternary numbers that are concatenated runs C(1)B(1)A(1)C(2)B(2)A(2)...C(k)B(k)A(k), where A(i) is a run of 1's, B(i) a run of 0's, and C(i) a run of 2's, for i = 1..k.

The programs for A371109, there is no canonical definition to state claims against.
-/

/-! ## A371109.P17158816611831904973

`A007089(A371110(n+1))`
-/

namespace A371109.P17158816611831904973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A371110 (n + 1)).toNat

end

end A371109.P17158816611831904973

/-! ## A371109.P12863510690286284404

`A371057(A077168(n))`
-/

namespace A371109.P12863510690286284404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371057 (A077168 n).toNat

end

end A371109.P12863510690286284404

/-! ## A371109.P2478409440582935280

`A371057(A065673(n+1))`
-/

namespace A371109.P2478409440582935280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371057 (A065673 (n + 1)).toNat

end

end A371109.P2478409440582935280

/-! ## A371109.P5439544780128228464

`A371057(n+1)+A063691(A000079(n))`
-/

namespace A371109.P5439544780128228464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371057 (n + 1) + A063691 (A000079 n).toNat

end

end A371109.P5439544780128228464

/-! ## A371109.P17673069734859069824

`A371057(n+1)+A185017(A253652(n+1))`
-/

namespace A371109.P17673069734859069824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371057 (n + 1) + A185017 (A253652 (n + 1)).toNat

end

end A371109.P17673069734859069824

/-!
# A371110: Integers whose ternary representation consists of concatenated runs C(1)B(1)A(1)C(2)B(2)A(2)...C(k)B(k)A(k), where A(i) is a run of 1's, B(i) a run of 0's, and C(i) a run of 2's, for i = 1..k.

The programs for A371110, there is no canonical definition to state claims against.
-/

/-! ## A371110.P3847688185301936087

`A371056(A077168(n))`
-/

namespace A371110.P3847688185301936087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371056 (A077168 n).toNat

end

end A371110.P3847688185301936087

/-! ## A371110.P13872150065136162380

`A371056(A065673(n+1))`
-/

namespace A371110.P13872150065136162380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371056 (A065673 (n + 1)).toNat

end

end A371110.P13872150065136162380

/-! ## A371110.P8806010160971561056

`∩[A371056(n+1), A061054(n)]`
-/

namespace A371110.P8806010160971561056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061054 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371110.P8806010160971561056

/-! ## A371110.P582719444610387509

`∩[A371056(n+1), A063547(n)]`
-/

namespace A371110.P582719444610387509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371110.P582719444610387509

/-! ## A371110.P12650658410914604835

`∩[A371056(n+1), A064479(n)]`
-/

namespace A371110.P12650658410914604835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064479 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371110.P12650658410914604835

/-!
# A371111: Ternary numbers that are concatenated runs C(1)A(1)B(1)C(2)A(2)B(2)...C(k)A(k)B(k), where A(i) is a run of 1's, B(i) a run of 0's, and C(i) a run of 2's, for i = 1..k.

The programs for A371111, there is no canonical definition to state claims against.
-/

/-! ## A371111.P13532142368243575545

`A007089(A371112(n+1))`
-/

namespace A371111.P13532142368243575545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A371112 (n + 1)).toNat

end

end A371111.P13532142368243575545

/-! ## A371111.P10683985305306086403

`A371053(A061497(n+1))`
-/

namespace A371111.P10683985305306086403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371053 (A061497 (n + 1)).toNat

end

end A371111.P10683985305306086403

/-! ## A371111.P17377155617161802545

`A371053(A062399(n)+1)`
-/

namespace A371111.P17377155617161802545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371053 (A062399 n + 1).toNat

end

end A371111.P17377155617161802545

/-! ## A371111.P9512419689284650230

`A371053(A077741(n+1))`
-/

namespace A371111.P9512419689284650230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371053 (A077741 (n + 1)).toNat

end

end A371111.P9512419689284650230

/-! ## A371111.P2551063848339100567

`A371053(A120126(n)+1)`
-/

namespace A371111.P2551063848339100567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371053 (A120126 n + 1).toNat

end

end A371111.P2551063848339100567

/-!
# A371112: Integers whose ternary representation consists of concatenated runs C(1)A(1)B(1)C(2)A(2)B(2)...C(k)A(k)B(k), where A(i) is a run of 1's, B(i) a run of 0's, and C(i) a run of 2's, for i = 1..k.

The programs for A371112, there is no canonical definition to state claims against.
-/

/-! ## A371112.P2929404694595845989

`A371052(A062399(n)+1)`
-/

namespace A371112.P2929404694595845989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371052 (A062399 n + 1).toNat

end

end A371112.P2929404694595845989

/-! ## A371112.P17618187274518692011

`A371052(A351870(n)+1)`
-/

namespace A371112.P17618187274518692011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371052 (A351870 n + 1).toNat

end

end A371112.P17618187274518692011

/-! ## A371112.P5991442836417788121

`C(A371052(n+1), A342557(2*n+5)!)`
-/

namespace A371112.P5991442836417788121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A371052 (n + 1)).toNat (Nat.factorial (A342557 (2 * n + 5)).toNat)

end

end A371112.P5991442836417788121

/-! ## A371112.P5355346830681093528

`A371052(n+1)+A261044(A250665(n))`
-/

namespace A371112.P5355346830681093528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371052 (n + 1) + A261044 (A250665 n).toNat

end

end A371112.P5355346830681093528

/-! ## A371112.P14170681875427474658

`A040632(A134438(n))*A371052(n+1)`
-/

namespace A371112.P14170681875427474658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040632 (A134438 n).toNat * A371052 (n + 1)

end

end A371112.P14170681875427474658

/-!
# A371113: The sequence is a succession of triples of nonnegative integers. In each triple, the digits form a palindromic pattern. The sequence starts with a(0)=0 and is always extended with the smallest available integer not yet present in the sequence.

The programs for A371113, there is no canonical definition to state claims against.
-/

/-! ## A371113.P14238841105322536543

`A262557(A133464(n))`
-/

namespace A371113.P14238841105322536543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A133464 n).toNat

end

end A371113.P14238841105322536543

/-! ## A371113.P2851887452170605365

`A262557(A180516(n+1)+1)`
-/

namespace A371113.P2851887452170605365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A180516 (n + 1) + 1).toNat

end

end A371113.P2851887452170605365

/-! ## A371113.P14954529896206530797

`A138142(A351997(n+1))`
-/

namespace A371113.P14954529896206530797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138142 (A351997 (n + 1)).toNat

end

end A371113.P14954529896206530797

/-!
# A371114: a(n) is n! times the coefficient of x in the associated Laguerre polynomial Laguerre(n,x,1).

The programs for A371114, there is no canonical definition to state claims against.
-/

/-! ## A371114.P1291025278900810472

`n-A048273(A120732(n))`
-/

namespace A371114.P1291025278900810472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048273 (A120732 n).toNat

end

end A371114.P1291025278900810472

/-! ## A371114.P6690031121169298745

`n-A334274(A000108(n))`
-/

namespace A371114.P6690031121169298745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A334274 (A000108 n).toNat

end

end A371114.P6690031121169298745

/-!
# A371115: E.g.f. satisfies A(x) = 1 + x*(exp(x*A(x)) - 1).

The programs for A371115, there is no canonical definition to state claims against.
-/

/-! ## A371115.P14299855751474764286

`A143595(A362188(n))-n`
-/

namespace A371115.P14299855751474764286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143595 (A362188 n).toNat - (n : ℤ)

end

end A371115.P14299855751474764286

/-! ## A371115.P1535654363396465887

`A277486(∑[∑[A277464(n)]])`
-/

namespace A371115.P1535654363396465887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277464 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371115.P1535654363396465887

/-!
# A371117: E.g.f. satisfies A(x) = 1 - x*log(1 - x*A(x)).

The programs for A371117, there is no canonical definition to state claims against.
-/

/-! ## A371117.P17514860473285553849

`A328678(A288888(n+1))`
-/

namespace A371117.P17514860473285553849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328678 (A288888 (n + 1)).toNat

end

end A371117.P17514860473285553849

/-! ## A371117.P75242963067677377

`and(∑[A383829(n+3)], A355842(n))`
-/

namespace A371117.P75242963067677377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383829 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A355842 n)

end

end A371117.P75242963067677377

/-!
# A371119: E.g.f. satisfies A(x) = 1 + x*A(x)*(exp(x*A(x)) - 1).

The programs for A371119, there is no canonical definition to state claims against.
-/

/-! ## A371119.P11411293056045766380

`A004526(A371270(n)+A028310(n))`
-/

namespace A371119.P11411293056045766380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371270 n + A028310 n).toNat

end

end A371119.P11411293056045766380

/-! ## A371119.P17899010686792850490

`A359402(A000108(n))+A106475(n)`
-/

namespace A371119.P17899010686792850490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (A000108 n).toNat + A106475 n

end

end A371119.P17899010686792850490

/-!
# A371120: E.g.f. satisfies A(x) = 1 + x*A(x)^3*(exp(x*A(x)) - 1).

The programs for A371120, there is no canonical definition to state claims against.
-/

/-! ## A371120.P10072555534127076060

`A356789(n)-A181835(A001006(n))`
-/

namespace A371120.P10072555534127076060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356789 n - A181835 (A001006 n).toNat

end

end A371120.P10072555534127076060

/-! ## A371120.P5220494192571312790

`A005843(A370988(n))-A371119(n)`
-/

namespace A371120.P5220494192571312790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A370988 n).toNat - A371119 n

end

end A371120.P5220494192571312790

/-!
# A371121: E.g.f. satisfies A(x) = 1 - x*A(x)*log(1 - x*A(x)).

The programs for A371121, there is no canonical definition to state claims against.
-/

/-! ## A371121.P8766876211684783861

`A004526(A371227(n)+A371140(n))`
-/

namespace A371121.P8766876211684783861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371227 n + A371140 n).toNat

end

end A371121.P8766876211684783861

/-! ## A371121.P3774183476288704551

`A201910(A331157(n))*A222210(n)`
-/

namespace A371121.P3774183476288704551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201910 (A331157 n).toNat * A222210 n

end

end A371121.P3774183476288704551

/-!
# A371123: Numbers whose decimal representation contains the digital root of the product of their digits.

The programs for A371123, there is no canonical definition to state claims against.
-/

/-! ## A371123.P17656106760812920810

`lt[A333255(n+1), A243503(A345580(n+1))]`
-/

namespace A371123.P17656106760812920810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A345580 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371123.P17656106760812920810

/-! ## A371123.P18438926666357424716

`lt[A351204(n), A243503(A345580(n+1))]`
-/

namespace A371123.P18438926666357424716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A345580 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371123.P18438926666357424716

/-! ## A371123.P8872635480297996508

`lt[A078374(n+1), A243503(A345580(n+1))]`
-/

namespace A371123.P8872635480297996508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A345580 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371123.P8872635480297996508

/-! ## A371123.P1260576805677950930

`lt[A352529(A352493(2*n+3)), 8]`
-/

namespace A371123.P1260576805677950930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352529 (A352493 (2 * n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A371123.P1260576805677950930

/-! ## A371123.P13890251390481615125

`lt[A241317(n), A001358(A322467(n+1))]`
-/

namespace A371123.P13890251390481615125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A322467 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371123.P13890251390481615125

/-!
# A371124: a(n) is the least nonnegative integer y such that y^2 = x^2 - k*n for k and x where n > k >= 1 and n > x >= floor(sqrt(n)).

The programs for A371124, there is no canonical definition to state claims against.
-/

/-! ## A371124.P5752546027577970575

`sqrt(A306284(n+1)²-(n+1)*A138191(n+1))`
-/

namespace A371124.P5752546027577970575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A306284 (n + 1) ^ 2 - (n + 1 : ℤ) * A138191 (n + 1) : ℝ)

end

end A371124.P5752546027577970575

/-! ## A371124.P13316798591718645074

`A306257(n+1)+A306271(n+1)-A306284(n+1)`
-/

namespace A371124.P13316798591718645074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (n + 1) + (A306271 (n + 1) - A306284 (n + 1))

end

end A371124.P13316798591718645074

/-! ## A371124.P15258455796325838995

`A000120(A078008(n))%A323893(n+1)`
-/

namespace A371124.P15258455796325838995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A078008 n).toNat) (A323893 (n + 1))

end

end A371124.P15258455796325838995

/-! ## A371124.P7464545780134883577

`A023416(A000975(n))%A007913(n+1)`
-/

namespace A371124.P7464545780134883577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A000975 n).toNat) (A007913 (n + 1))

end

end A371124.P7464545780134883577

/-! ## A371124.P14329052501437984604

`A034178(A000079(n))%A007913(n+1)`
-/

namespace A371124.P14329052501437984604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034178 (A000079 n).toNat) (A007913 (n + 1))

end

end A371124.P14329052501437984604

/-!
# A371125: Number of compositions of 6*n into parts 1 and 6.

The programs for A371125, the canonical program `A371125.P14219781672238829575` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371125 has offset 0).

The definition of A371125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371125.P14219781672238829575

`A005708(6*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A371125

/-- `A005708(6*n)` -/
def P14219781672238829575.Spec : Prop :=
  ∀ n, P14219781672238829575.a n = A371125 n

theorem P14219781672238829575.correct : P14219781672238829575.Spec := by
  intro n
  simp only [A371125]

end A371125

/-! ## A371125.P11865046992944236498

`A373638(2*n)`
-/

namespace A371125.P11865046992944236498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373638 (2 * n)

end

end A371125.P11865046992944236498

namespace A371125

/-- `A373638(2*n)` -/
def P11865046992944236498.Spec : Prop :=
  ∀ n, P11865046992944236498.a n = A371125 n

end A371125

/-! ## A371125.P10820400778454842834

`A373639(3*n)`
-/

namespace A371125.P10820400778454842834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373639 (3 * n)

end

end A371125.P10820400778454842834

namespace A371125

/-- `A373639(3*n)` -/
def P10820400778454842834.Spec : Prop :=
  ∀ n, P10820400778454842834.a n = A371125 n

end A371125

/-! ## A371125.P3482713995388701706

`∑[A373653(2*n)]`
-/

namespace A371125.P3482713995388701706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373653 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371125.P3482713995388701706

namespace A371125

/-- `∑[A373653(2*n)]` -/
def P3482713995388701706.Spec : Prop :=
  ∀ n, P3482713995388701706.a n = A371125 n

end A371125

/-! ## A371125.P5647956880518900109

`∑[A373654(3*n)]`
-/

namespace A371125.P5647956880518900109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371125.P5647956880518900109

namespace A371125

/-- `∑[A373654(3*n)]` -/
def P5647956880518900109.Spec : Prop :=
  ∀ n, P5647956880518900109.a n = A371125 n

end A371125

/-! ## A371125.P5087476492799889550

`A017900(6*(n+1))`
-/

namespace A371125.P5087476492799889550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (6 * (n + 1))

end

end A371125.P5087476492799889550

namespace A371125

/-- `A017900(6*(n+1))` -/
def P5087476492799889550.Spec : Prop :=
  ∀ n, P5087476492799889550.a n = A371125 n

end A371125

/-! ## A371125.P5562360383480369848

`A373960(n+2)-(A373960(n+1)+A099242(n))`
-/

namespace A371125.P5562360383480369848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373960 (n + 2) - (A373960 (n + 1) + A099242 n)

end

end A371125.P5562360383480369848

namespace A371125

/-- `A373960(n+2)-(A373960(n+1)+A099242(n))` -/
def P5562360383480369848.Spec : Prop :=
  ∀ n, P5562360383480369848.a n = A371125 n

end A371125

/-!
# A371127: Powers of 2 times powers > 1 of a prime-indexed prime number.

The programs for A371127, there is no canonical definition to state claims against.
-/

/-! ## A371127.P1075194850096753326

`filter[A302540(n+1), A340373(#)]`
-/

namespace A371127.P1075194850096753326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A371127.P1075194850096753326

/-! ## A371127.P17610159693309599878

`filter[A331386(n+1), A340363(#)]`
-/

namespace A371127.P17610159693309599878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A371127.P17610159693309599878

/-! ## A371127.P6309076955172053516

`filter[A331386(n+1), A340373(#)]`
-/

namespace A371127.P6309076955172053516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A371127.P6309076955172053516

/-! ## A371127.P9329740353634734508

`eq[1, A001222(A156061(n+1))]+1`
-/

namespace A371127.P9329740353634734508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A156061 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371127.P9329740353634734508

/-! ## A371127.P10542120160667466532

`eq[1, A008481(A290103(n+1))]+1`
-/

namespace A371127.P10542120160667466532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A290103 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371127.P10542120160667466532

/-! ## A371127.P13334026822321658860

`eq[1, A302242(A204455(n+1))]+1`
-/

namespace A371127.P13334026822321658860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A204455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371127.P13334026822321658860

/-! ## A371127.P12331349862501881414

`∩[A070776(n+1), A331386(n+1)]`
-/

namespace A371127.P12331349862501881414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371127.P12331349862501881414

/-! ## A371127.P5620272115627011468

`∩[A302540(n+1), A336101(n+1)]`
-/

namespace A371127.P5620272115627011468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371127.P5620272115627011468

/-! ## A371127.P5206835112057020361

`∩[A331386(n+1), A336101(n+1)]`
-/

namespace A371127.P5206835112057020361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371127.P5206835112057020361

/-! ## A371127.P7018531188525817219

`filter[A302594(n+1), A340373(#)]`
-/

namespace A371127.P7018531188525817219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A371127.P7018531188525817219

/-!
# A371128: Number of strict integer partitions of n containing all distinct divisors of all parts.

The programs for A371128, there is no canonical definition to state claims against.
-/

/-! ## A371128.P14093808315306915752

`A000009(n)-A371180(n)`
-/

namespace A371128.P14093808315306915752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A371180 n

end

end A371128.P14093808315306915752

/-! ## A371128.P10451542537319987541

`A035457(2*n)-A371180(n)`
-/

namespace A371128.P10451542537319987541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A371180 n

end

end A371128.P10451542537319987541

/-! ## A371128.P10038983013046556996

`A152487(A280254(n)-A101606(n+1))`
-/

namespace A371128.P10038983013046556996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 (A280254 n - A101606 (n + 1)).toNat

end

end A371128.P10038983013046556996

/-! ## A371128.P10056885207320025778

`A391441(A290593(n+3))`
-/

namespace A371128.P10056885207320025778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391441 (A290593 (n + 3)).toNat

end

end A371128.P10056885207320025778

/-! ## A371128.P6622841330445237102

`A271608(n)-A079978(A270929(2*n+1))`
-/

namespace A371128.P6622841330445237102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 n - A079978 (A270929 (2 * n + 1)).toNat

end

end A371128.P6622841330445237102

/-!
# A371129: Integers m whose (constant) convergence speed is exactly 3 (i.e., m^^(m+1) has 3 more rightmost frozen digits than m^^m, where ^^ indicates tetration).

The programs for A371129, there is no canonical definition to state claims against.
-/

/-! ## A371129.P7892212865661317196

`eq[3, A373387(n)]`
-/

namespace A371129.P7892212865661317196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371129.P7892212865661317196

/-!
# A371131: Least number with exactly n distinct divisors of prime indices. Position of first appearance of n in A370820.

The programs for A371131, there is no canonical definition to state claims against.
-/

/-! ## A371131.P2603428148698515247

`A109921(A187941(n))`
-/

namespace A371131.P2603428148698515247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (A187941 n).toNat

end

end A371131.P2603428148698515247

/-!
# A371132: Number of integer partitions of n with fewer distinct parts than distinct divisors of parts.

The programs for A371132, there is no canonical definition to state claims against.
-/

/-! ## A371132.P9873080900232763074

`A000041(n)-A371178(n)`
-/

namespace A371132.P9873080900232763074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A371178 n

end

end A371132.P9873080900232763074

/-! ## A371132.P2307882876841295004

`A213598(n)-A371178(n)`
-/

namespace A371132.P2307882876841295004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A371178 n

end

end A371132.P2307882876841295004

/-! ## A371132.P3486639232850293143

`A055375(A000217(n))-A371178(n)`
-/

namespace A371132.P3486639232850293143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055375 (A000217 n).toNat - A371178 n

end

end A371132.P3486639232850293143

/-! ## A371132.P2009288734710806831

`A213598(n)-A259899(A227232(n)-A140106(n+1))`
-/

namespace A371132.P2009288734710806831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A259899 (A227232 n - A140106 (n + 1)).toNat

end

end A371132.P2009288734710806831

/-! ## A371132.P15878304236159953628

`A264593(3*n+2)%A004275(A240740(n))`
-/

namespace A371132.P15878304236159953628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264593 (3 * n + 2)) (A004275 (A240740 (n + 15)).toNat)

end

end A371132.P15878304236159953628

/-!
# A371138: E.g.f. satisfies A(x) = 1 - x^2*A(x)^2*log(1 - x*A(x)).

The programs for A371138, there is no canonical definition to state claims against.
-/

/-! ## A371138.P15852796830706416205

`lcm(A007121(n), A195097(A124400(n)))`
-/

namespace A371138.P15852796830706416205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007121 n) (A195097 (A124400 n).toNat)

end

end A371138.P15852796830706416205

/-!
# A371139: E.g.f. satisfies A(x) = 1 + x^2*A(x)^2*(exp(x*A(x)) - 1).

The programs for A371139, there is no canonical definition to state claims against.
-/

/-! ## A371139.P1226281524426906419

`A014682(A371304(n)+A370989(n))`
-/

namespace A371139.P1226281524426906419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A371304 n + A370989 n).toNat

end

end A371139.P1226281524426906419

/-! ## A371139.P7176723715473772375

`A355508(n)+A004525(A052785(n))`
-/

namespace A371139.P7176723715473772375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355508 n + A004525 (A052785 n).toNat

end

end A371139.P7176723715473772375

/-! ## A371139.P10054248764274494511

`A142150(A371304(n)+A370989(n))`
-/

namespace A371139.P10054248764274494511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A371304 n + A370989 n).toNat

end

end A371139.P10054248764274494511

/-!
# A371140: E.g.f. satisfies A(x) = 1 - x*A(x)^2 * log(1 - x).

The programs for A371140, there is no canonical definition to state claims against.
-/

/-! ## A371140.P10918888207408194409

`A005843(A371121(n))-A371227(n)`
-/

namespace A371140.P10918888207408194409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A371121 n).toNat - A371227 n

end

end A371140.P10918888207408194409

/-!
# A371141: E.g.f. satisfies A(x) = 1 - x*A(x)^3 * log(1 - x).

The programs for A371141, there is no canonical definition to state claims against.
-/

/-! ## A371141.P7599344304777068515

`A184949(n)+A004016(A123105(n))`
-/

namespace A371141.P7599344304777068515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184949 n + A004016 (A123105 (n + 31)).toNat

end

end A371141.P7599344304777068515

/-! ## A371141.P853849079790377576

`A005843(A370993(n))-A371228(n)`
-/

namespace A371141.P853849079790377576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A370993 n).toNat - A371228 n

end

end A371141.P853849079790377576

/-!
# A371143: E.g.f. satisfies A(x) = 1 + x*A(x)^3 * (exp(x) - 1).

The programs for A371143, there is no canonical definition to state claims against.
-/

/-! ## A371143.P13373699014189440368

`A002264(A367881(n)+2)`
-/

namespace A371143.P13373699014189440368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A367881 n + 2).toNat

end

end A371143.P13373699014189440368

/-! ## A371143.P11775645835591169996

`A008615(2*A367881(n))`
-/

namespace A371143.P11775645835591169996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A367881 n).toNat

end

end A371143.P11775645835591169996

/-!
# A371145: E.g.f. satisfies log(A(x)) = x^2*A(x)^2 * (exp(x*A(x)) - 1).

The programs for A371145, there is no canonical definition to state claims against.
-/

/-! ## A371145.P1534381780437902812

`A052785(n)+A371304(n)+A004526(A052785(n))`
-/

namespace A371145.P1534381780437902812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052785 n + (A371304 n + A004526 (A052785 n).toNat)

end

end A371145.P1534381780437902812

/-! ## A371145.P4671689537419060358

`A052785(n)+A052785(n)+A004525(A375662(n))`
-/

namespace A371145.P4671689537419060358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052785 n + (A052785 n + A004525 (A375662 n).toNat)

end

end A371145.P4671689537419060358

/-!
# A371146: E.g.f. satisfies A(x) = 1/(1 - x*A(x)^2)^(x*A(x)^2).

The programs for A371146, there is no canonical definition to state claims against.
-/

/-! ## A371146.P4019412540457311528

`A004526(A377390(n)+1)`
-/

namespace A371146.P4019412540457311528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A377390 n + 1).toNat

end

end A371146.P4019412540457311528

/-! ## A371146.P5470450636510478742

`A005843(A356786(n))-A356795(n)`
-/

namespace A371146.P5470450636510478742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A356786 n).toNat - A356795 n

end

end A371146.P5470450636510478742

/-!
# A371147: E.g.f. satisfies A(x) = 1/(1 - x*A(x))^(x^2*A(x)^2).

The programs for A371147, there is no canonical definition to state claims against.
-/

/-! ## A371147.P12032690996169421056

`A056980(A027621(n))*A371118(n)`
-/

namespace A371147.P12032690996169421056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A027621 n).toNat * A371118 n

end

end A371147.P12032690996169421056

/-! ## A371147.P5671244290635435386

`A066099(A135742(n))*A371118(n)`
-/

namespace A371147.P5671244290635435386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A135742 n).toNat * A371118 n

end

end A371147.P5671244290635435386

/-! ## A371147.P12648221182494142429

`A109649(A195583(n))*A351503(n)`
-/

namespace A371147.P12648221182494142429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109649 (A195583 n).toNat * A351503 n

end

end A371147.P12648221182494142429

/-!
# A371148: Let n = Product_{j=1..k} p_j^e_j and gpf(n)! = Product_{j=1..k} p_j^f_j, where p_j = A000040(j) is the j-th prime and p_k = gpf(n) = A006530(n) is the greatest prime factor of n. a(n) is the numerator of the maximum of e_j/f_j.

The programs for A371148, there is no canonical definition to state claims against.
-/

/-! ## A371148.P8975186583291036739

`A362333(A153671(n+1)+1)`
-/

namespace A371148.P8975186583291036739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362333 (A153671 (n + 1) + 1).toNat

end

end A371148.P8975186583291036739

/-! ## A371148.P1556027231207810945

`A071178(A385216(n+2))`
-/

namespace A371148.P1556027231207810945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A385216 (n + 2)).toNat

end

end A371148.P1556027231207810945

/-! ## A371148.P18051610658537847348

`A362333(n+2)%A165024(n+1)²`
-/

namespace A371148.P18051610658537847348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362333 (n + 2)) (A165024 (n + 1) ^ 2)

end

end A371148.P18051610658537847348

/-! ## A371148.P13105936309691617446

`A249740(A163963(n+1))*A362333(n+2)`
-/

namespace A371148.P13105936309691617446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A163963 (n + 1)).toNat * A362333 (n + 2)

end

end A371148.P13105936309691617446

/-! ## A371148.P11234381173474427667

`or(A023533(A220501(n)+2), A362333(n+2))`
-/

namespace A371148.P11234381173474427667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023533 (A220501 n + 2).toNat) (A362333 (n + 2))

end

end A371148.P11234381173474427667

/-! ## A371148.P14487179403087526584

`A362333(A362333(A048839(n+1))+n+1)`
-/

namespace A371148.P14487179403087526584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362333 (A362333 (A048839 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A371148.P14487179403087526584

/-! ## A371148.P9379188159546473086

`A362333(n+2)+A353269(A069675(n+1))`
-/

namespace A371148.P9379188159546473086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362333 (n + 2) + A353269 (A069675 (n + 1)).toNat

end

end A371148.P9379188159546473086

/-! ## A371148.P11323478711311793124

`A362333(n+2)+A000122(A022004(n+1))`
-/

namespace A371148.P11323478711311793124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362333 (n + 2) + A000122 (A022004 (n + 1)).toNat

end

end A371148.P11323478711311793124

/-! ## A371148.P16957299151362570739

`A341644(A225004(n+2))`
-/

namespace A371148.P16957299151362570739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341644 (A225004 (n + 2)).toNat

end

end A371148.P16957299151362570739

/-! ## A371148.P16411114432481074384

`A091050(A225004(n+2)/(n+2))`
-/

namespace A371148.P16411114432481074384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (SequenceMachineLib.roundAway ((A225004 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A371148.P16411114432481074384

/-!
# A371149: Let n = Product_{j=1..k} p_j^e_j and gpf(n)! = Product_{j=1..k} p_j^f_j, where p_j = A000040(j) is the j-th prime and p_k = gpf(n) = A006530(n) is the greatest prime factor of n. a(n) is the denominator of the maximum of e_j/f_j.

The programs for A371149, the canonical program `A371149.P8047170178604340507` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371149 has offset 2).

The definition of A371149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371149.P17263049055608806480

`A008289(gcd(A007732(n+1), A325347(n+1)))`
-/

namespace A371149.P17263049055608806480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (Int.gcd (A007732 (n + 1)) (A325347 (n + 1)))

end

end A371149.P17263049055608806480

namespace A371149

/-- `A008289(gcd(A007732(n+1), A325347(n+1)))` -/
def P17263049055608806480.Spec : Prop :=
  ∀ n, P17263049055608806480.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P5779500281260152566

`ceil(3/A278028(A046759(n+1)))`
-/

namespace A371149.P5779500281260152566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (A278028 (A046759 (n + 1)).toNat : ℚ)⌉

end

end A371149.P5779500281260152566

namespace A371149

/-- `ceil(3/A278028(A046759(n+1)))` -/
def P5779500281260152566.Spec : Prop :=
  ∀ n, P5779500281260152566.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P15922893309104081876

`gcd(A260341(A170820(n+3)), A386425(n+1))`
-/

namespace A371149.P15922893309104081876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260341 (A170820 (n + 3)).toNat) (A386425 (n + 1))

end

end A371149.P15922893309104081876

namespace A371149

/-- `gcd(A260341(A170820(n+3)), A386425(n+1))` -/
def P15922893309104081876.Spec : Prop :=
  ∀ n, (P15922893309104081876.a n : ℤ) = A371149 (n + 2)

end A371149

/-! ## A371149.P8047170178604340507

`A025474(6*A357605(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A371149

/-- `A025474(6*A357605(n+1))` -/
def P8047170178604340507.Spec : Prop :=
  ∀ n, P8047170178604340507.a n = A371149 (n + 2)

theorem P8047170178604340507.correct : P8047170178604340507.Spec := by
  intro n
  simp only [A371149, Nat.add_sub_cancel]

end A371149

/-! ## A371149.P13826029913860771591

`A002997(A054806(n+1))%4`
-/

namespace A371149.P13826029913860771591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002997 (A054806 (n + 1)).toNat) 4

end

end A371149.P13826029913860771591

namespace A371149

/-- `A002997(A054806(n+1))%4` -/
def P13826029913860771591.Spec : Prop :=
  ∀ n, P13826029913860771591.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P17669423223239940669

`A165031(lcm(14, A083652(n+1)))`
-/

namespace A371149.P17669423223239940669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165031 (Int.lcm 14 (A083652 (n + 1)))

end

end A371149.P17669423223239940669

namespace A371149

/-- `A165031(lcm(14, A083652(n+1)))` -/
def P17669423223239940669.Spec : Prop :=
  ∀ n, P17669423223239940669.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P1602435340355324288

`A007814(A222298(2*n+3))-1`
-/

namespace A371149.P1602435340355324288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A222298 (2 * n + 3)).toNat - 1

end

end A371149.P1602435340355324288

namespace A371149

/-- `A007814(A222298(2*n+3))-1` -/
def P1602435340355324288.Spec : Prop :=
  ∀ n, P1602435340355324288.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P6030536656148944993

`A007814(A222298(2*n+3)/2)`
-/

namespace A371149.P6030536656148944993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A222298 (2 * n + 3) : ℚ) / 2)).toNat

end

end A371149.P6030536656148944993

namespace A371149

/-- `A007814(A222298(2*n+3)/2)` -/
def P6030536656148944993.Spec : Prop :=
  ∀ n, P6030536656148944993.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P12798948898729423285

`A319566(gcd(comp[2*(n+1)], A340786(n+2)))`
-/

namespace A371149.P12798948898729423285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319566 (Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A340786 (n + 2)))

end

end A371149.P12798948898729423285

namespace A371149

/-- `A319566(gcd(comp[2*(n+1)], A340786(n+2)))` -/
def P12798948898729423285.Spec : Prop :=
  ∀ n, P12798948898729423285.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P12804267134898039220

`A052409(xor(A053755(n), A171397(n))+1)`
-/

namespace A371149.P12804267134898039220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (Int.xor (A053755 n) (A171397 n) + 1).toNat

end

end A371149.P12804267134898039220

namespace A371149

/-- `A052409(xor(A053755(n), A171397(n))+1)` -/
def P12804267134898039220.Spec : Prop :=
  ∀ n, P12804267134898039220.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P17249682260610280600

`A051904(xor(A236688(n+1), A370672(n)))`
-/

namespace A371149.P17249682260610280600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (Int.xor (A236688 (n + 1)) (A370672 n)).toNat

end

end A371149.P17249682260610280600

namespace A371149

/-- `A051904(xor(A236688(n+1), A370672(n)))` -/
def P17249682260610280600.Spec : Prop :=
  ∀ n, P17249682260610280600.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P10145035761903172250

`A051904(A071049(n)+A000290(2*(n+1)))`
-/

namespace A371149.P10145035761903172250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A071049 n + A000290 (2 * (n + 1))).toNat

end

end A371149.P10145035761903172250

namespace A371149

/-- `A051904(A071049(n)+A000290(2*(n+1)))` -/
def P10145035761903172250.Spec : Prop :=
  ∀ n, P10145035761903172250.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P12914819977643700172

`A038500(A250246(3*n+1)+A010054(n))`
-/

namespace A371149.P12914819977643700172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A250246 (3 * n + 1) + A010054 n).toNat

end

end A371149.P12914819977643700172

namespace A371149

/-- `A038500(A250246(3*n+1)+A010054(n))` -/
def P12914819977643700172.Spec : Prop :=
  ∀ n, P12914819977643700172.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P13260639684309382248

`A034932(gcd(A104369(n+1), A353730(n+1)))`
-/

namespace A371149.P13260639684309382248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 (Int.gcd (A104369 (n + 1)) (A353730 (n + 1)))

end

end A371149.P13260639684309382248

namespace A371149

/-- `A034932(gcd(A104369(n+1), A353730(n+1)))` -/
def P13260639684309382248.Spec : Prop :=
  ∀ n, P13260639684309382248.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P473816307771259767

`A296541(gcd(A001358(3*(n+1)), A133906(2*n+3)))`
-/

namespace A371149.P473816307771259767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296541 (Int.gcd (A001358 (3 * (n + 1))) (A133906 (2 * n + 3)))

end

end A371149.P473816307771259767

namespace A371149

/-- `A296541(gcd(A001358(3*(n+1)), A133906(2*n+3)))` -/
def P473816307771259767.Spec : Prop :=
  ∀ n, P473816307771259767.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P3133605849792784296

`gcd(A001001(A106856(3*n+1)), A124010(3*n+5))`
-/

namespace A371149.P3133605849792784296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001001 (A106856 (3 * n + 1)).toNat) (A124010 (3 * n + 5))

end

end A371149.P3133605849792784296

namespace A371149

/-- `gcd(A001001(A106856(3*n+1)), A124010(3*n+5))` -/
def P3133605849792784296.Spec : Prop :=
  ∀ n, (P3133605849792784296.a n : ℤ) = A371149 (n + 2)

end A371149

/-! ## A371149.P1690389204501067479

`gcd(3, A326081(A318995(n+1)))`
-/

namespace A371149.P1690389204501067479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A326081 (A318995 (n + 1)).toNat)

end

end A371149.P1690389204501067479

namespace A371149

/-- `gcd(3, A326081(A318995(n+1)))` -/
def P1690389204501067479.Spec : Prop :=
  ∀ n, (P1690389204501067479.a n : ℤ) = A371149 (n + 2)

end A371149

/-! ## A371149.P2739585080287520340

`gcd(A107456(A103919(n)), A107461(n+1))`
-/

namespace A371149.P2739585080287520340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107456 ((A103919 n).toNat + 13)) (A107461 (n + 1))

end

end A371149.P2739585080287520340

namespace A371149

/-- `gcd(A107456(A103919(n)), A107461(n+1))` -/
def P2739585080287520340.Spec : Prop :=
  ∀ n, (P2739585080287520340.a n : ℤ) = A371149 (n + 2)

end A371149

/-! ## A371149.P4692448325717133171

`A033676(A144103(3*n+2)%A000005(n+2))`
-/

namespace A371149.P4692448325717133171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (Int.tmod (A144103 (3 * n + 2)) (A000005 (n + 2))).toNat

end

end A371149.P4692448325717133171

namespace A371149

/-- `A033676(A144103(3*n+2)%A000005(n+2))` -/
def P4692448325717133171.Spec : Prop :=
  ∀ n, P4692448325717133171.a n = A371149 (n + 2)

end A371149

/-! ## A371149.P11888756381904496761

`A349509(A127576(n+1)-5)`
-/

namespace A371149.P11888756381904496761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349509 (A127576 (n + 1) - 5).toNat

end

end A371149.P11888756381904496761

namespace A371149

/-- `A349509(A127576(n+1)-5)` -/
def P11888756381904496761.Spec : Prop :=
  ∀ n, P11888756381904496761.a n = A371149 (n + 2)

end A371149

/-!
# A371150: Numbers k such that A371149(k) > 1.

The programs for A371150, there is no canonical definition to state claims against.
-/

/-! ## A371150.P7668870853031011273

`lt[1, A371149(n+3)]+3`
-/

namespace A371150.P7668870853031011273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371149 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A371150.P7668870853031011273

/-!
# A371151: Numbers k >= 2 such that A362333(k)-A371148(k)/A371149(k) sets a new maximum.

The programs for A371151, there is no canonical definition to state claims against.
-/

/-! ## A371151.P14649052520101436303

`A007310(n+1)*A086117(A007310(n+1))`
-/

namespace A371151.P14649052520101436303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) * A086117 (A007310 (n + 1)).toNat

end

end A371151.P14649052520101436303

/-!
# A371152: Array read by antidiagonals: row n lists numbers m >= 2 with A362333(m) = n.

The programs for A371152, there is no canonical definition to state claims against.
-/

/-! ## A371152.P16666443229055447334

`A362814(A055645(n)+1)`
-/

namespace A371152.P16666443229055447334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362814 (A055645 n + 1).toNat

end

end A371152.P16666443229055447334

/-! ## A371152.P13056676136439275466

`A362814(A341709(n)+1)`
-/

namespace A371152.P13056676136439275466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362814 (A341709 n + 1).toNat

end

end A371152.P13056676136439275466

/-! ## A371152.P9454000872262631227

`A362814(A262545(n+1)+1)`
-/

namespace A371152.P9454000872262631227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362814 (A262545 (n + 1) + 1).toNat

end

end A371152.P9454000872262631227

/-! ## A371152.P7040784504815640511

`A362814(A048266(2*n+1)-n)`
-/

namespace A371152.P7040784504815640511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362814 (A048266 (2 * n + 1) - (n : ℤ)).toNat

end

end A371152.P7040784504815640511

/-! ## A371152.P14086450424491750301

`A362814(n+1)+A362802(A325548(n))`
-/

namespace A371152.P14086450424491750301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362814 (n + 1) + A362802 (A325548 n).toNat

end

end A371152.P14086450424491750301

/-!
# A371154: Maximum number of vertices for a given diameter n of a Cayley digraph on the cyclic group with generators s=1 and t>s.

The programs for A371154, the canonical program `A371154.P10309059542773847830` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371154 has offset 0).

The definition of A371154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371154.P3846066344098521311

`ceil((n+1)/tan(3/(n+3)))`
-/

namespace A371154.P3846066344098521311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.tan (3 / (n + 3 : ℚ) : ℝ)⌉

end

end A371154.P3846066344098521311

namespace A371154

/-- `ceil((n+1)/tan(3/(n+3)))` -/
def P3846066344098521311.Spec : Prop :=
  ∀ n, P3846066344098521311.a n = A371154 n

end A371154

/-! ## A371154.P10537802217298645241

`ceil((n+1)*cot(3/(n+3)))`
-/

namespace A371154.P10537802217298645241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.cot (3 / (n + 3 : ℚ) : ℝ)⌉

end

end A371154.P10537802217298645241

namespace A371154

/-- `ceil((n+1)*cot(3/(n+3)))` -/
def P10537802217298645241.Spec : Prop :=
  ∀ n, P10537802217298645241.a n = A371154 n

end A371154

/-! ## A371154.P10309059542773847830

`∑[a(n-3)+2]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A371154

/-- `∑[a(n-3)+2]` -/
def P10309059542773847830.Spec : Prop :=
  ∀ n, (P10309059542773847830.a n : ℤ) = A371154 n

theorem P10309059542773847830.correct : P10309059542773847830.Spec := by
  intro n
  simp only [A371154]

end A371154

/-! ## A371154.P7610530281854541703

`floor((∑[(n+1)*(n+2)]+1)/(n+2))`
-/

namespace A371154.P7610530281854541703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A371154.P7610530281854541703

namespace A371154

/-- `floor((∑[(n+1)*(n+2)]+1)/(n+2))` -/
def P7610530281854541703.Spec : Prop :=
  ∀ n, P7610530281854541703.a n = A371154 n

end A371154

/-! ## A371154.P11946455686769816353

`A254667(n)+A208994(n)`
-/

namespace A371154.P11946455686769816353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + A208994 n

end

end A371154.P11946455686769816353

namespace A371154

/-- `A254667(n)+A208994(n)` -/
def P11946455686769816353.Spec : Prop :=
  ∀ n, P11946455686769816353.a n = A371154 n

end A371154

/-! ## A371154.P4086930605498871553

`A373565(n)+A071408(n+1)`
-/

namespace A371154.P4086930605498871553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n + A071408 (n + 1)

end

end A371154.P4086930605498871553

namespace A371154

/-- `A373565(n)+A071408(n+1)` -/
def P4086930605498871553.Spec : Prop :=
  ∀ n, P4086930605498871553.a n = A371154 n

end A371154

/-! ## A371154.P1384159150171628524

`A032765(n+1)+char[1]`
-/

namespace A371154.P1384159150171628524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A371154.P1384159150171628524

namespace A371154

/-- `A032765(n+1)+char[1]` -/
def P1384159150171628524.Spec : Prop :=
  ∀ n, P1384159150171628524.a n = A371154 n

end A371154

/-! ## A371154.P2570975781784582460

`A229093(n+3)-1`
-/

namespace A371154.P2570975781784582460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229093 (n + 3) - 1

end

end A371154.P2570975781784582460

namespace A371154

/-- `A229093(n+3)-1` -/
def P2570975781784582460.Spec : Prop :=
  ∀ n, P2570975781784582460.a n = A371154 n

end A371154

/-! ## A371154.P2689484507845250248

`A323735(A087327(n+2))`
-/

namespace A371154.P2689484507845250248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323735 (A087327 (n + 2)).toNat

end

end A371154.P2689484507845250248

namespace A371154

/-- `A323735(A087327(n+2))` -/
def P2689484507845250248.Spec : Prop :=
  ∀ n, P2689484507845250248.a n = A371154 n

end A371154

/-! ## A371154.P2410403210584995652

`A008620(A164005(n))`
-/

namespace A371154.P2410403210584995652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A164005 n).toNat

end

end A371154.P2410403210584995652

namespace A371154

/-- `A008620(A164005(n))` -/
def P2410403210584995652.Spec : Prop :=
  ∀ n, P2410403210584995652.a n = A371154 n

end A371154

/-!
# A371156: Length of the longest subsequence of 1, ..., n on which the Dedekind psi function (A001615) is nondecreasing.

The programs for A371156, there is no canonical definition to state claims against.
-/

/-! ## A371156.P17345627408467351713

`n+2-A068063(A002095(n))`
-/

namespace A371156.P17345627408467351713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A068063 (A002095 n).toNat

end

end A371156.P17345627408467351713

/-! ## A371156.P16835725227298247362

`A319951(A361144(3*n+1)-A056239(n+1))`
-/

namespace A371156.P16835725227298247362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A361144 (3 * n + 1) - A056239 (n + 1)).toNat

end

end A371156.P16835725227298247362

/-! ## A371156.P2816379008933155743

`∑[A010054(A169768(n+4))]`
-/

namespace A371156.P2816379008933155743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A169768 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371156.P2816379008933155743

/-! ## A371156.P6150393679656464148

`∑[A113998(A022896(n+1)+3)]`
-/

namespace A371156.P6150393679656464148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (A022896 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371156.P6150393679656464148

/-! ## A371156.P10424247942863439642

`∑[A010060(∑{e}[A156552(n+1), #]!)]`
-/

namespace A371156.P10424247942863439642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371156.P10424247942863439642

/-!
# A371157: Expansion of e.g.f. 1/(1 - x - x^2)^(x^2).

The programs for A371157, there is no canonical definition to state claims against.
-/

/-! ## A371157.P2525180122314091588

`A043557(A353213(n+1))*A353228(n)`
-/

namespace A371157.P2525180122314091588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A353213 (n + 1)).toNat * A353228 n

end

end A371157.P2525180122314091588

/-! ## A371157.P8644136805466276154

`A323076(A122749(n+2))*A371233(n)`
-/

namespace A371157.P8644136805466276154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323076 (A122749 (n + 2)).toNat * A371233 n

end

end A371157.P8644136805466276154

/-! ## A371157.P9079977015515891347

`A144112(A008578(n+1))*A263273(A362891(n))`
-/

namespace A371157.P9079977015515891347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A008578 (n + 1)).toNat * A263273 (A362891 n).toNat

end

end A371157.P9079977015515891347

/-!
# A371158: Expansion of e.g.f. 1/(1 - x - x^2)^(x^3).

The programs for A371158, there is no canonical definition to state claims against.
-/

/-! ## A371158.P1042648209798768078

`A245092(A371198(n))`
-/

namespace A371158.P1042648209798768078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A371198 n).toNat

end

end A371158.P1042648209798768078

/-! ## A371158.P10496067184302364298

`A023443(A371198(n)+1)`
-/

namespace A371158.P10496067184302364298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A371198 n + 1).toNat

end

end A371158.P10496067184302364298

/-! ## A371158.P12155935386550767903

`A023444(A371198(n)+2)`
-/

namespace A371158.P12155935386550767903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A371198 n + 2).toNat

end

end A371158.P12155935386550767903

/-! ## A371158.P10751207483905001998

`filter[A371198(n), A014577(#)]`
-/

namespace A371158.P10751207483905001998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A371158.P10751207483905001998

/-!
# A371159: Expansion of e.g.f. 1/(1 - x^2 - x^3)^x.

The programs for A371159, there is no canonical definition to state claims against.
-/

/-! ## A371159.P10592067471039916741

`A355575(n)/A000002(∑[(∑[n+4]+3)*2^n])`
-/

namespace A371159.P10592067471039916741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 3) * 2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355575 n : ℚ) / (A000002 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A371159.P10592067471039916741

/-! ## A371159.P1635767776096611737

`A004526(A376516(n)+A376513(n))`
-/

namespace A371159.P1635767776096611737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A376516 n + A376513 n).toNat

end

end A371159.P1635767776096611737

/-! ## A371159.P8703037347450645190

`A096825(A085362(n))*A351505(n)`
-/

namespace A371159.P8703037347450645190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A085362 n).toNat * A351505 n

end

end A371159.P8703037347450645190

/-!
# A371160: Expansion of e.g.f. 1/(1 - x^3 - x^4)^x.

The programs for A371160, there is no canonical definition to state claims against.
-/

/-! ## A371160.P6121882451136448905

`A245092(A371200(n))`
-/

namespace A371160.P6121882451136448905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A371200 n).toNat

end

end A371160.P6121882451136448905

/-! ## A371160.P2755054970393770897

`A001281(2*A371200(n))`
-/

namespace A371160.P2755054970393770897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A371200 n).toNat

end

end A371160.P2755054970393770897

/-! ## A371160.P7391165364687261165

`A004526(2*A371200(n))`
-/

namespace A371160.P7391165364687261165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A371200 n).toNat

end

end A371160.P7391165364687261165

/-! ## A371160.P7637723277048161372

`A175126(2*A371200(n))`
-/

namespace A371160.P7637723277048161372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 * A371200 n).toNat

end

end A371160.P7637723277048161372

/-!
# A371161: Maximum number of unlabeled graphs with at most n nodes such that neither one is a subgraph of another.

The programs for A371161, there is no canonical definition to state claims against.
-/

/-! ## A371161.P10064634660845062804

`A029061(A375099(n+1))`
-/

namespace A371161.P10064634660845062804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029061 (A375099 (n + 1)).toNat

end

end A371161.P10064634660845062804

/-! ## A371161.P322215168990826484

`round(A336544(n+1)/A051450(n+1))`
-/

namespace A371161.P322215168990826484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A336544 (n + 1) : ℚ) / (A051450 (n + 1) : ℚ))

end

end A371161.P322215168990826484

/-! ## A371161.P2645059904535431652

`A376661(A026625(n+1))`
-/

namespace A371161.P2645059904535431652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376661 (A026625 (n + 1)).toNat

end

end A371161.P2645059904535431652

/-! ## A371161.P10738504494169615408

`A376661(A026691(n+1))`
-/

namespace A371161.P10738504494169615408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376661 (A026691 (n + 1)).toNat

end

end A371161.P10738504494169615408

/-!
# A371162: Largest possible number of minimal forbidden subgraphs for a graph of order n.

The programs for A371162, there is no canonical definition to state claims against.
-/

/-! ## A371162.P13695666551848306790

`A324372(n)+A098294(n)`
-/

namespace A371162.P13695666551848306790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324372 n + A098294 n

end

end A371162.P13695666551848306790

/-! ## A371162.P3747662322623137781

`A324372(n)+A195119(n)`
-/

namespace A371162.P3747662322623137781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324372 n + A195119 n

end

end A371162.P3747662322623137781

/-! ## A371162.P14981828646061147591

`A324372(n)+A055038(n+1)`
-/

namespace A371162.P14981828646061147591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324372 n + A055038 (n + 1)

end

end A371162.P14981828646061147591

/-! ## A371162.P10086819443737556813

`A324372(n)+A066683(n+1)`
-/

namespace A371162.P10086819443737556813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324372 n + A066683 (n + 1)

end

end A371162.P10086819443737556813

/-! ## A371162.P6957449626938585968

`A373114(n+1)+A324372(n)`
-/

namespace A371162.P6957449626938585968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373114 (n + 1) + A324372 n

end

end A371162.P6957449626938585968

/-!
# A371164: Rectangular array, read by antidiagonals: row k shows all numbers whose prime factorization p(1)^e(1) * p(2)^e(2) * ... * p(k)^e(k) has e(i) > 0 for i=1..k.

The programs for A371164, there is no canonical definition to state claims against.
-/

/-! ## A371164.P12244550445543013948

`A357910(A288349(n+1))`
-/

namespace A371164.P12244550445543013948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357910 (A288349 (n + 1)).toNat

end

end A371164.P12244550445543013948

/-! ## A371164.P1877758419805147983

`filter[A357910(n+1), A341629(#)]`
-/

namespace A371164.P1877758419805147983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A371164.P1877758419805147983

/-! ## A371164.P13416900294998115247

`A057335(A067576(n+1)%A379450(n+1))`
-/

namespace A371164.P13416900294998115247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (Int.tmod (A067576 (n + 1)) (A379450 (n + 1))).toNat

end

end A371164.P13416900294998115247

/-! ## A371164.P8669369938134336382

`A303555(n+1)-A279228(A032302(n))`
-/

namespace A371164.P8669369938134336382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303555 (n + 1) - A279228 (A032302 n).toNat

end

end A371164.P8669369938134336382

/-!
# A371165: Positive integers with as many divisors (A000005) as distinct divisors of prime indices (A370820).

The programs for A371165, there is no canonical definition to state claims against.
-/

/-! ## A371165.P1532938044635462679

`eq[A000005(n+1), A370820(n+1)]+1`
-/

namespace A371165.P1532938044635462679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A371165.P1532938044635462679

/-! ## A371165.P14896381033407522683

`eq[A101296(n+1), A370820(n+1)]+1`
-/

namespace A371165.P14896381033407522683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A371165.P14896381033407522683

/-!
# A371166: Positive integers with fewer divisors (A000005) than distinct divisors of prime indices (A370820).

The programs for A371166, there is no canonical definition to state claims against.
-/

/-! ## A371166.P6906758405125322190

`lt[A000005(n+1), A370820(n+1)]+1`
-/

namespace A371166.P6906758405125322190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371166.P6906758405125322190

/-! ## A371166.P13628874374813660367

`A000040(A377033(∑[n]))`
-/

namespace A371166.P13628874374813660367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377033 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A371166.P13628874374813660367

/-! ## A371166.P5285627451577428821

`A000040(record[A377033(n)])`
-/

namespace A371166.P5285627451577428821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371166.P5285627451577428821

/-! ## A371166.P6216549030742352656

`A030291(record[A377033(n)])`
-/

namespace A371166.P6216549030742352656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371166.P6216549030742352656

/-! ## A371166.P7899851481753142940

`A069680(record[A377033(n)])`
-/

namespace A371166.P7899851481753142940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371166.P7899851481753142940

/-!
# A371167: Positive integers with more divisors (A000005) than distinct divisors of prime indices (A370820).

The programs for A371167, there is no canonical definition to state claims against.
-/

/-! ## A371167.P9047622517173505400

`lt[A370820(n+1), A000005(n+1)]+1`
-/

namespace A371167.P9047622517173505400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371167.P9047622517173505400

/-! ## A371167.P8056783920312499725

`eq[A034507(n+1), A121559(n+1)]`
-/

namespace A371167.P8056783920312499725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371167.P8056783920312499725

/-! ## A371167.P16546297907604323566

`eq[A034544(n+1), A121559(n+1)]`
-/

namespace A371167.P16546297907604323566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371167.P16546297907604323566

/-! ## A371167.P7623265819896986553

`eq[2*A121559(n+1), A034526(n+1)]`
-/

namespace A371167.P7623265819896986553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371167.P7623265819896986553

/-! ## A371167.P7634910617859593745

`eq[A034510(n+1), A121559(n+1)]`
-/

namespace A371167.P7634910617859593745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371167.P7634910617859593745

/-!
# A371168: Positive integers with fewer prime factors (A001222) than distinct divisors of prime indices (A370820).

The programs for A371168, there is no canonical definition to state claims against.
-/

/-! ## A371168.P3632553760248820393

`comp[A371169(n+1)-1]+1`
-/

namespace A371168.P3632553760248820393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371169 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A371168.P3632553760248820393

/-! ## A371168.P14517763055176511107

`∪[A111173(n+1), A370811(n+1)]`
-/

namespace A371168.P14517763055176511107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A371168.P14517763055176511107

/-! ## A371168.P8834108094695643459

`comp[∪[A029951(n+1), A371169(n+1)]]`
-/

namespace A371168.P8834108094695643459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371169 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A371168.P8834108094695643459

/-! ## A371168.P5750423004752177637

`lt[A001222(n+1), A370820(n+1)]+1`
-/

namespace A371168.P5750423004752177637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371168.P5750423004752177637

/-! ## A371168.P3591114213073639565

`A370811(A351831(n+1)+1)`
-/

namespace A371168.P3591114213073639565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370811 (A351831 (n + 1) + 1).toNat

end

end A371168.P3591114213073639565

/-!
# A371169: Positive integers with at least as many prime factors (A001222) as distinct divisors of prime indices (A370820).

The programs for A371169, there is no canonical definition to state claims against.
-/

/-! ## A371169.P3285067296920062808

`∪[A370348(n+1), A370802(n+1)]`
-/

namespace A371169.P3285067296920062808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A371169.P3285067296920062808

/-! ## A371169.P823717299345722164

`lt[A131818(A000041(n)), A363395(n)]`
-/

namespace A371169.P823717299345722164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371169.P823717299345722164

/-! ## A371169.P16425675257196201753

`lt[A000010(n+1), A001399(A363395(n))]`
-/

namespace A371169.P16425675257196201753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A363395 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371169.P16425675257196201753

/-! ## A371169.P964778503959518858

`lt[A055980(n+1), A323889(A363395(n))]`
-/

namespace A371169.P964778503959518858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 (A363395 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371169.P964778503959518858

/-! ## A371169.P11021101672146192795

`lt[A245092(3*n), A007504(A363395(n))]`
-/

namespace A371169.P11021101672146192795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A363395 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371169.P11021101672146192795

/-!
# A371170: Positive integers with at most as many prime factors (A001222) as distinct divisors of prime indices (A370820).

The programs for A371170, there is no canonical definition to state claims against.
-/

/-! ## A371170.P1979041994297258876

`comp[A370348(n+1)-1]+1`
-/

namespace A371170.P1979041994297258876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370348 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A371170.P1979041994297258876

/-! ## A371170.P3527284741141636948

`lt[A325770(n+1), A182816(n+1)]+1`
-/

namespace A371170.P3527284741141636948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371170.P3527284741141636948

/-! ## A371170.P16872405783984582342

`A370422(n+1)%A330948(2*n+3)`
-/

namespace A371170.P16872405783984582342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370422 (n + 1)) (A330948 (2 * n + 3))

end

end A371170.P16872405783984582342

/-! ## A371170.P11039900371728901508

`A300826(A370381(n))*A370422(n+1)`
-/

namespace A371170.P11039900371728901508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (A370381 n).toNat * A370422 (n + 1)

end

end A371170.P11039900371728901508

/-! ## A371170.P78957492419102974

`A370422(n+1)%A095990(A096011(n))`
-/

namespace A371170.P78957492419102974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370422 (n + 1)) (A095990 (A096011 n).toNat)

end

end A371170.P78957492419102974

/-!
# A371172: Number of integer partitions of n with as many submultisets as distinct divisors of parts.

The programs for A371172, there is no canonical definition to state claims against.
-/

/-! ## A371172.P4250135251055482482

`A035232(A375576(n)+A124497(n))`
-/

namespace A371172.P4250135251055482482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A375576 n + A124497 n).toNat

end

end A371172.P4250135251055482482

/-! ## A371172.P5789694284061965572

`and(A001222(A060089(n)), A234692(n))`
-/

namespace A371172.P5789694284061965572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A060089 n).toNat) (A234692 n)

end

end A371172.P5789694284061965572

/-! ## A371172.P8766646395437142354

`A319510(A278788(n))+A045763(n+1)`
-/

namespace A371172.P8766646395437142354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319510 (A278788 n).toNat + A045763 (n + 1)

end

end A371172.P8766646395437142354

/-! ## A371172.P8219243901562760944

`A097944(A223233(n+1))-A055089(n)`
-/

namespace A371172.P8219243901562760944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A223233 (n + 1)).toNat - A055089 n

end

end A371172.P8219243901562760944

/-! ## A371172.P17406891748100250953

`A270929(A270613(n+1))%A084193(n)`
-/

namespace A371172.P17406891748100250953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270929 (A270613 (n + 1)).toNat) (A084193 n)

end

end A371172.P17406891748100250953

/-!
# A371174: Expansion of e.g.f. (1 + x + x^2)^(x^3).

The programs for A371174, there is no canonical definition to state claims against.
-/

/-! ## A371174.P8641896842537945758

`A061347(A001861(n))*A353229(n)`
-/

namespace A371174.P8641896842537945758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A001861 n).toNat * A353229 n

end

end A371174.P8641896842537945758

/-! ## A371174.P12694408432487822886

`A102283(A033631(n+1))*A292889(n)`
-/

namespace A371174.P12694408432487822886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A033631 (n + 1)).toNat * A292889 n

end

end A371174.P12694408432487822886

/-! ## A371174.P2128663319944117565

`A356099(n)*A356112(A364959(n+1))`
-/

namespace A371174.P2128663319944117565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356099 n * A356112 (A364959 (n + 1)).toNat

end

end A371174.P2128663319944117565

/-!
# A371176: Numbers k such that A000120(k) <= A001511(k).

The programs for A371176, the canonical program `A371176.P8298273328207224755` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371176 has offset 1).

The definition of A371176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371176.P8298273328207224755

`∑[2^A213911(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A371176

/-- `∑[2^A213911(n)]` -/
def P8298273328207224755.Spec : Prop :=
  ∀ n, P8298273328207224755.a n = (A371176 (n + 1) : ℚ)

end A371176

/-! ## A371176.P14976430452951108126

`A373303(n)+a(n-1)` with `a(0)=1`
-/

namespace A371176.P14976430452951108126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A373303 n + a (n - 1)

end

end A371176.P14976430452951108126

namespace A371176

/-- `A373303(n)+a(n-1)` -/
def P14976430452951108126.Spec : Prop :=
  ∀ n, P14976430452951108126.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P3198155648613618700

`eq[1, A373990(n+1)]+1`
-/

namespace A371176.P3198155648613618700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371176.P3198155648613618700

namespace A371176

/-- `eq[1, A373990(n+1)]+1` -/
def P3198155648613618700.Spec : Prop :=
  ∀ n, (P3198155648613618700.a n : ℤ) = A371176 (n + 1)

end A371176

/-! ## A371176.P17071527705680707682

`filter[A004277(n), A373990(#)]`
-/

namespace A371176.P17071527705680707682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P17071527705680707682

namespace A371176

/-- `filter[A004277(n), A373990(#)]` -/
def P17071527705680707682.Spec : Prop :=
  ∀ n, P17071527705680707682.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P17388233658181425885

`filter[A004279(n), A373990(#)]`
-/

namespace A371176.P17388233658181425885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P17388233658181425885

namespace A371176

/-- `filter[A004279(n), A373990(#)]` -/
def P17388233658181425885.Spec : Prop :=
  ∀ n, P17388233658181425885.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P12218409389573588048

`filter[A004271(n+1), A373990(#)]`
-/

namespace A371176.P12218409389573588048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P12218409389573588048

namespace A371176

/-- `filter[A004271(n+1), A373990(#)]` -/
def P12218409389573588048.Spec : Prop :=
  ∀ n, P12218409389573588048.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P7832191928806380484

`filter[A004272(n+1), A373990(#)]`
-/

namespace A371176.P7832191928806380484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P7832191928806380484

namespace A371176

/-- `filter[A004272(n+1), A373990(#)]` -/
def P7832191928806380484.Spec : Prop :=
  ∀ n, P7832191928806380484.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P11380248924816512902

`filter[A004275(n+1), A373990(#)]`
-/

namespace A371176.P11380248924816512902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P11380248924816512902

namespace A371176

/-- `filter[A004275(n+1), A373990(#)]` -/
def P11380248924816512902.Spec : Prop :=
  ∀ n, P11380248924816512902.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P15759635772015330425

`filter[A004278(n+1), A373990(#)]`
-/

namespace A371176.P15759635772015330425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P15759635772015330425

namespace A371176

/-- `filter[A004278(n+1), A373990(#)]` -/
def P15759635772015330425.Spec : Prop :=
  ∀ n, P15759635772015330425.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P7174309742988205613

`filter[A185048(2*n+1), A373990(#)]`
-/

namespace A371176.P7174309742988205613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P7174309742988205613

namespace A371176

/-- `filter[A185048(2*n+1), A373990(#)]` -/
def P7174309742988205613.Spec : Prop :=
  ∀ n, P7174309742988205613.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P12243513399588044806

`filter[A176693(n+2), A373990(#)]`
-/

namespace A371176.P12243513399588044806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P12243513399588044806

namespace A371176

/-- `filter[A176693(n+2), A373990(#)]` -/
def P12243513399588044806.Spec : Prop :=
  ∀ n, P12243513399588044806.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P11451496916397910711

`filter[A064745(n+1), A373990(#)]`
-/

namespace A371176.P11451496916397910711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P11451496916397910711

namespace A371176

/-- `filter[A064745(n+1), A373990(#)]` -/
def P11451496916397910711.Spec : Prop :=
  ∀ n, P11451496916397910711.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P17012118749282685155

`filter[A171086(n+1), A373990(#)]`
-/

namespace A371176.P17012118749282685155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P17012118749282685155

namespace A371176

/-- `filter[A171086(n+1), A373990(#)]` -/
def P17012118749282685155.Spec : Prop :=
  ∀ n, P17012118749282685155.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P13147445630459991779

`filter[A225850(n+1), A373990(#)]`
-/

namespace A371176.P13147445630459991779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P13147445630459991779

namespace A371176

/-- `filter[A225850(n+1), A373990(#)]` -/
def P13147445630459991779.Spec : Prop :=
  ∀ n, P13147445630459991779.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P5899814131449017225

`filter[A372771(n+1), A373990(#)]`
-/

namespace A371176.P5899814131449017225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P5899814131449017225

namespace A371176

/-- `filter[A372771(n+1), A373990(#)]` -/
def P5899814131449017225.Spec : Prop :=
  ∀ n, P5899814131449017225.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P13006899924220856952

`filter[A237058(n+1), A373990(#)]`
-/

namespace A371176.P13006899924220856952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P13006899924220856952

namespace A371176

/-- `filter[A237058(n+1), A373990(#)]` -/
def P13006899924220856952.Spec : Prop :=
  ∀ n, P13006899924220856952.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P14751701628830998476

`filter[A066250(n+1), A373990(#)]`
-/

namespace A371176.P14751701628830998476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P14751701628830998476

namespace A371176

/-- `filter[A066250(n+1), A373990(#)]` -/
def P14751701628830998476.Spec : Prop :=
  ∀ n, P14751701628830998476.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P9274498692947853580

`filter[A073897(n+1), A373990(#)]`
-/

namespace A371176.P9274498692947853580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P9274498692947853580

namespace A371176

/-- `filter[A073897(n+1), A373990(#)]` -/
def P9274498692947853580.Spec : Prop :=
  ∀ n, P9274498692947853580.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P10791127744648709812

`filter[A278373(n+2), A373990(#)]`
-/

namespace A371176.P10791127744648709812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278373 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P10791127744648709812

namespace A371176

/-- `filter[A278373(n+2), A373990(#)]` -/
def P10791127744648709812.Spec : Prop :=
  ∀ n, P10791127744648709812.a n = A371176 (n + 1)

end A371176

/-! ## A371176.P9118980901069090664

`filter[A277008(n+1), A373990(#)]`
-/

namespace A371176.P9118980901069090664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373990 (f1 j).toNat = 1) n)

end

end A371176.P9118980901069090664

namespace A371176

/-- `filter[A277008(n+1), A373990(#)]` -/
def P9118980901069090664.Spec : Prop :=
  ∀ n, P9118980901069090664.a n = A371176 (n + 1)

end A371176

/-!
# A371177: Positive integers whose prime indices include all distinct divisors of all prime indices.

The programs for A371177, there is no canonical definition to state claims against.
-/

/-! ## A371177.P13211733115963958670

`eq[A001221(n+1), A370820(n+1)]+1`
-/

namespace A371177.P13211733115963958670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A371177.P13211733115963958670

/-! ## A371177.P2290604154086627050

`A076450(n+1)%A051965(A098568(n))`
-/

namespace A371177.P2290604154086627050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076450 (n + 1)) (A051965 (A098568 n).toNat)

end

end A371177.P2290604154086627050

/-! ## A371177.P7323887552214837823

`A076450(n+1)/A076498(A297720(n+1))`
-/

namespace A371177.P7323887552214837823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076450 (n + 1) : ℚ) / (A076498 (A297720 (n + 1)).toNat : ℚ)

end

end A371177.P7323887552214837823

/-! ## A371177.P2553585061385428863

`A076450(n+1)/A349133(A001605(n+5))`
-/

namespace A371177.P2553585061385428863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076450 (n + 1) : ℚ) / (A349133 (A001605 (n + 5)).toNat : ℚ)

end

end A371177.P2553585061385428863

/-! ## A371177.P13813963298788884506

`A361465(A353837(2*(n+2)))+A076450(n+1)`
-/

namespace A371177.P13813963298788884506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (A353837 (2 * (n + 2))).toNat + A076450 (n + 1)

end

end A371177.P13813963298788884506

/-!
# A371178: Number of integer partitions of n containing all divisors of all parts.

The programs for A371178, there is no canonical definition to state claims against.
-/

/-! ## A371178.P1136314944678276028

`A000041(n)-A371132(n)`
-/

namespace A371178.P1136314944678276028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A371132 n

end

end A371178.P1136314944678276028

/-! ## A371178.P17266195168505405950

`A213598(n)-A371132(n)`
-/

namespace A371178.P17266195168505405950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A371132 n

end

end A371178.P17266195168505405950

/-! ## A371178.P7766840039742434683

`A058984(n)+A004526(n)-A371132(n)`
-/

namespace A371178.P7766840039742434683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n + A004526 n - A371132 n

end

end A371178.P7766840039742434683

/-! ## A371178.P8499452711658386323

`floor(A323531(3*n+1)/A000079(n))`
-/

namespace A371178.P8499452711658386323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323531 (3 * n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A371178.P8499452711658386323

/-! ## A371178.P6112271280408665589

`A118168(A073576(n)-A180160(n))`
-/

namespace A371178.P6112271280408665589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A073576 n - A180160 n).toNat

end

end A371178.P6112271280408665589

/-!
# A371179: Positive integers with fewer distinct prime factors (A001221) than distinct divisors of prime indices (A370820).

The programs for A371179, there is no canonical definition to state claims against.
-/

/-! ## A371179.P12227823313995711198

`comp[A023443(A371177(n+1))]+1`
-/

namespace A371179.P12227823313995711198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A371177 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A371179.P12227823313995711198

/-! ## A371179.P14403591653498345375

`comp[∪[A371177(n+1), A016910(n)]]`
-/

namespace A371179.P14403591653498345375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371177 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A371179.P14403591653498345375

/-! ## A371179.P17502865361695610299

`lt[A001221(n+1), A370820(n+1)]+1`
-/

namespace A371179.P17502865361695610299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371179.P17502865361695610299

/-! ## A371179.P13959072761963342057

`lt[A027642(n), A019554(A133031(n+5))]`
-/

namespace A371179.P13959072761963342057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A133031 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371179.P13959072761963342057

/-! ## A371179.P5506390961463334333

`lt[A131711(A333627(2*n+1)), A094683(n)]`
-/

namespace A371179.P5506390961463334333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131711 (A333627 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371179.P5506390961463334333

/-!
# A371180: Number of strict integer partitions of n with fewer parts than distinct divisors of parts.

The programs for A371180, there is no canonical definition to state claims against.
-/

/-! ## A371180.P959132334189823664

`A000009(n)-A371128(n)`
-/

namespace A371180.P959132334189823664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A371128 n

end

end A371180.P959132334189823664

/-! ## A371180.P17454719887172587011

`abs(A081360(n))-A371128(n)`
-/

namespace A371180.P17454719887172587011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A371128 n

end

end A371180.P17454719887172587011

/-! ## A371180.P15937894195401316355

`∑[A087897(n)]-A371128(n)`
-/

namespace A371180.P15937894195401316355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A371128 n

end

end A371180.P15937894195401316355

/-! ## A371180.P18357349360294984012

`A050361(A000079(n))-A371128(n)`
-/

namespace A371180.P18357349360294984012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A000079 n).toNat - A371128 n

end

end A371180.P18357349360294984012

/-! ## A371180.P4695934018852758809

`A000700(2*(n+1))-A051731(A225750(n))`
-/

namespace A371180.P4695934018852758809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * (n + 1)) - A051731 (A225750 n).toNat

end

end A371180.P4695934018852758809

/-!
# A371182: Lexicographically earliest strictly increasing sequence of positive integers in which every triple of consecutive digits contains only one pair that is not coprime.

The programs for A371182, there is no canonical definition to state claims against.
-/

/-! ## A371182.P5690729889899988027

`lt[A284372(A286162(3*n+2)), A296150(2*(n+2))]`
-/

namespace A371182.P5690729889899988027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284372 (A286162 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371182.P5690729889899988027

/-!
# A371184: Expansion of e.g.f. (1 + x^3 + x^4)^x.

The programs for A371184, there is no canonical definition to state claims against.
-/

/-! ## A371184.P8985175846478058791

`A011589(A018191(n))*A371160(n)`
-/

namespace A371184.P8985175846478058791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (A018191 n).toNat * A371160 n

end

end A371184.P8985175846478058791

/-! ## A371184.P1472513772029152577

`A008683(A143917(n+1))*A371160(n)`
-/

namespace A371184.P1472513772029152577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A143917 (n + 1)).toNat * A371160 n

end

end A371184.P1472513772029152577

/-! ## A371184.P2417503932890041824

`A307428(A001006(n+4))*A371200(n)`
-/

namespace A371184.P2417503932890041824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A001006 (n + 4)).toNat * A371200 n

end

end A371184.P2417503932890041824

/-! ## A371184.P17732713131415794232

`A004526(2*A371200(n))/A140825(A082853(n))`
-/

namespace A371184.P17732713131415794232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * A371200 n).toNat : ℚ) / (A140825 (A082853 n).toNat : ℚ)

end

end A371184.P17732713131415794232

/-!
# A371185: Indices of the cubefull numbers in the sequence of powerful numbers.

The programs for A371185, there is no canonical definition to state claims against.
-/

/-! ## A371185.P4296857550950603177

`lt[A376362(n+1), 1]+1`
-/

namespace A371185.P4296857550950603177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376362 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371185.P4296857550950603177

/-! ## A371185.P11640207073797744600

`A217038(A036966(n+1))+1`
-/

namespace A371185.P11640207073797744600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A036966 (n + 1)).toNat + 1

end

end A371185.P11640207073797744600

/-!
# A371186: Indices of the cubes in the sequence of cubefull numbers.

The programs for A371186, there is no canonical definition to state claims against.
-/

/-! ## A371186.P371389411721037127

`∑[A337736(A028310(n))+1]`
-/

namespace A371186.P371389411721037127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337736 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371186.P371389411721037127

/-! ## A371186.P7804195817735068004

`∑[A337736(A000007(n)+n)+1]`
-/

namespace A371186.P7804195817735068004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337736 (A000007 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371186.P7804195817735068004

/-! ## A371186.P5343874434422445073

`∑[A337736(n+1)+1]-A337736(n+1)`
-/

namespace A371186.P5343874434422445073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337736 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337736 (n + 1)

end

end A371186.P5343874434422445073

/-!
# A371187: Numbers k such that there are no cubefull numbers between k^3 and (k+1)^3.

The programs for A371187, there is no canonical definition to state claims against.
-/

/-! ## A371187.P17847911788736608265

`eq[0, A337736(n+1)]+1`
-/

namespace A371187.P17847911788736608265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371187.P17847911788736608265

/-!
# A371188: Indices of the squarefree numbers in the sequence of cubefree numbers.

The programs for A371188, the canonical program `A371188.P16600339561144693768` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371188 has offset 1).

The definition of A371188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371188.P15367482299386668472

`lt[A376366(n+1), 1]+1`
-/

namespace A371188.P15367482299386668472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376366 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371188.P15367482299386668472

namespace A371188

/-- `lt[A376366(n+1), 1]+1` -/
def P15367482299386668472.Spec : Prop :=
  ∀ n, (P15367482299386668472.a n : ℤ) = A371188 (n + 1)

end A371188

/-! ## A371188.P16600339561144693768

`lt[A368712(n+1), 2]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A371188

/-- `lt[A368712(n+1), 2]+1` -/
def P16600339561144693768.Spec : Prop :=
  ∀ n, (P16600339561144693768.a n : ℤ) = A371188 (n + 1)

theorem P16600339561144693768.correct : P16600339561144693768.Spec := by
  intro n
  simp only [A371188, Nat.add_sub_cancel]

end A371188

/-! ## A371188.P147399428177877283

`lt[A000695(n), A277802(n+1)]+1`
-/

namespace A371188.P147399428177877283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371188.P147399428177877283

namespace A371188

/-- `lt[A000695(n), A277802(n+1)]+1` -/
def P147399428177877283.Spec : Prop :=
  ∀ n, (P147399428177877283.a n : ℤ) = A371188 (n + 1)

end A371188

/-! ## A371188.P4900231428957775558

`A060431(A005117(n+1))`
-/

namespace A371188.P4900231428957775558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (A005117 (n + 1)).toNat

end

end A371188.P4900231428957775558

namespace A371188

/-- `A060431(A005117(n+1))` -/
def P4900231428957775558.Spec : Prop :=
  ∀ n, P4900231428957775558.a n = A371188 (n + 1)

end A371188

/-! ## A371188.P18220665189153339887

`A060431(record[A007913(n+1)])`
-/

namespace A371188.P18220665189153339887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371188.P18220665189153339887

namespace A371188

/-- `A060431(record[A007913(n+1)])` -/
def P18220665189153339887.Spec : Prop :=
  ∀ n, P18220665189153339887.a n = A371188 (n + 1)

end A371188

/-! ## A371188.P1507764999903343722

`record[A008966(n+1)*A060431(n+1)]`
-/

namespace A371188.P1507764999903343722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A060431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371188.P1507764999903343722

namespace A371188

/-- `record[A008966(n+1)*A060431(n+1)]` -/
def P1507764999903343722.Spec : Prop :=
  ∀ n, P1507764999903343722.a n = A371188 (n + 1)

end A371188

/-!
# A371189: The smaller of a pair of successive cubefull numbers without a powerful number between them.

The programs for A371189, there is no canonical definition to state claims against.
-/

/-! ## A371189.P7006977946302474773

`A036966(A218444(3*n+4)%A115763(n+1))`
-/

namespace A371189.P7006977946302474773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (Int.tmod (A218444 (3 * n + 4)) (A115763 (n + 1))).toNat

end

end A371189.P7006977946302474773

/-!
# A371190: The smaller of a pair of successive powerful numbers without a nonsquarefree number between them.

The programs for A371190, there is no canonical definition to state claims against.
-/

/-! ## A371190.P2842628079666118791

`record[A008477(record[A297299(n+1)])]`
-/

namespace A371190.P2842628079666118791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371190.P2842628079666118791

/-! ## A371190.P14564624967714560118

`∩[A229083(n+1), A358376(n+1)]`
-/

namespace A371190.P14564624967714560118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371190.P14564624967714560118

/-!
# A371193: a(n) = 2^(4*n-4)*(2^n-1).

The programs for A371193, the canonical program `A371193.P16807310514170765857` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371193 has offset 0).

The definition of A371193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371193.P16132567020786419494

`2^(4*n-4)*(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371193.P16132567020786419494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((4 * n : ℤ) - 4 : ℤ) * ((2 ^ n : ℤ) - 1 : ℚ)

end

end A371193.P16132567020786419494

namespace A371193

/-- `2^(4*n-4)*(2^n-1)` -/
def P16132567020786419494.Spec : Prop :=
  ∀ n, P16132567020786419494.a n = (A371193 n : ℚ)

end A371193

/-! ## A371193.P16807310514170765857

`48*a(n-1)-512*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A371193

/-- `48*a(n-1)-512*a(n-2)` -/
def P16807310514170765857.Spec : Prop :=
  ∀ n, P16807310514170765857.a n = A371193 n

theorem P16807310514170765857.correct : P16807310514170765857.Spec := by
  intro n
  simp only [A371193]

end A371193

/-! ## A371193.P9842476024103086874

`A163839(n)/4`
-/

namespace A371193.P9842476024103086874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163839 n : ℚ) / 4

end

end A371193.P9842476024103086874

namespace A371193

/-- `A163839(n)/4` -/
def P9842476024103086874.Spec : Prop :=
  ∀ n, P9842476024103086874.a n = (A371193 n : ℚ)

end A371193

/-! ## A371193.P10300621306893500055

`A280022(A131577(n))`
-/

namespace A371193.P10300621306893500055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280022 (A131577 n).toNat

end

end A371193.P10300621306893500055

namespace A371193

/-- `A280022(A131577(n))` -/
def P10300621306893500055.Spec : Prop :=
  ∀ n, P10300621306893500055.a n = A371193 n

end A371193

/-! ## A371193.P1754898298471314837

`A280022(A034008(n+1))`
-/

namespace A371193.P1754898298471314837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280022 (A034008 (n + 1)).toNat

end

end A371193.P1754898298471314837

namespace A371193

/-- `A280022(A034008(n+1))` -/
def P1754898298471314837.Spec : Prop :=
  ∀ n, P1754898298471314837.a n = A371193 n

end A371193

/-!
# A371195: List of values q^5-q^4 as q runs through A000961 (that is, 1, primes, and prime powers).

The programs for A371195, there is no canonical definition to state claims against.
-/

/-! ## A371195.P10864031651857507688

`record[n*A304233((n+1)²)]`
-/

namespace A371195.P10864031651857507688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A304233 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371195.P10864031651857507688

/-! ## A371195.P5438514013217133739

`A085538(A000961(n+1))`
-/

namespace A371195.P5438514013217133739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 (A000961 (n + 1)).toNat

end

end A371195.P5438514013217133739

/-! ## A371195.P13037135509708155932

`A085538(A036116(n+1))`
-/

namespace A371195.P13037135509708155932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 (A036116 (n + 1)).toNat

end

end A371195.P13037135509708155932

/-! ## A371195.P11121076004705845193

`A085538(A195943(n+1))`
-/

namespace A371195.P11121076004705845193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 (A195943 (n + 1)).toNat

end

end A371195.P11121076004705845193

/-! ## A371195.P2076858979090521418

`A085538(A329366(n+1))`
-/

namespace A371195.P2076858979090521418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 (A329366 (n + 1)).toNat

end

end A371195.P2076858979090521418

/-!
# A371196: Expansion of e.g.f. 1/(1 + x * log(1 - x - x^2)).

The programs for A371196, there is no canonical definition to state claims against.
-/

/-! ## A371196.P2102972161677819635

`A370607(A367863(n)+A038147(n+1))`
-/

namespace A371196.P2102972161677819635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370607 (A367863 n + A038147 (n + 1)).toNat

end

end A371196.P2102972161677819635

/-! ## A371196.P1523199114144648584

`A072727(A000040(n+1)*A288950(n))`
-/

namespace A371196.P1523199114144648584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A000040 (n + 1) * A288950 n).toNat

end

end A371196.P1523199114144648584

/-!
# A371199: Expansion of e.g.f. 1/(1 + x * log(1 - x^2 - x^3)).

The programs for A371199, there is no canonical definition to state claims against.
-/

/-! ## A371199.P3033157473291126130

`A004526(A376518(n)+A376516(n))`
-/

namespace A371199.P3033157473291126130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A376518 n + A376516 n).toNat

end

end A371199.P3033157473291126130

/-! ## A371199.P4255616194755754533

`A064353(A279120(n))*A292889(n)`
-/

namespace A371199.P4255616194755754533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (A279120 n).toNat * A292889 n

end

end A371199.P4255616194755754533

/-! ## A371199.P8658993203510849681

`A105899(A249672(n))*A292889(n)`
-/

namespace A371199.P8658993203510849681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105899 (A249672 n).toNat * A292889 n

end

end A371199.P8658993203510849681

