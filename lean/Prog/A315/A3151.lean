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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A315100: Coordination sequence Gal.6.670.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315100, there is no canonical definition to state claims against.
-/

/-! ## A315100.P10034981984617782638

`A250120(n)+A037827(A292065(n+1))`
-/

namespace A315100.P10034981984617782638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A037827 (A292065 (n + 1)).toNat

end

end A315100.P10034981984617782638

/-! ## A315100.P11096095264292224985

`A333489(n+1)+A310771(A227549(n+1))`
-/

namespace A315100.P11096095264292224985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1) + A310771 (A227549 (n + 1)).toNat

end

end A315100.P11096095264292224985

/-! ## A315100.P7815675532670843864

`A072154(2*n)+A037827(A292065(n+1))`
-/

namespace A315100.P7815675532670843864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A037827 (A292065 (n + 1)).toNat

end

end A315100.P7815675532670843864

/-! ## A315100.P6493465405105024785

`A037827(A292065(n+1))+record[A072154(n)/(-1)^n]`
-/

namespace A315100.P6493465405105024785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037827 (A292065 (n + 1)).toNat : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315100.P6493465405105024785

/-! ## A315100.P6429195870124924871

`A047486(A008486(n)+1)+A037827(A292065(n+1))`
-/

namespace A315100.P6429195870124924871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat + A037827 (A292065 (n + 1)).toNat

end

end A315100.P6429195870124924871

/-!
# A315101: Coordination sequence Gal.6.472.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315101, there is no canonical definition to state claims against.
-/

/-! ## A315101.P16208739455136216489

`A249871(A068677(n+1))+A064957(n+1)`
-/

namespace A315101.P16208739455136216489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249871 (A068677 (n + 1)).toNat + A064957 (n + 1)

end

end A315101.P16208739455136216489

/-!
# A315102: Coordination sequence Gal.6.587.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315102, there is no canonical definition to state claims against.
-/

/-! ## A315102.P4994968737107175073

`A250120(n)+A001221(A146276(n+2))`
-/

namespace A315102.P4994968737107175073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001221 (A146276 (n + 2)).toNat

end

end A315102.P4994968737107175073

/-! ## A315102.P6188925086505819835

`A350723(A151945(n))+A250120(n)`
-/

namespace A315102.P6188925086505819835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350723 (A151945 n).toNat + A250120 n

end

end A315102.P6188925086505819835

/-! ## A315102.P1509468586459597415

`A250120(n)+A136044(A002379(n))`
-/

namespace A315102.P1509468586459597415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A136044 (A002379 n).toNat

end

end A315102.P1509468586459597415

/-! ## A315102.P12852244699468246330

`A250120(n)+A033665(A109350(n+1))`
-/

namespace A315102.P12852244699468246330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A033665 (A109350 (n + 1)).toNat

end

end A315102.P12852244699468246330

/-! ## A315102.P16418526472312730842

`A333805(A064731(n+1))+A250120(n)`
-/

namespace A315102.P16418526472312730842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A064731 (n + 1)).toNat + A250120 n

end

end A315102.P16418526472312730842

/-!
# A315103: Coordination sequence Gal.4.123.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315103, there is no canonical definition to state claims against.
-/

/-! ## A315103.P14341931745905946636

`A315248(n)-A244895(n)`
-/

namespace A315103.P14341931745905946636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315248 n - A244895 n

end

end A315103.P14341931745905946636

/-! ## A315103.P15574587212992332770

`A315248(n)-A330025(2*n)`
-/

namespace A315103.P15574587212992332770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315248 n - A330025 (2 * n)

end

end A315103.P15574587212992332770

/-! ## A315103.P5104708226548860441

`A250120(n)+A315248(n)%A072154(n)`
-/

namespace A315103.P5104708226548860441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + Int.tmod (A315248 n) (A072154 n)

end

end A315103.P5104708226548860441

/-! ## A315103.P4480835313535060126

`A315248(n)+A330025(2*n)/A307445(A255313(n+1))`
-/

namespace A315103.P4480835313535060126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315248 n : ℚ) + (A330025 (2 * n) : ℚ) / (A307445 (A255313 (n + 1)).toNat : ℚ)

end

end A315103.P4480835313535060126

/-! ## A315103.P11299457418717641527

`A315248(n)+A163804(A313418(3*n+4))`
-/

namespace A315103.P11299457418717641527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315248 n + A163804 (A313418 (3 * n + 4)).toNat

end

end A315103.P11299457418717641527

/-!
# A315104: Coordination sequence Gal.6.475.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315104, there is no canonical definition to state claims against.
-/

/-! ## A315104.P3486868419232657209

`A250120(n)+A180160(A001008(n+1))`
-/

namespace A315104.P3486868419232657209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A180160 (A001008 (n + 1)).toNat

end

end A315104.P3486868419232657209

/-! ## A315104.P9731109222500911510

`A313233(n)+A257991(A140797(n+1))`
-/

namespace A315104.P9731109222500911510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313233 n + A257991 (A140797 (n + 1)).toNat

end

end A315104.P9731109222500911510

/-! ## A315104.P6984906512988910693

`∑[A227277(A227231(3*(n+1))²)]`
-/

namespace A315104.P6984906512988910693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227277 (A227231 (3 * (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315104.P6984906512988910693

/-! ## A315104.P1851885431416805779

`A313233(n)+A294079(A000070(n))`
-/

namespace A315104.P1851885431416805779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313233 n + A294079 (A000070 n).toNat

end

end A315104.P1851885431416805779

/-! ## A315104.P11419706606879175920

`A313233(n)+A288861(A340329(n))`
-/

namespace A315104.P11419706606879175920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313233 n + A288861 (A340329 n).toNat

end

end A315104.P11419706606879175920

/-!
# A315105: Coordination sequence Gal.6.363.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315105, the canonical program `A315105.P8958806795281290820` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315105 has offset 0).

The definition of A315105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315105.P8958806795281290820

`A312484(n)+A004525(A047263(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315105

/-- `A312484(n)+A004525(A047263(n+1))` -/
def P8958806795281290820.Spec : Prop :=
  ∀ n, P8958806795281290820.a n = A315105 n

theorem P8958806795281290820.correct : P8958806795281290820.Spec := by
  intro n
  simp only [A315105]

end A315105

/-! ## A315105.P8969412219771639497

`A004525(A047263(n+1))+A004275(A265187(n+1)+1+n)`
-/

namespace A315105.P8969412219771639497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (n + 1)).toNat + A004275 (A265187 (n + 1) + 1 + (n : ℤ)).toNat

end

end A315105.P8969412219771639497

namespace A315105

/-- `A004525(A047263(n+1))+A004275(A265187(n+1)+1+n)` -/
def P8969412219771639497.Spec : Prop :=
  ∀ n, P8969412219771639497.a n = A315105 n

end A315105

/-! ## A315105.P217010712840792348

`A275024(ceil(A003060(n)/24))+A250120(n)`
-/

namespace A315105.P217010712840792348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 ⌈(A003060 n : ℚ) / 24⌉.toNat + A250120 n

end

end A315105.P217010712840792348

namespace A315105

/-- `A275024(ceil(A003060(n)/24))+A250120(n)` -/
def P217010712840792348.Spec : Prop :=
  ∀ n, P217010712840792348.a n = A315105 n

end A315105

/-! ## A315105.P1837150643535866339

`A334206(3^n)+A131379(n)`
-/

namespace A315105.P1837150643535866339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334206 (3 ^ n) + A131379 n

end

end A315105.P1837150643535866339

namespace A315105

/-- `A334206(3^n)+A131379(n)` -/
def P1837150643535866339.Spec : Prop :=
  ∀ n, P1837150643535866339.a n = A315105 n

end A315105

/-! ## A315105.P9684253051466174337

`A250120(n)+A227860(A022493(n))`
-/

namespace A315105.P9684253051466174337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A227860 (A022493 n).toNat

end

end A315105.P9684253051466174337

namespace A315105

/-- `A250120(n)+A227860(A022493(n))` -/
def P9684253051466174337.Spec : Prop :=
  ∀ n, P9684253051466174337.a n = A315105 n

end A315105

/-!
# A315106: Coordination sequence Gal.5.256.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315106, there is no canonical definition to state claims against.
-/

/-! ## A315106.P18432654943833700418

`A160755(A310520(n)+A078588(n))`
-/

namespace A315106.P18432654943833700418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A310520 n + A078588 n).toNat

end

end A315106.P18432654943833700418

/-! ## A315106.P1987395893250649940

`A315320(n)-A011655(A093967(n))`
-/

namespace A315106.P1987395893250649940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n - A011655 (A093967 n).toNat

end

end A315106.P1987395893250649940

/-! ## A315106.P13519915709323031980

`A160755(or(A078588(n), A310520(n)))`
-/

namespace A315106.P13519915709323031980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A078588 n) (A310520 n)).toNat

end

end A315106.P13519915709323031980

/-! ## A315106.P4933562187857660308

`A315329(n)-A081827(A272814(n+1))`
-/

namespace A315106.P4933562187857660308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315329 n - A081827 (A272814 (n + 1)).toNat

end

end A315106.P4933562187857660308

/-! ## A315106.P2106751677198632877

`A250120(n)+A131576(A006318(n))`
-/

namespace A315106.P2106751677198632877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A131576 (A006318 n).toNat

end

end A315106.P2106751677198632877

/-!
# A315107: Coordination sequence Gal.5.145.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315107, there is no canonical definition to state claims against.
-/

/-! ## A315107.P11427963071911522311

`A250120(n)+A054989(A049864(n))`
-/

namespace A315107.P11427963071911522311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A054989 (A049864 n).toNat

end

end A315107.P11427963071911522311

/-! ## A315107.P3579133553318180726

`A313924(n)-A039995(A336990(n))`
-/

namespace A315107.P3579133553318180726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A039995 (A336990 n).toNat

end

end A315107.P3579133553318180726

/-! ## A315107.P297641591188263323

`A250120(n)+A001221(A069944(n+1))`
-/

namespace A315107.P297641591188263323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001221 (A069944 (n + 1)).toNat

end

end A315107.P297641591188263323

/-! ## A315107.P13318762634020299692

`A219529(n)-A227186(A038547(n+1))`
-/

namespace A315107.P13318762634020299692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A227186 (A038547 (n + 1)).toNat

end

end A315107.P13318762634020299692

/-! ## A315107.P5228386250513832032

`A072154(2*n)+A001221(A069944(n+1))`
-/

namespace A315107.P5228386250513832032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A001221 (A069944 (n + 1)).toNat

end

end A315107.P5228386250513832032

/-!
# A315109: Coordination sequence Gal.5.257.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315109, there is no canonical definition to state claims against.
-/

/-! ## A315109.P13478014973937802276

`A315317(n)-A128834(n)`
-/

namespace A315109.P13478014973937802276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315317 n - A128834 n

end

end A315109.P13478014973937802276

/-! ## A315109.P13502840041015500079

`A315317(n)+A010892(n+2)`
-/

namespace A315109.P13502840041015500079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315317 n + A010892 (n + 2)

end

end A315109.P13502840041015500079

/-! ## A315109.P4356611573266445251

`A315317(n)+A102283(2*gcd(n, ∑[n]))`
-/

namespace A315109.P4356611573266445251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315317 n + A102283 (2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A315109.P4356611573266445251

/-! ## A315109.P14286068740861015754

`A301694(n)-A086009(A237015(n+1))`
-/

namespace A315109.P14286068740861015754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A086009 (A237015 (n + 1)).toNat

end

end A315109.P14286068740861015754

/-! ## A315109.P10162492480603138378

`A301697(n)-A327695(A085478(3*n+1))`
-/

namespace A315109.P10162492480603138378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A327695 (A085478 (3 * n + 1)).toNat

end

end A315109.P10162492480603138378

/-!
# A315110: Coordination sequence Gal.6.555.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315110, there is no canonical definition to state claims against.
-/

/-! ## A315110.P6005010958782838657

`A301724(n)-A353493(A092687(n))`
-/

namespace A315110.P6005010958782838657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - A353493 (A092687 n).toNat

end

end A315110.P6005010958782838657

/-! ## A315110.P15753332582879515148

`A313251(n)+A242775(A058167(n+1))`
-/

namespace A315110.P15753332582879515148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A242775 (A058167 (n + 1)).toNat

end

end A315110.P15753332582879515148

/-! ## A315110.P5250272799912847911

`A250120(n)+A087175(A118932(n))`
-/

namespace A315110.P5250272799912847911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A087175 (A118932 n).toNat

end

end A315110.P5250272799912847911

/-! ## A315110.P2449195479549103799

`A293429(A331717(n))+A250120(n)`
-/

namespace A315110.P2449195479549103799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 (A331717 n).toNat + A250120 n

end

end A315110.P2449195479549103799

/-! ## A315110.P16063561896943266912

`A315760(n)-A001222(A150899(n))`
-/

namespace A315110.P16063561896943266912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - A001222 (A150899 n).toNat

end

end A315110.P16063561896943266912

/-!
# A315111: Coordination sequence Gal.6.556.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315111, there is no canonical definition to state claims against.
-/

/-! ## A315111.P18325968561279456363

`A250120(n)+A068953(A000111(n))`
-/

namespace A315111.P18325968561279456363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A068953 (A000111 n).toNat

end

end A315111.P18325968561279456363

/-! ## A315111.P12413557336436582556

`A250120(n)+A036459(A056272(n))`
-/

namespace A315111.P12413557336436582556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A036459 (A056272 n).toNat

end

end A315111.P12413557336436582556

/-! ## A315111.P14223703087559908872

`A288709(n+1)-A221073(A078146(n+1))`
-/

namespace A315111.P14223703087559908872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288709 (n + 1) - A221073 (A078146 (n + 1)).toNat

end

end A315111.P14223703087559908872

/-!
# A315112: Coordination sequence Gal.6.601.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315112, there is no canonical definition to state claims against.
-/

/-! ## A315112.P15843774473348689522

`A313680(n)+A001222(A090755(n))+1-A060819(n+1)`
-/

namespace A315112.P15843774473348689522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + A001222 (A090755 n).toNat + 1 - A060819 (n + 1)

end

end A315112.P15843774473348689522

/-!
# A315114: Coordination sequence Gal.6.595.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315114, there is no canonical definition to state claims against.
-/

/-! ## A315114.P18138323782945369770

`A250120(n)+A079066(A303537(n))`
-/

namespace A315114.P18138323782945369770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A079066 (A303537 n).toNat

end

end A315114.P18138323782945369770

/-! ## A315114.P16749438914221788247

`A358379(A103295(n))+A250120(n)`
-/

namespace A315114.P16749438914221788247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (A103295 n).toNat + A250120 n

end

end A315114.P16749438914221788247

/-! ## A315114.P13015021582010077689

`xor(A219529(n), A285097(A149886(n)))`
-/

namespace A315114.P13015021582010077689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A219529 n) (A285097 (A149886 n).toNat)

end

end A315114.P13015021582010077689

/-! ## A315114.P16491533610385960000

`A250120(n)+A000120(A307164(n+1))`
-/

namespace A315114.P16491533610385960000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A000120 (A307164 (n + 1)).toNat

end

end A315114.P16491533610385960000

/-! ## A315114.P13992444235505287223

`A301680(n)+A046080(A088352(2*(n+1)))`
-/

namespace A315114.P13992444235505287223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n + A046080 (A088352 (2 * (n + 1))).toNat

end

end A315114.P13992444235505287223

/-!
# A315115: Coordination sequence Gal.5.332.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315115, there is no canonical definition to state claims against.
-/

/-! ## A315115.P4767282314828166265

`A022839(A068937(2*(n+1)))-A068953(A159466(n+1))`
-/

namespace A315115.P4767282314828166265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (A068937 (2 * (n + 1))).toNat - A068953 (A159466 (n + 1)).toNat

end

end A315115.P4767282314828166265

/-!
# A315117: Coordination sequence Gal.5.323.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315117, there is no canonical definition to state claims against.
-/

/-! ## A315117.P8554942886786185069

`A313833(n)-A304438(A276843(n))`
-/

namespace A315117.P8554942886786185069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n - A304438 (A276843 n).toNat

end

end A315117.P8554942886786185069

/-! ## A315117.P8407125692601010394

`A250120(n)+A106028(A199005(n+1))`
-/

namespace A315117.P8407125692601010394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A106028 (A199005 (n + 1)).toNat

end

end A315117.P8407125692601010394

/-! ## A315117.P14124044213152534866

`A313967(n)-A263087(A002496(2*(n+1)))`
-/

namespace A315117.P14124044213152534866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313967 n - A263087 (A002496 (2 * (n + 1))).toNat

end

end A315117.P14124044213152534866

/-!
# A315118: Coordination sequence Gal.6.369.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315118, there is no canonical definition to state claims against.
-/

/-! ## A315118.P2397069066138205536

`A315357(n)-A102669(A172481(n))`
-/

namespace A315118.P2397069066138205536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315357 n - A102669 (A172481 n).toNat

end

end A315118.P2397069066138205536

/-! ## A315118.P11090181892727839562

`A314551(n)+A000120(A001815(n))`
-/

namespace A315118.P11090181892727839562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314551 n + A000120 (A001815 n).toNat

end

end A315118.P11090181892727839562

/-! ## A315118.P14635754791546530446

`or(A030308(A080879(n)), A315114(n))`
-/

namespace A315118.P14635754791546530446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030308 (A080879 n).toNat) (A315114 n)

end

end A315118.P14635754791546530446

/-! ## A315118.P17965620531824967080

`or(A086009(A214459(n)), A315114(n))`
-/

namespace A315118.P17965620531824967080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086009 (A214459 n).toNat) (A315114 n)

end

end A315118.P17965620531824967080

/-! ## A315118.P12968197093223457365

`A313897(n)-A013595(A112877(n+1))`
-/

namespace A315118.P12968197093223457365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313897 n - A013595 (A112877 (n + 1)).toNat

end

end A315118.P12968197093223457365

/-!
# A315123: Coordination sequence Gal.6.45.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315123, there is no canonical definition to state claims against.
-/

/-! ## A315123.P417879708927646517

`lt[A006314(A080226(n+1)), A100880(2*n+1)]`
-/

namespace A315123.P417879708927646517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006314 (A080226 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100880 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A315123.P417879708927646517

/-! ## A315123.P17433076901446608531

`record[A000010(eq[1, A297626(3*n+2)])]`
-/

namespace A315123.P17433076901446608531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297626 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315123.P17433076901446608531

/-! ## A315123.P17563350955673834497

`record[A000010(lt[A297626(3*n+2), 2])]`
-/

namespace A315123.P17563350955673834497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297626 (3 * n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315123.P17563350955673834497

/-! ## A315123.P6226577644647053735

`A296655(lt[A074411(n+1), A355904(n)])`
-/

namespace A315123.P6226577644647053735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315123.P6226577644647053735

/-! ## A315123.P1024411720149798047

`eq[A033273(n+1), A273943(A333218(n+1))]`
-/

namespace A315123.P1024411720149798047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A333218 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315123.P1024411720149798047

/-!
# A315124: Coordination sequence Gal.5.14.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315124, there is no canonical definition to state claims against.
-/

/-! ## A315124.P3104782367670501599

`A343569(eq[A017904(n), A125117(n)])`
-/

namespace A315124.P3104782367670501599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315124.P3104782367670501599

/-! ## A315124.P2645751331528374377

`A020597(n+1)-A268671(A112492(n))`
-/

namespace A315124.P2645751331528374377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020597 (n + 1) - A268671 (A112492 n).toNat

end

end A315124.P2645751331528374377

/-! ## A315124.P7999816144193934784

`A020597(n+1)-A310257(A101333(n))`
-/

namespace A315124.P7999816144193934784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020597 (n + 1) - A310257 (A101333 n).toNat

end

end A315124.P7999816144193934784

/-! ## A315124.P9038344303614232797

`A020597(n+1)-A097862(A325349(n))`
-/

namespace A315124.P9038344303614232797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020597 (n + 1) - A097862 (A325349 n).toNat

end

end A315124.P9038344303614232797

/-! ## A315124.P3079890610394059365

`A020597(n+1)-A014689(A273891(n+1))`
-/

namespace A315124.P3079890610394059365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020597 (n + 1) - A014689 (A273891 (n + 1)).toNat

end

end A315124.P3079890610394059365

/-!
# A315126: Coordination sequence Gal.6.446.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315126, there is no canonical definition to state claims against.
-/

/-! ## A315126.P8194105204113595960

`A162578(n+3)%A006791(3*n+4)`
-/

namespace A315126.P8194105204113595960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162578 (n + 3)) (A006791 (3 * n + 4 + 10))

end

end A315126.P8194105204113595960

/-! ## A315126.P5982657341640377625

`A090190(n+1)%A192319(n+1)+(n+1)/2^val(n+1, 2)`
-/

namespace A315126.P5982657341640377625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A090190 (n + 1)) (A192319 (n + 1)) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A315126.P5982657341640377625

/-! ## A315126.P13659645515958782288

`A162578(n+3)%A000040(A007689(n))`
-/

namespace A315126.P13659645515958782288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162578 (n + 3)) (A000040 (A007689 n).toNat)

end

end A315126.P13659645515958782288

/-! ## A315126.P8488713973011345678

`A177712(A325863(n))%A325863(2*(n+2))`
-/

namespace A315126.P8488713973011345678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177712 (A325863 n).toNat) (A325863 (2 * (n + 2)))

end

end A315126.P8488713973011345678

/-!
# A315127: Coordination sequence Gal.6.56.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315127, there is no canonical definition to state claims against.
-/

/-! ## A315127.P16877066284585372473

`eq[A002264(A006370(n)), A107345(n)]`
-/

namespace A315127.P16877066284585372473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A006370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315127.P16877066284585372473

/-! ## A315127.P12726868960750800724

`eq[A028242(A008611(n)), A107345(n)]`
-/

namespace A315127.P12726868960750800724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008611 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315127.P12726868960750800724

/-! ## A315127.P5487154418295729716

`eq[A000120(n), A296150(A108499(2*(n+1)))]`
-/

namespace A315127.P5487154418295729716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A108499 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315127.P5487154418295729716

/-!
# A315129: Coordination sequence Gal.6.401.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315129, there is no canonical definition to state claims against.
-/

/-! ## A315129.P194695586529612688

`or(A005812(A006318(n)), A008574(n))`
-/

namespace A315129.P194695586529612688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005812 (A006318 n).toNat) (A008574 n)

end

end A315129.P194695586529612688

/-! ## A315129.P18208313740237740024

`or(A000005(A020515(n)), A311585(n))`
-/

namespace A315129.P18208313740237740024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A020515 n).toNat) (A311585 n)

end

end A315129.P18208313740237740024

/-! ## A315129.P3705940565655754517

`or(A000005(A108981(n)), A311230(n))`
-/

namespace A315129.P3705940565655754517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A108981 n).toNat) (A311230 n)

end

end A315129.P3705940565655754517

/-! ## A315129.P330287042768641180

`or(A000005(A151134(n)), A311368(n))`
-/

namespace A315129.P330287042768641180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A151134 n).toNat) (A311368 n)

end

end A315129.P330287042768641180

/-! ## A315129.P4536476345849659475

`or(A007953(A249572(n)), A278244(n))`
-/

namespace A315129.P4536476345849659475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007953 (A249572 n).toNat) (A278244 n)

end

end A315129.P4536476345849659475

/-!
# A315130: Coordination sequence Gal.6.450.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315130, there is no canonical definition to state claims against.
-/

/-! ## A315130.P13377641317335002694

`A218907(A227910(n+3))+4*n`
-/

namespace A315130.P13377641317335002694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218907 (A227910 (n + 3)).toNat + (4 * n : ℤ)

end

end A315130.P13377641317335002694

/-! ## A315130.P11362102783788022205

`or(A008574(n), A218907(A227910(n+3)))`
-/

namespace A315130.P11362102783788022205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A218907 (A227910 (n + 3)).toNat)

end

end A315130.P11362102783788022205

/-! ## A315130.P11351813970354325997

`or(A218907(A227910(n+3)), A311593(n))`
-/

namespace A315130.P11351813970354325997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A218907 (A227910 (n + 3)).toNat) (A311593 n)

end

end A315130.P11351813970354325997

/-! ## A315130.P3244896442103830606

`or(A034444(A096570(2*n+3)), A276340(n))`
-/

namespace A315130.P3244896442103830606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034444 (A096570 (2 * n + 3)).toNat) (A276340 n)

end

end A315130.P3244896442103830606

/-!
# A315131: Coordination sequence Gal.5.186.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315131, there is no canonical definition to state claims against.
-/

/-! ## A315131.P2698115070673700309

`∑[A020639(A164354(n))*A064989(n+1)]`
-/

namespace A315131.P2698115070673700309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A164354 n).toNat * A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315131.P2698115070673700309

/-!
# A315133: Coordination sequence Gal.6.566.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315133, there is no canonical definition to state claims against.
-/

/-! ## A315133.P12193506245428994629

`A034444(3^n)*A065512(n+1)`
-/

namespace A315133.P12193506245428994629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (3 ^ n) * A065512 (n + 1)

end

end A315133.P12193506245428994629

/-! ## A315133.P102254639540822849

`eq[A000034(n), A355735(2*(n+1))]+1`
-/

namespace A315133.P102254639540822849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A315133.P102254639540822849

/-! ## A315133.P11754210895731581097

`A315372(n)-A010051(A179606(n))`
-/

namespace A315133.P11754210895731581097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315372 n - A010051 (A179606 n).toNat

end

end A315133.P11754210895731581097

/-! ## A315133.P6389240997936107920

`A020639(A003211(n))*A065512(n+1)`
-/

namespace A315133.P6389240997936107920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003211 n).toNat * A065512 (n + 1)

end

end A315133.P6389240997936107920

/-!
# A315135: Coordination sequence Gal.4.122.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315135, the canonical program `A315135.P4349306306551454852` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315135 has offset 0).

The definition of A315135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315135.P4349306306551454852

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=12, a(4)=20, a(5)=26, a(6)=32, a(7)=32`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A315135

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4349306306551454852.Spec : Prop :=
  ∀ n, P4349306306551454852.a n = A315135 n

theorem P4349306306551454852.correct : P4349306306551454852.Spec := by
  intro n
  simp only [A315135]

end A315135

/-! ## A315135.P11994799404528152630

`xor(A010673(n), A310416(n))`
-/

namespace A315135.P11994799404528152630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A310416 n)

end

end A315135.P11994799404528152630

namespace A315135

/-- `xor(A010673(n), A310416(n))` -/
def P11994799404528152630.Spec : Prop :=
  ∀ n, P11994799404528152630.a n = A315135 n

end A315135

/-! ## A315135.P15643379870868749328

`xor(Δ[A052928(n)], A310416(n))`
-/

namespace A315135.P15643379870868749328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A310416 n)

end

end A315135.P15643379870868749328

namespace A315135

/-- `xor(Δ[A052928(n)], A310416(n))` -/
def P15643379870868749328.Spec : Prop :=
  ∀ n, P15643379870868749328.a n = A315135 n

end A315135

/-! ## A315135.P2180210759664089275

`xor(Δ[A109613(n)], A310416(n))`
-/

namespace A315135.P2180210759664089275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A310416 n)

end

end A315135.P2180210759664089275

namespace A315135

/-- `xor(Δ[A109613(n)], A310416(n))` -/
def P2180210759664089275.Spec : Prop :=
  ∀ n, P2180210759664089275.a n = A315135 n

end A315135

/-! ## A315135.P14328603818985582936

`xor(A010684(n)-1, A310416(n))`
-/

namespace A315135.P14328603818985582936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n - 1) (A310416 n)

end

end A315135.P14328603818985582936

namespace A315135

/-- `xor(A010684(n)-1, A310416(n))` -/
def P14328603818985582936.Spec : Prop :=
  ∀ n, P14328603818985582936.a n = A315135 n

end A315135

/-! ## A315135.P10701398041434194524

`xor(2*A000035(n), A310416(n))`
-/

namespace A315135.P10701398041434194524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A000035 n) (A310416 n)

end

end A315135.P10701398041434194524

namespace A315135

/-- `xor(2*A000035(n), A310416(n))` -/
def P10701398041434194524.Spec : Prop :=
  ∀ n, P10701398041434194524.a n = A315135 n

end A315135

/-! ## A315135.P6855579857047245532

`xor(A004442(A310416(n)), A010684(n))`
-/

namespace A315135.P6855579857047245532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 (A310416 n).toNat) (A010684 n)

end

end A315135.P6855579857047245532

namespace A315135

/-- `xor(A004442(A310416(n)), A010684(n))` -/
def P6855579857047245532.Spec : Prop :=
  ∀ n, P6855579857047245532.a n = A315135 n

end A315135

/-!
# A315136: Coordination sequence Gal.6.472.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315136, there is no canonical definition to state claims against.
-/

/-! ## A315136.P1429780369750439979

`A005843(A314922(n))-A312777(n)`
-/

namespace A315136.P1429780369750439979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314922 n).toNat - A312777 n

end

end A315136.P1429780369750439979

/-! ## A315136.P8590658993336739642

`and(A045409(A001986(n+1)), A315213(n))`
-/

namespace A315136.P8590658993336739642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045409 (A001986 (n + 1)).toNat) (A315213 n)

end

end A315136.P8590658993336739642

/-! ## A315136.P2707019701296781571

`A284261(A068559(n+1))+A098669(n+1)`
-/

namespace A315136.P2707019701296781571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284261 (A068559 (n + 1)).toNat + A098669 (n + 1)

end

end A315136.P2707019701296781571

/-! ## A315136.P1755407689888215021

`A260943(A098657(n))+A098669(n+1)`
-/

namespace A315136.P1755407689888215021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260943 (A098657 n).toNat + A098669 (n + 1)

end

end A315136.P1755407689888215021

/-! ## A315136.P13735072735237298825

`A315213(n)-A347438(A000031(2*(n+1)))`
-/

namespace A315136.P13735072735237298825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315213 n - A347438 (A000031 (2 * (n + 1))).toNat

end

end A315136.P13735072735237298825

/-!
# A315140: Coordination sequence Gal.6.45.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315140, there is no canonical definition to state claims against.
-/

/-! ## A315140.P16986670928086923781

`A315953(n)+A262684(A262664(n))`
-/

namespace A315140.P16986670928086923781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315953 n + A262684 (A262664 n).toNat

end

end A315140.P16986670928086923781

/-! ## A315140.P15620166969709468316

`record[A043275(A238899(2*(n+2)))]-A238899(n)`
-/

namespace A315140.P15620166969709468316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043275 (A238899 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238899 n

end

end A315140.P15620166969709468316

/-!
# A315141: Coordination sequence Gal.5.14.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315141, there is no canonical definition to state claims against.
-/

/-! ## A315141.P11676690028484238910

`A065033(A095034(n+1)+A008706(n))`
-/

namespace A315141.P11676690028484238910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A095034 (n + 1) + A008706 n).toNat

end

end A315141.P11676690028484238910

/-!
# A315144: Coordination sequence Gal.6.540.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315144, there is no canonical definition to state claims against.
-/

/-! ## A315144.P8412018321983106953

`A315187(n)+A056594(A048470(n))`
-/

namespace A315144.P8412018321983106953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n + A056594 (A048470 n).toNat

end

end A315144.P8412018321983106953

/-! ## A315144.P185413707782903024

`record[A342512(A235700(n+1)²)]`
-/

namespace A315144.P185413707782903024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342512 (A235700 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315144.P185413707782903024

/-! ## A315144.P9458442597492545988

`A315187(n)-Δ[A024361(A339223(n+1))]`
-/

namespace A315144.P9458442597492545988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (A339223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - (f1 (n + 1) - f1 n)

end

end A315144.P9458442597492545988

/-!
# A315145: Coordination sequence Gal.6.445.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315145, there is no canonical definition to state claims against.
-/

/-! ## A315145.P16421808278611455765

`A313397(n)+A092575(A107667(n))`
-/

namespace A315145.P16421808278611455765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313397 n + A092575 (A107667 n).toNat

end

end A315145.P16421808278611455765

/-! ## A315145.P4287494253896325295

`A016825(n)-A135929(A225546(n+1))`
-/

namespace A315145.P4287494253896325295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A135929 (A225546 (n + 1)).toNat

end

end A315145.P4287494253896325295

/-! ## A315145.P12768854988141128510

`A204901(A051915(n+5))+A008586(n)`
-/

namespace A315145.P12768854988141128510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204901 (A051915 (n + 5)).toNat + A008586 n

end

end A315145.P12768854988141128510

/-! ## A315145.P4825082803245531639

`xor(A080425(A054841(n+1)), A311176(n))`
-/

namespace A315145.P4825082803245531639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080425 (A054841 (n + 1)).toNat) (A311176 n)

end

end A315145.P4825082803245531639

/-! ## A315145.P13748080721284408157

`A345436(2*n+1)+A071461(A005385(n+1))`
-/

namespace A315145.P13748080721284408157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345436 (2 * n + 1) + A071461 (A005385 (n + 1)).toNat

end

end A315145.P13748080721284408157

/-!
# A315146: Coordination sequence Gal.5.187.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315146, there is no canonical definition to state claims against.
-/

/-! ## A315146.P9466366660905315161

`A314598(n)+A001221(A208800(n+1))`
-/

namespace A315146.P9466366660905315161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314598 n + A001221 (A208800 (n + 1)).toNat

end

end A315146.P9466366660905315161

/-!
# A315147: Coordination sequence Gal.6.449.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315147, there is no canonical definition to state claims against.
-/

/-! ## A315147.P2434335130966273351

`A253550(n+1)+record[A322937(n+1)]`
-/

namespace A315147.P2434335130966273351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253550 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315147.P2434335130966273351

/-! ## A315147.P18293904358516157195

`A328959(A135881(n))+comp[n*and(n, -n)]+n`
-/

namespace A315147.P18293904358516157195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (A135881 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℤ)

end

end A315147.P18293904358516157195

/-! ## A315147.P15174389638655821202

`A313404(n)+A115199(A049858(n))`
-/

namespace A315147.P15174389638655821202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313404 n + A115199 (A049858 n).toNat

end

end A315147.P15174389638655821202

/-! ## A315147.P6619934710909476910

`A315416(n)-A001221(A230051(n))`
-/

namespace A315147.P6619934710909476910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315416 n - A001221 (A230051 n).toNat

end

end A315147.P6619934710909476910

/-! ## A315147.P4620052154670715145

`A315187(n)-A046660(A193235(n))`
-/

namespace A315147.P4620052154670715145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A046660 (A193235 n).toNat

end

end A315147.P4620052154670715145

/-!
# A315148: Coordination sequence Gal.5.188.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315148, there is no canonical definition to state claims against.
-/

/-! ## A315148.P1346674106864889041

`A247973(A247974(n+1)+A247907(n))`
-/

namespace A315148.P1346674106864889041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A247974 (n + 1) + A247907 n).toNat

end

end A315148.P1346674106864889041

/-! ## A315148.P159940779736911995

`A130235(n+1)-A121373(A007051(n))`
-/

namespace A315148.P159940779736911995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130235 (n + 1) - A121373 (A007051 n).toNat

end

end A315148.P159940779736911995

/-! ## A315148.P5791105096123818222

`eq[A264442(A264428(n)), A302240(n+1)]`
-/

namespace A315148.P5791105096123818222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264442 (A264428 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315148.P5791105096123818222

/-! ## A315148.P17989408903020412369

`eq[1, A285357(A062289(2*n+5))]`
-/

namespace A315148.P17989408903020412369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285357 (A062289 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A315148.P17989408903020412369

/-! ## A315148.P5315180726767181416

`lt[sqrt(A006355(n)), A350529(2*(n+2))]`
-/

namespace A315148.P5315180726767181416
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006355 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A315148.P5315180726767181416

/-!
# A315149: Coordination sequence Gal.5.171.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315149, there is no canonical definition to state claims against.
-/

/-! ## A315149.P5147743987340055065

`A161700(A032559(n+1))+∑[dr(3*n)%4]`
-/

namespace A315149.P5147743987340055065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161700 (A032559 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A315149.P5147743987340055065

/-! ## A315149.P6726750704148882286

`A338006(or(A056000(n), A342778(n+1)))`
-/

namespace A315149.P6726750704148882286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (Int.lor (A056000 n) (A342778 (n + 1))).toNat

end

end A315149.P6726750704148882286

/-! ## A315149.P16020907549763951762

`lt[A356771(A121036(n+1)), A333489(n+1)]`
-/

namespace A315149.P16020907549763951762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356771 (A121036 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A315149.P16020907549763951762

/-! ## A315149.P7380589047922413761

`A352515(A187498(3*(n+1)))+A352489(3*n+1)`
-/

namespace A315149.P7380589047922413761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (A187498 (3 * (n + 1))).toNat + A352489 (3 * n + 1)

end

end A315149.P7380589047922413761

/-!
# A315150: Coordination sequence Gal.5.160.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315150, there is no canonical definition to state claims against.
-/

/-! ## A315150.P243938015441483925

`A014681(A311742(n)+A287378(n))`
-/

namespace A315150.P243938015441483925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A311742 n + A287378 n).toNat

end

end A315150.P243938015441483925

/-! ## A315150.P11232416771489436372

`A014681(A311743(n)+A287378(n))`
-/

namespace A315150.P11232416771489436372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A311743 n + A287378 n).toNat

end

end A315150.P11232416771489436372

/-! ## A315150.P3349567197550710099

`A255053(n)+A006530(A002054(n+1))`
-/

namespace A315150.P3349567197550710099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 n + A006530 (A002054 (n + 1)).toNat

end

end A315150.P3349567197550710099

/-! ## A315150.P4529213159409969612

`A315187(n)-A062707(A032559(n+1))`
-/

namespace A315150.P4529213159409969612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A062707 (A032559 (n + 1)).toNat

end

end A315150.P4529213159409969612

/-! ## A315150.P14318480634382989587

`A287726(n+1)-A341608(A006156(n))`
-/

namespace A315150.P14318480634382989587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1) - A341608 (A006156 n).toNat

end

end A315150.P14318480634382989587

/-!
# A315152: Coordination sequence Gal.6.271.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315152, there is no canonical definition to state claims against.
-/

/-! ## A315152.P13932274919187849977

`A301291(n)+A000035(A219086(n))`
-/

namespace A315152.P13932274919187849977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A000035 (A219086 n).toNat

end

end A315152.P13932274919187849977

/-! ## A315152.P10851618212726860717

`A360123(A000244(n))+A301291(n)`
-/

namespace A315152.P10851618212726860717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360123 (A000244 n).toNat + A301291 n

end

end A315152.P10851618212726860717

/-! ## A315152.P13480274412377021959

`A301291(n)+A286907(A164039(n))`
-/

namespace A315152.P13480274412377021959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A286907 (A164039 n).toNat

end

end A315152.P13480274412377021959

/-! ## A315152.P4722327801851873503

`A301291(n)+A000035(A079547(n+1))`
-/

namespace A315152.P4722327801851873503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A000035 (A079547 (n + 1)).toNat

end

end A315152.P4722327801851873503

/-! ## A315152.P6984832867036455398

`A301291(n)+A252742(A025494(n+1))`
-/

namespace A315152.P6984832867036455398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A252742 (A025494 (n + 1)).toNat

end

end A315152.P6984832867036455398

/-!
# A315153: Coordination sequence Gal.6.180.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315153, there is no canonical definition to state claims against.
-/

/-! ## A315153.P17513415632323834950

`A315154(n)-A055641(A083591(n))`
-/

namespace A315153.P17513415632323834950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315154 n - A055641 (A083591 n).toNat

end

end A315153.P17513415632323834950

/-!
# A315154: Coordination sequence Gal.6.164.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315154, there is no canonical definition to state claims against.
-/

/-! ## A315154.P12560641863745097810

`A004976(n)+A001221(A081198(n))`
-/

namespace A315154.P12560641863745097810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n + A001221 (A081198 n).toNat

end

end A315154.P12560641863745097810

/-! ## A315154.P4915379034217251872

`A315153(n)+A055641(A083591(n))`
-/

namespace A315154.P4915379034217251872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315153 n + A055641 (A083591 n).toNat

end

end A315154.P4915379034217251872

/-! ## A315154.P8409389541683406526

`A311746(n)+A010673(A032790(n+1))`
-/

namespace A315154.P8409389541683406526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311746 n + A010673 (A032790 (n + 1)).toNat

end

end A315154.P8409389541683406526

/-! ## A315154.P18273730320072998869

`A109082(A318099(n+2))+A008586(n)`
-/

namespace A315154.P18273730320072998869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A318099 (n + 2)).toNat + A008586 n

end

end A315154.P18273730320072998869

/-!
# A315155: Coordination sequence Gal.4.92.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315155, there is no canonical definition to state claims against.
-/

/-! ## A315155.P4573657756977581294

`A315188(n)-A064911(A000142(n))`
-/

namespace A315155.P4573657756977581294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315188 n - A064911 (A000142 n).toNat

end

end A315155.P4573657756977581294

/-! ## A315155.P11943953092004995512

`A315188(n)-A024155(A104743(n))`
-/

namespace A315155.P11943953092004995512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315188 n - A024155 (A104743 n).toNat

end

end A315155.P11943953092004995512

/-! ## A315155.P3272454877506207508

`A315188(n)-A007949(A213225(n))`
-/

namespace A315155.P3272454877506207508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315188 n - A007949 (A213225 n).toNat

end

end A315155.P3272454877506207508

/-! ## A315155.P18127581016089476505

`A006075(2*n+5)-A006075(A066049(n+1))`
-/

namespace A315155.P18127581016089476505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006075 (2 * n + 5) - A006075 (A066049 (n + 1)).toNat

end

end A315155.P18127581016089476505

/-!
# A315158: Coordination sequence Gal.6.18.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315158, there is no canonical definition to state claims against.
-/

/-! ## A315158.P7637506926024478459

`or(A256014(A015441(n)), A312228(n))`
-/

namespace A315158.P7637506926024478459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A256014 (A015441 n).toNat) (A312228 n)

end

end A315158.P7637506926024478459

/-!
# A315160: Coordination sequence Gal.6.46.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315160, there is no canonical definition to state claims against.
-/

/-! ## A315160.P5985082209923567011

`A314800(n)+A134667(A004396(n))`
-/

namespace A315160.P5985082209923567011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314800 n + A134667 (A004396 n).toNat

end

end A315160.P5985082209923567011

/-! ## A315160.P5931438358202495354

`A314653(n)+A151909(A145457(n))`
-/

namespace A315160.P5931438358202495354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314653 n + A151909 (A145457 n).toNat

end

end A315160.P5931438358202495354

/-! ## A315160.P12406552665093377584

`A288222(n+1)+A189132(A189102(n+1))`
-/

namespace A315160.P12406552665093377584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288222 (n + 1) + A189132 (A189102 (n + 1)).toNat

end

end A315160.P12406552665093377584

/-! ## A315160.P9540985320570721300

`A288222(n+1)+A010051(A332066(n+4))`
-/

namespace A315160.P9540985320570721300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288222 (n + 1) + A010051 (A332066 (n + 4)).toNat

end

end A315160.P9540985320570721300

/-! ## A315160.P4350520191098561812

`eq[A046548(n+1), A121335(A336455(n+1))]`
-/

namespace A315160.P4350520191098561812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121335 (A336455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315160.P4350520191098561812

/-!
# A315161: Coordination sequence Gal.6.313.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315161, there is no canonical definition to state claims against.
-/

/-! ## A315161.P3423150483865303413

`A043529(A210726(n+2))*A371185(n+1)`
-/

namespace A315161.P3423150483865303413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A210726 (n + 2)).toNat * A371185 (n + 1)

end

end A315161.P3423150483865303413

/-! ## A315161.P16172511545508931235

`A020639(A371208(n+4))*A371185(n+1)`
-/

namespace A315161.P16172511545508931235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A371208 (n + 4)).toNat * A371185 (n + 1)

end

end A315161.P16172511545508931235

/-! ## A315161.P660434384097713065

`A315162(n)-A346632(A030436(n))`
-/

namespace A315161.P660434384097713065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315162 n - A346632 (A030436 n).toNat

end

end A315161.P660434384097713065

/-! ## A315161.P13950544478769034000

`or(A312252(n), A318984(A107767(n+1)))`
-/

namespace A315161.P13950544478769034000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312252 n) (A318984 (A107767 (n + 1)).toNat)

end

end A315161.P13950544478769034000

/-!
# A315162: Coordination sequence Gal.5.15.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315162, there is no canonical definition to state claims against.
-/

/-! ## A315162.P3507045220064589545

`(2-A000007(n))*A004525(A314801(n))`
-/

namespace A315162.P3507045220064589545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A004525 (A314801 n).toNat

end

end A315162.P3507045220064589545

/-! ## A315162.P6568959795157564866

`A020639(A001316(n))*A004525(A314801(n))`
-/

namespace A315162.P6568959795157564866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A004525 (A314801 n).toNat

end

end A315162.P6568959795157564866

/-! ## A315162.P11810117107131575619

`A020639(A004011(n))*A004525(A314801(n))`
-/

namespace A315162.P11810117107131575619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004011 n).toNat * A004525 (A314801 n).toNat

end

end A315162.P11810117107131575619

/-! ## A315162.P3407143840744998329

`A020639(A004277(n))*A004525(A314801(n))`
-/

namespace A315162.P3407143840744998329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A004525 (A314801 n).toNat

end

end A315162.P3407143840744998329

/-! ## A315162.P12482497256995721172

`A020639(A008458(n))*A004525(A314801(n))`
-/

namespace A315162.P12482497256995721172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A004525 (A314801 n).toNat

end

end A315162.P12482497256995721172

/-! ## A315162.P18045675113343910682

`A020639(A008574(n))*A004525(A314801(n))`
-/

namespace A315162.P18045675113343910682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A004525 (A314801 n).toNat

end

end A315162.P18045675113343910682

/-! ## A315162.P15067550799750224585

`A020639(A278222(n))*A004525(A314801(n))`
-/

namespace A315162.P15067550799750224585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278222 n).toNat * A004525 (A314801 n).toNat

end

end A315162.P15067550799750224585

/-! ## A315162.P6524052321293719854

`A014963(A137688(n))*A004525(A314801(n))`
-/

namespace A315162.P6524052321293719854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A137688 n).toNat * A004525 (A314801 n).toNat

end

end A315162.P6524052321293719854

/-!
# A315164: Coordination sequence Gal.6.311.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315164, there is no canonical definition to state claims against.
-/

/-! ## A315164.P18427032235604830386

`A315173(n)-A079813(A049375(n+1))`
-/

namespace A315164.P18427032235604830386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n - A079813 (A049375 (n + 1)).toNat

end

end A315164.P18427032235604830386

/-! ## A315164.P11565335288180302706

`A269303(n+1)+A005245(A268448(3*n+1))`
-/

namespace A315164.P11565335288180302706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (n + 1) + A005245 (A268448 (3 * n + 1)).toNat

end

end A315164.P11565335288180302706

/-! ## A315164.P15626668237918362386

`A311241(n)+A014572(A014584(n))`
-/

namespace A315164.P15626668237918362386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311241 n + A014572 (A014584 n).toNat

end

end A315164.P15626668237918362386

/-! ## A315164.P14385454956529742128

`A311099(n)+A275806(A130739(n+1))`
-/

namespace A315164.P14385454956529742128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311099 n + A275806 (A130739 (n + 1)).toNat

end

end A315164.P14385454956529742128

/-!
# A315165: Coordination sequence Gal.6.312.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315165, there is no canonical definition to state claims against.
-/

/-! ## A315165.P9978046473559965244

`A315399(n)-A276206(A034750(n+1))`
-/

namespace A315165.P9978046473559965244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n - A276206 (A034750 (n + 1)).toNat

end

end A315165.P9978046473559965244

/-! ## A315165.P13364373032623901124

`A315175(n)-A016394(A091924(n+1))`
-/

namespace A315165.P13364373032623901124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315175 n - A016394 (A091924 (n + 1)).toNat

end

end A315165.P13364373032623901124

/-! ## A315165.P16368347976697039310

`A342597(3*n)+A037011(A082697(n+1))`
-/

namespace A315165.P16368347976697039310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342597 (3 * n) + A037011 (A082697 (n + 1)).toNat

end

end A315165.P16368347976697039310

/-! ## A315165.P6821770148028140913

`A029837(A183066(n))+ceil(Δ[n^3/9])`
-/

namespace A315165.P6821770148028140913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A183066 n).toNat + ⌈f1 (n + 1) - f1 n⌉

end

end A315165.P6821770148028140913

/-! ## A315165.P6714688352769459352

`A227378(A328322(n))+A080590(n+1)`
-/

namespace A315165.P6714688352769459352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227378 (A328322 n).toNat + A080590 (n + 1)

end

end A315165.P6714688352769459352

/-!
# A315166: Coordination sequence Gal.6.309.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315166, there is no canonical definition to state claims against.
-/

/-! ## A315166.P12966093640765641435

`or(A008574(n), A134022(A017426(n)))`
-/

namespace A315166.P12966093640765641435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A134022 (A017426 n).toNat)

end

end A315166.P12966093640765641435

/-! ## A315166.P6061389989025417144

`A113512(A004770(n+1))-A326476(n)`
-/

namespace A315166.P6061389989025417144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113512 (A004770 (n + 1)).toNat - A326476 n

end

end A315166.P6061389989025417144

/-! ## A315166.P17843414396310416015

`or(A000001(A276599(n+1)), A008574(n))`
-/

namespace A315166.P17843414396310416015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000001 (A276599 (n + 1)).toNat) (A008574 n)

end

end A315166.P17843414396310416015

/-! ## A315166.P16201708104893734398

`A395965(2*n+2)-A395958(A090860(n+4))`
-/

namespace A315166.P16201708104893734398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395965 (2 * n + 2) - A395958 (A090860 (n + 4)).toNat

end

end A315166.P16201708104893734398

/-! ## A315166.P14732894331088326080

`char[A008486(n)]+2*n+A343030(n)+A000005(4^n)`
-/

namespace A315166.P14732894331088326080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((2 * n : ℤ) + (A343030 n + A000005 (4 ^ n)))

end

end A315166.P14732894331088326080

/-!
# A315167: Coordination sequence Gal.6.310.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315167, there is no canonical definition to state claims against.
-/

/-! ## A315167.P10530685847237798018

`A007095(3*n+2)-A345761(n+1)%3+n`
-/

namespace A315167.P10530685847237798018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (3 * n + 2) - Int.tmod (A345761 (n + 1)) 3 + (n : ℤ)

end

end A315167.P10530685847237798018

/-! ## A315167.P17179336787653198847

`A330025(A129156(n))+A314838(n)`
-/

namespace A315167.P17179336787653198847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A129156 n).toNat + A314838 n

end

end A315167.P17179336787653198847

/-! ## A315167.P12216226842236271996

`A315187(n)-A037888(A000244(n))`
-/

namespace A315167.P12216226842236271996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A037888 (A000244 n).toNat

end

end A315167.P12216226842236271996

/-! ## A315167.P5751250461230717482

`A315265(n)-A140361(A005318(n))`
-/

namespace A315167.P5751250461230717482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A140361 (A005318 n).toNat

end

end A315167.P5751250461230717482

/-! ## A315167.P3462309988651730416

`A314684(n)+A279315(A324756(2*n+3))`
-/

namespace A315167.P3462309988651730416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314684 n + A279315 (A324756 (2 * n + 3)).toNat

end

end A315167.P3462309988651730416

/-!
# A315168: Coordination sequence Gal.5.124.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315168, there is no canonical definition to state claims against.
-/

/-! ## A315168.P13121669435816619392

`A227349(A123865(n+1)+4*n)+4*n`
-/

namespace A315168.P13121669435816619392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A123865 (n + 1) + (4 * n : ℤ)).toNat + (4 * n : ℤ)

end

end A315168.P13121669435816619392

/-! ## A315168.P9875499100516403483

`A315165(n)+A124761(A011930(n))`
-/

namespace A315168.P9875499100516403483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315165 n + A124761 (A011930 n).toNat

end

end A315168.P9875499100516403483

/-! ## A315168.P13804402627093724514

`char[6]+A154487(n+1)-A008683(A041338(n))`
-/

namespace A315168.P13804402627093724514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A154487 (n + 1) - A008683 (A041338 n).toNat)

end

end A315168.P13804402627093724514

/-! ## A315168.P16908526329167145669

`A178598(2*(n+1))-A178620(A178608(n+1))`
-/

namespace A315168.P16908526329167145669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178598 (2 * (n + 1)) - A178620 (A178608 (n + 1)).toNat

end

end A315168.P16908526329167145669

/-!
# A315169: Coordination sequence Gal.6.257.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315169, there is no canonical definition to state claims against.
-/

/-! ## A315169.P4335270934803302080

`A197756(3*n+2)-A197774(A033583(3*n+1))`
-/

namespace A315169.P4335270934803302080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197756 (3 * n + 2) - A197774 (A033583 (3 * n + 1)).toNat

end

end A315169.P4335270934803302080

/-! ## A315169.P11943721317782351858

`A324705(A338831(n)+comp[2*(n+3)]+1)`
-/

namespace A315169.P11943721317782351858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (A338831 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ)).toNat

end

end A315169.P11943721317782351858

/-! ## A315169.P5020114913428574382

`A314677(n)+A165560(A018030(n))`
-/

namespace A315169.P5020114913428574382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A165560 (A018030 n).toNat

end

end A315169.P5020114913428574382

/-! ## A315169.P6411875370023130762

`A333426(n+1)+A103517(n)%A333414(n+1)`
-/

namespace A315169.P6411875370023130762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1) + Int.tmod (A103517 n) (A333414 (n + 1))

end

end A315169.P6411875370023130762

/-!
# A315170: Coordination sequence Gal.6.119.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315170, the canonical program `A315170.P21766199213765349` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315170 has offset 0).

The definition of A315170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 846 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315170.P10387351847583433962

`abs(10*n-A310533(n))`
-/

namespace A315170.P10387351847583433962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310533 n|

end

end A315170.P10387351847583433962

namespace A315170

/-- `abs(10*n-A310533(n))` -/
def P10387351847583433962.Spec : Prop :=
  ∀ n, P10387351847583433962.a n = A315170 n

end A315170

/-! ## A315170.P10629647235582970780

`2*A008706(n)-A310533(n)`
-/

namespace A315170.P10629647235582970780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310533 n

end

end A315170.P10629647235582970780

namespace A315170

/-- `2*A008706(n)-A310533(n)` -/
def P10629647235582970780.Spec : Prop :=
  ∀ n, P10629647235582970780.a n = A315170 n

end A315170

/-! ## A315170.P21766199213765349

`2*A314669(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315170

/-- `2*A314669(n)-A008574(n)` -/
def P21766199213765349.Spec : Prop :=
  ∀ n, P21766199213765349.a n = A315170 n

theorem P21766199213765349.correct : P21766199213765349.Spec := by
  intro n
  simp only [A315170]

end A315170

/-! ## A315170.P11848050520569455044

`A103517(A314669(n)-(2*n+1))`
-/

namespace A315170.P11848050520569455044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314669 n - (2 * n + 1 : ℤ)).toNat

end

end A315170.P11848050520569455044

namespace A315170

/-- `A103517(A314669(n)-(2*n+1))` -/
def P11848050520569455044.Spec : Prop :=
  ∀ n, P11848050520569455044.a n = A315170 n

end A315170

/-! ## A315170.P8117925865619764058

`A014684(2*A004525(A313475(n)))`
-/

namespace A315170.P8117925865619764058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (2 * A004525 (A313475 n).toNat).toNat

end

end A315170.P8117925865619764058

namespace A315170

/-- `A014684(2*A004525(A313475(n)))` -/
def P8117925865619764058.Spec : Prop :=
  ∀ n, P8117925865619764058.a n = A315170 n

end A315170

/-! ## A315170.P1308439409295425985

`A004275(A314669(n)-A004273(n))`
-/

namespace A315170.P1308439409295425985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314669 n - A004273 n).toNat

end

end A315170.P1308439409295425985

namespace A315170

/-- `A004275(A314669(n)-A004273(n))` -/
def P1308439409295425985.Spec : Prop :=
  ∀ n, P1308439409295425985.a n = A315170 n

end A315170

/-! ## A315170.P3959257566458306760

`A005843(A008706(n))-A310533(n)`
-/

namespace A315170.P3959257566458306760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310533 n

end

end A315170.P3959257566458306760

namespace A315170

/-- `A005843(A008706(n))-A310533(n)` -/
def P3959257566458306760.Spec : Prop :=
  ∀ n, P3959257566458306760.a n = A315170 n

end A315170

/-! ## A315170.P15843621297095435508

`A005843(A314669(n))-A008574(n)`
-/

namespace A315170.P15843621297095435508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314669 n).toNat - A008574 n

end

end A315170.P15843621297095435508

namespace A315170

/-- `A005843(A314669(n))-A008574(n)` -/
def P15843621297095435508.Spec : Prop :=
  ∀ n, P15843621297095435508.a n = A315170 n

end A315170

/-! ## A315170.P8732546738545772913

`A004442(A017281(n)-A310533(n))`
-/

namespace A315170.P8732546738545772913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310533 n).toNat

end

end A315170.P8732546738545772913

namespace A315170

/-- `A004442(A017281(n)-A310533(n))` -/
def P8732546738545772913.Spec : Prop :=
  ∀ n, P8732546738545772913.a n = A315170 n

end A315170

/-! ## A315170.P17675121272166375208

`A004275(A314669(n))-A004275(2*n)`
-/

namespace A315170.P17675121272166375208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314669 n).toNat - A004275 (2 * n)

end

end A315170.P17675121272166375208

namespace A315170

/-- `A004275(A314669(n))-A004275(2*n)` -/
def P17675121272166375208.Spec : Prop :=
  ∀ n, P17675121272166375208.a n = A315170 n

end A315170

/-! ## A315170.P5615120391439282355

`A008458(n)+A008574(n)-A310533(n)`
-/

namespace A315170.P5615120391439282355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310533 n)

end

end A315170.P5615120391439282355

namespace A315170

/-- `A008458(n)+A008574(n)-A310533(n)` -/
def P5615120391439282355.Spec : Prop :=
  ∀ n, P5615120391439282355.a n = A315170 n

end A315170

/-! ## A315170.P14060080348262425775

`A004273(A314669(n)-n)-A004273(n)`
-/

namespace A315170.P14060080348262425775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314669 n - (n : ℤ)).toNat - A004273 n

end

end A315170.P14060080348262425775

namespace A315170

/-- `A004273(A314669(n)-n)-A004273(n)` -/
def P14060080348262425775.Spec : Prop :=
  ∀ n, P14060080348262425775.a n = A315170 n

end A315170

/-!
# A315171: Coordination sequence Gal.6.220.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315171, the canonical program `A315171.P4366655332392387557` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315171 has offset 0).

The definition of A315171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315171.P589339374507408869

`abs(A008592(n)-A310532(n))`
-/

namespace A315171.P589339374507408869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310532 n|

end

end A315171.P589339374507408869

namespace A315171

/-- `abs(A008592(n)-A310532(n))` -/
def P589339374507408869.Spec : Prop :=
  ∀ n, P589339374507408869.a n = A315171 n

end A315171

/-! ## A315171.P4366655332392387557

`A311384(n)+2*A330025(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315171

/-- `A311384(n)+2*A330025(n)` -/
def P4366655332392387557.Spec : Prop :=
  ∀ n, P4366655332392387557.a n = A315171 n

theorem P4366655332392387557.correct : P4366655332392387557.Spec := by
  intro n
  simp only [A315171]

end A315171

/-! ## A315171.P11510454532691102532

`2*A008706(n)-A310532(n)`
-/

namespace A315171.P11510454532691102532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310532 n

end

end A315171.P11510454532691102532

namespace A315171

/-- `2*A008706(n)-A310532(n)` -/
def P11510454532691102532.Spec : Prop :=
  ∀ n, P11510454532691102532.a n = A315171 n

end A315171

/-! ## A315171.P5355640656459339467

`2*A314670(n)-A008574(n)`
-/

namespace A315171.P5355640656459339467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314670 n - A008574 n

end

end A315171.P5355640656459339467

namespace A315171

/-- `2*A314670(n)-A008574(n)` -/
def P5355640656459339467.Spec : Prop :=
  ∀ n, P5355640656459339467.a n = A315171 n

end A315171

/-! ## A315171.P5568839416695895393

`A004275(A314670(n)-A004273(n))`
-/

namespace A315171.P5568839416695895393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314670 n - A004273 n).toNat

end

end A315171.P5568839416695895393

namespace A315171

/-- `A004275(A314670(n)-A004273(n))` -/
def P5568839416695895393.Spec : Prop :=
  ∀ n, P5568839416695895393.a n = A315171 n

end A315171

/-! ## A315171.P5653297256471433412

`A134667(n)+A330025(n)+A312907(n)`
-/

namespace A315171.P5653297256471433412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A330025 n + A312907 n)

end

end A315171.P5653297256471433412

namespace A315171

/-- `A134667(n)+A330025(n)+A312907(n)` -/
def P5653297256471433412.Spec : Prop :=
  ∀ n, P5653297256471433412.a n = A315171 n

end A315171

/-! ## A315171.P6005910881056860519

`A008458(n)+A008574(n)-A310532(n)`
-/

namespace A315171.P6005910881056860519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310532 n)

end

end A315171.P6005910881056860519

namespace A315171

/-- `A008458(n)+A008574(n)-A310532(n)` -/
def P6005910881056860519.Spec : Prop :=
  ∀ n, P6005910881056860519.a n = A315171 n

end A315171

/-! ## A315171.P4057396775258262787

`A004273(A314670(n)-n)-A004273(n)`
-/

namespace A315171.P4057396775258262787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314670 n - (n : ℤ)).toNat - A004273 n

end

end A315171.P4057396775258262787

namespace A315171

/-- `A004273(A314670(n)-n)-A004273(n)` -/
def P4057396775258262787.Spec : Prop :=
  ∀ n, P4057396775258262787.a n = A315171 n

end A315171

/-! ## A315171.P17514168386447085529

`A047363(n+1)+A330025(n)+A008486(n)`
-/

namespace A315171.P17514168386447085529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A330025 n + A008486 n)

end

end A315171.P17514168386447085529

namespace A315171

/-- `A047363(n+1)+A330025(n)+A008486(n)` -/
def P17514168386447085529.Spec : Prop :=
  ∀ n, P17514168386447085529.a n = A315171 n

theorem P17514168386447085529.correct : P17514168386447085529.Spec := by
  intro n
  simp only [A315171, Nat.add_sub_cancel, A315171.P17514168386447085529.a, A315171.P4366655332392387557.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315171

/-! ## A315171.P15272799496175316010

`A315707(n)+A330025(n)-A047299(n+1)`
-/

namespace A315171.P15272799496175316010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n + (A330025 n - A047299 (n + 1))

end

end A315171.P15272799496175316010

namespace A315171

/-- `A315707(n)+A330025(n)-A047299(n+1)` -/
def P15272799496175316010.Spec : Prop :=
  ∀ n, P15272799496175316010.a n = A315171 n

end A315171

/-! ## A315171.P2588883483951877919

`A008574(n)+A005843(A314670(n)-A008574(n))`
-/

namespace A315171.P2588883483951877919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314670 n - A008574 n).toNat

end

end A315171.P2588883483951877919

namespace A315171

/-- `A008574(n)+A005843(A314670(n)-A008574(n))` -/
def P2588883483951877919.Spec : Prop :=
  ∀ n, P2588883483951877919.a n = A315171 n

end A315171

/-! ## A315171.P11268104041684863605

`A330025(n)+A314685(n)`
-/

namespace A315171.P11268104041684863605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314685 n

end

end A315171.P11268104041684863605

namespace A315171

/-- `A330025(n)+A314685(n)` -/
def P11268104041684863605.Spec : Prop :=
  ∀ n, P11268104041684863605.a n = A315171 n

end A315171

/-! ## A315171.P9510350009979126852

`A330025(A330025(n)+n)+A314708(n)`
-/

namespace A315171.P9510350009979126852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A314708 n

end

end A315171.P9510350009979126852

namespace A315171

/-- `A330025(A330025(n)+n)+A314708(n)` -/
def P9510350009979126852.Spec : Prop :=
  ∀ n, P9510350009979126852.a n = A315171 n

theorem P9510350009979126852.correct : P9510350009979126852.Spec := by
  intro n
  simp only [A315171, Nat.add_sub_cancel, A315171.P9510350009979126852.a, A315171.P4366655332392387557.a, A311384, A311384.P2354907441128154650.a, A314708, A314708.P15864941767784630642.a, A330025, A330025.P16976327817596103196.a, A008486, A008486.P11623131867527198563.a, A011558, A011558.P14291727921269463220.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315171

/-! ## A315171.P15133533133766379821

`2*A313506(n)-A310379(n)`
-/

namespace A315171.P15133533133766379821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313506 n - A310379 n

end

end A315171.P15133533133766379821

namespace A315171

/-- `2*A313506(n)-A310379(n)` -/
def P15133533133766379821.Spec : Prop :=
  ∀ n, P15133533133766379821.a n = A315171 n

end A315171

/-! ## A315171.P3540113041898881739

`A005843(A314670(n))-A008574(n)`
-/

namespace A315171.P3540113041898881739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314670 n).toNat - A008574 n

end

end A315171.P3540113041898881739

namespace A315171

/-- `A005843(A314670(n))-A008574(n)` -/
def P3540113041898881739.Spec : Prop :=
  ∀ n, P3540113041898881739.a n = A315171 n

end A315171

/-! ## A315171.P4747408735039263401

`A004275(A314670(n))-A004275(2*n)`
-/

namespace A315171.P4747408735039263401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314670 n).toNat - A004275 (2 * n)

end

end A315171.P4747408735039263401

namespace A315171

/-- `A004275(A314670(n))-A004275(2*n)` -/
def P4747408735039263401.Spec : Prop :=
  ∀ n, P4747408735039263401.a n = A315171 n

end A315171

/-! ## A315171.P11540087389479981184

`2*A315468(n)-A008458(n)`
-/

namespace A315171.P11540087389479981184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315468 n - A008458 n

end

end A315171.P11540087389479981184

namespace A315171

/-- `2*A315468(n)-A008458(n)` -/
def P11540087389479981184.Spec : Prop :=
  ∀ n, P11540087389479981184.a n = A315171 n

end A315171

/-! ## A315171.P16763124268721281114

`A008458(n)-A005843(A008458(n)-A315468(n))`
-/

namespace A315171.P16763124268721281114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315468 n).toNat

end

end A315171.P16763124268721281114

namespace A315171

/-- `A008458(n)-A005843(A008458(n)-A315468(n))` -/
def P16763124268721281114.Spec : Prop :=
  ∀ n, P16763124268721281114.a n = A315171 n

end A315171

/-! ## A315171.P4976474704879254088

`A004277(A022144(n)-A314252(n))`
-/

namespace A315171.P4976474704879254088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022144 n - A314252 n).toNat

end

end A315171.P4976474704879254088

namespace A315171

/-- `A004277(A022144(n)-A314252(n))` -/
def P4976474704879254088.Spec : Prop :=
  ∀ n, P4976474704879254088.a n = A315171 n

end A315171

/-! ## A315171.P2952080724725771867

`A005843(A008706(n))-A310532(n)`
-/

namespace A315171.P2952080724725771867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310532 n

end

end A315171.P2952080724725771867

namespace A315171

/-- `A005843(A008706(n))-A310532(n)` -/
def P2952080724725771867.Spec : Prop :=
  ∀ n, P2952080724725771867.a n = A315171 n

end A315171

/-!
# A315172: Coordination sequence Gal.5.54.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315172, the canonical program `A315172.P15889676630402810519` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315172 has offset 0).

The definition of A315172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315172.P15889676630402810519

`2*A314671(n)-A008574(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315172

/-- `2*A314671(n)-A008574(n)` -/
def P15889676630402810519.Spec : Prop :=
  ∀ n, P15889676630402810519.a n = A315172 n

theorem P15889676630402810519.correct : P15889676630402810519.Spec := by
  intro n
  simp only [A315172]

end A315172

/-! ## A315172.P9565447614489073198

`A004275(A314671(n)-A004273(n))`
-/

namespace A315172.P9565447614489073198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314671 n - A004273 n).toNat

end

end A315172.P9565447614489073198

namespace A315172

/-- `A004275(A314671(n)-A004273(n))` -/
def P9565447614489073198.Spec : Prop :=
  ∀ n, P9565447614489073198.a n = A315172 n

end A315172

/-! ## A315172.P3963875111874548481

`A004273(A314671(n)-n)-A004273(n)`
-/

namespace A315172.P3963875111874548481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314671 n - (n : ℤ)).toNat - A004273 n

end

end A315172.P3963875111874548481

namespace A315172

/-- `A004273(A314671(n)-n)-A004273(n)` -/
def P3963875111874548481.Spec : Prop :=
  ∀ n, P3963875111874548481.a n = A315172 n

end A315172

/-! ## A315172.P14213845367101211082

`A008574(n)+A005843(A314671(n)-A008574(n))`
-/

namespace A315172.P14213845367101211082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314671 n - A008574 n).toNat

end

end A315172.P14213845367101211082

namespace A315172

/-- `A008574(n)+A005843(A314671(n)-A008574(n))` -/
def P14213845367101211082.Spec : Prop :=
  ∀ n, P14213845367101211082.a n = A315172 n

end A315172

/-! ## A315172.P5552785509103047988

`A315398(n)-A004396(n-A004396(n))`
-/

namespace A315172.P5552785509103047988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315172.P5552785509103047988

namespace A315172

/-- `A315398(n)-A004396(n-A004396(n))` -/
def P5552785509103047988.Spec : Prop :=
  ∀ n, P5552785509103047988.a n = A315172 n

end A315172

/-! ## A315172.P11090289896984787620

`A005843(A314671(n))-A008574(n)`
-/

namespace A315172.P11090289896984787620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314671 n).toNat - A008574 n

end

end A315172.P11090289896984787620

namespace A315172

/-- `A005843(A314671(n))-A008574(n)` -/
def P11090289896984787620.Spec : Prop :=
  ∀ n, P11090289896984787620.a n = A315172 n

end A315172

/-! ## A315172.P13680750135382307976

`A004275(A314671(n))-A004275(2*n)`
-/

namespace A315172.P13680750135382307976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314671 n).toNat - A004275 (2 * n)

end

end A315172.P13680750135382307976

namespace A315172

/-- `A004275(A314671(n))-A004275(2*n)` -/
def P13680750135382307976.Spec : Prop :=
  ∀ n, P13680750135382307976.a n = A315172 n

end A315172

/-! ## A315172.P13715645774735350038

`abs(A008592(n)-A310531(n))`
-/

namespace A315172.P13715645774735350038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310531 n|

end

end A315172.P13715645774735350038

namespace A315172

/-- `abs(A008592(n)-A310531(n))` -/
def P13715645774735350038.Spec : Prop :=
  ∀ n, P13715645774735350038.a n = A315172 n

end A315172

/-! ## A315172.P12000443746579012530

`2*A008706(n)-A310531(n)`
-/

namespace A315172.P12000443746579012530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310531 n

end

end A315172.P12000443746579012530

namespace A315172

/-- `2*A008706(n)-A310531(n)` -/
def P12000443746579012530.Spec : Prop :=
  ∀ n, P12000443746579012530.a n = A315172 n

end A315172

/-! ## A315172.P3634467361366513404

`A004442(A017281(n)-A310531(n))`
-/

namespace A315172.P3634467361366513404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310531 n).toNat

end

end A315172.P3634467361366513404

namespace A315172

/-- `A004442(A017281(n)-A310531(n))` -/
def P3634467361366513404.Spec : Prop :=
  ∀ n, P3634467361366513404.a n = A315172 n

end A315172

/-! ## A315172.P455916350272047829

`A008458(n)+A008574(n)-A310531(n)`
-/

namespace A315172.P455916350272047829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310531 n)

end

end A315172.P455916350272047829

namespace A315172

/-- `A008458(n)+A008574(n)-A310531(n)` -/
def P455916350272047829.Spec : Prop :=
  ∀ n, P455916350272047829.a n = A315172 n

end A315172

/-! ## A315172.P14660148785721485760

`∑{d}[A008592(n)-A310531(n), A000010(#)]`
-/

namespace A315172.P14660148785721485760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315172.P14660148785721485760

namespace A315172

/-- `∑{d}[A008592(n)-A310531(n), A000010(#)]` -/
def P14660148785721485760.Spec : Prop :=
  ∀ n, P14660148785721485760.a n = A315172 n

end A315172

/-! ## A315172.P313198914535265196

`sqrt((A008592(n)-A310531(n))^A020639(2*(n+1)))`
-/

namespace A315172.P313198914535265196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A008592 n - A310531 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A315172.P313198914535265196

namespace A315172

/-- `sqrt((A008592(n)-A310531(n))^A020639(2*(n+1)))` -/
def P313198914535265196.Spec : Prop :=
  ∀ n, P313198914535265196.a n = (A315172 n : ℝ)

end A315172

/-! ## A315172.P2414312081729600445

`A005843(A008706(n))-A310531(n)`
-/

namespace A315172.P2414312081729600445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310531 n

end

end A315172.P2414312081729600445

namespace A315172

/-- `A005843(A008706(n))-A310531(n)` -/
def P2414312081729600445.Spec : Prop :=
  ∀ n, P2414312081729600445.a n = A315172 n

end A315172

/-! ## A315172.P12321875210128708889

`A004396(n)+A004396(A315398(n)+n)`
-/

namespace A315172.P12321875210128708889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315398 n + (n : ℤ)).toNat

end

end A315172.P12321875210128708889

namespace A315172

/-- `A004396(n)+A004396(A315398(n)+n)` -/
def P12321875210128708889.Spec : Prop :=
  ∀ n, P12321875210128708889.a n = A315172 n

end A315172

/-!
# A315173: Coordination sequence Gal.5.99.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315173, the canonical program `A315173.P10729502057905342118` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315173 has offset 0).

The definition of A315173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315173.P15970820517454780376

`A301291(n)+A046978(n)`
-/

namespace A315173.P15970820517454780376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A046978 n

end

end A315173.P15970820517454780376

namespace A315173

/-- `A301291(n)+A046978(n)` -/
def P15970820517454780376.Spec : Prop :=
  ∀ n, P15970820517454780376.a n = A315173 n

end A315173

/-! ## A315173.P2615362730321823018

`abs(A008592(n)-A310530(n))`
-/

namespace A315173.P2615362730321823018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310530 n|

end

end A315173.P2615362730321823018

namespace A315173

/-- `abs(A008592(n)-A310530(n))` -/
def P2615362730321823018.Spec : Prop :=
  ∀ n, P2615362730321823018.a n = A315173 n

end A315173

/-! ## A315173.P11305193520033260218

`A311625(n)+2*A046978(n)`
-/

namespace A315173.P11305193520033260218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + 2 * A046978 n

end

end A315173.P11305193520033260218

namespace A315173

/-- `A311625(n)+2*A046978(n)` -/
def P11305193520033260218.Spec : Prop :=
  ∀ n, P11305193520033260218.a n = A315173 n

end A315173

/-! ## A315173.P10729502057905342118

`2*A314672(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315173

/-- `2*A314672(n)-A008574(n)` -/
def P10729502057905342118.Spec : Prop :=
  ∀ n, P10729502057905342118.a n = A315173 n

theorem P10729502057905342118.correct : P10729502057905342118.Spec := by
  intro n
  simp only [A315173]

end A315173

/-! ## A315173.P12172515585412637556

`A314672(n)+A004525(A004525(n))`
-/

namespace A315173.P12172515585412637556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A004525 (A004525 n).toNat

end

end A315173.P12172515585412637556

namespace A315173

/-- `A314672(n)+A004525(A004525(n))` -/
def P12172515585412637556.Spec : Prop :=
  ∀ n, P12172515585412637556.a n = A315173 n

theorem P12172515585412637556.correct : P12172515585412637556.Spec := by
  intro n
  simp only [A315173, Nat.add_sub_cancel, A315173.P12172515585412637556.a, A315173.P10729502057905342118.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A314672, A314672.P11952212366419125291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315173

/-! ## A315173.P13986925113773059522

`A004277(A314672(n)-A004277(n))`
-/

namespace A315173.P13986925113773059522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314672 n - A004277 n).toNat

end

end A315173.P13986925113773059522

namespace A315173

/-- `A004277(A314672(n)-A004277(n))` -/
def P13986925113773059522.Spec : Prop :=
  ∀ n, P13986925113773059522.a n = A315173 n

end A315173

/-! ## A315173.P8742064129686216856

`A008574(n)+2*A004525(A004525(n))`
-/

namespace A315173.P8742064129686216856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A004525 (A004525 n).toNat

end

end A315173.P8742064129686216856

namespace A315173

/-- `A008574(n)+2*A004525(A004525(n))` -/
def P8742064129686216856.Spec : Prop :=
  ∀ n, P8742064129686216856.a n = A315173 n

theorem P8742064129686216856.correct : P8742064129686216856.Spec := by
  intro n
  simp only [A315173, Nat.add_sub_cancel, A315173.P8742064129686216856.a, A315173.P10729502057905342118.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A314672, A314672.P11952212366419125291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315173

/-! ## A315173.P12018956937611927437

`A314829(n)+A046978(A046978(n)+n)`
-/

namespace A315173.P12018956937611927437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A315173.P12018956937611927437

namespace A315173

/-- `A314829(n)+A046978(A046978(n)+n)` -/
def P12018956937611927437.Spec : Prop :=
  ∀ n, P12018956937611927437.a n = A315173 n

end A315173

/-! ## A315173.P17311429859271866552

`A008458(n)+A008574(n)-A310530(n)`
-/

namespace A315173.P17311429859271866552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310530 n)

end

end A315173.P17311429859271866552

namespace A315173

/-- `A008458(n)+A008574(n)-A310530(n)` -/
def P17311429859271866552.Spec : Prop :=
  ∀ n, P17311429859271866552.a n = A315173 n

theorem P17311429859271866552.correct : P17311429859271866552.Spec := by
  intro n
  simp only [A315173, Nat.add_sub_cancel, A315173.P17311429859271866552.a, A315173.P10729502057905342118.a, A008458, A008458.P10936398443463225625.a, A008574, A008574.P1300280032690682112.a, A310530, A310530.P10773156038924726472.a, A314672, A314672.P11952212366419125291.a, A004525, A004525.P4158271949796742323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315173

/-! ## A315173.P8657978403026186903

`A008458(n)-A201629(A201629(A004525(n))+n)`
-/

namespace A315173.P8657978403026186903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A201629 (A201629 (A004525 n).toNat + (n : ℤ)).toNat

end

end A315173.P8657978403026186903

namespace A315173

/-- `A008458(n)-A201629(A201629(A004525(n))+n)` -/
def P8657978403026186903.Spec : Prop :=
  ∀ n, P8657978403026186903.a n = A315173 n

end A315173

/-! ## A315173.P4035430313177089327

`A315447(n)-∑[A021913(n)]`
-/

namespace A315173.P4035430313177089327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315173.P4035430313177089327

namespace A315173

/-- `A315447(n)-∑[A021913(n)]` -/
def P4035430313177089327.Spec : Prop :=
  ∀ n, P4035430313177089327.a n = A315173 n

end A315173

/-! ## A315173.P4069635988844472449

`A315447(n)-Δ[A011848(n)]`
-/

namespace A315173.P4069635988844472449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n - (f1 (n + 1) - f1 n)

end

end A315173.P4069635988844472449

namespace A315173

/-- `A315447(n)-Δ[A011848(n)]` -/
def P4069635988844472449.Spec : Prop :=
  ∀ n, P4069635988844472449.a n = A315173 n

end A315173

/-! ## A315173.P3109650783415025748

`A315399(n)-A004525(n-A004525(n))`
-/

namespace A315173.P3109650783415025748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A315173.P3109650783415025748

namespace A315173

/-- `A315399(n)-A004525(n-A004525(n))` -/
def P3109650783415025748.Spec : Prop :=
  ∀ n, P3109650783415025748.a n = A315173 n

end A315173

/-! ## A315173.P1452389934778229275

`2*A315469(n)-A008458(n)`
-/

namespace A315173.P1452389934778229275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315469 n - A008458 n

end

end A315173.P1452389934778229275

namespace A315173

/-- `2*A315469(n)-A008458(n)` -/
def P1452389934778229275.Spec : Prop :=
  ∀ n, P1452389934778229275.a n = A315173 n

end A315173

/-! ## A315173.P15022918331026643200

`A004525(A004525(n))+A315469(n)-n`
-/

namespace A315173.P15022918331026643200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A315469 n - (n : ℤ))

end

end A315173.P15022918331026643200

namespace A315173

/-- `A004525(A004525(n))+A315469(n)-n` -/
def P15022918331026643200.Spec : Prop :=
  ∀ n, P15022918331026643200.a n = A315173 n

theorem P15022918331026643200.correct : P15022918331026643200.Spec := by
  intro n
  simp only [A315173, Nat.add_sub_cancel, A315173.P15022918331026643200.a, A315173.P10729502057905342118.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A314672, A314672.P11952212366419125291.a, A315469, A315469.P9148809959578598591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315173

/-! ## A315173.P14726898323376026807

`A313480(A313480(2*n))-A008574(A313480(2*n))`
-/

namespace A315173.P14726898323376026807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 (A313480 (2 * n)).toNat - A008574 (A313480 (2 * n)).toNat

end

end A315173.P14726898323376026807

namespace A315173

/-- `A313480(A313480(2*n))-A008574(A313480(2*n))` -/
def P14726898323376026807.Spec : Prop :=
  ∀ n, P14726898323376026807.a n = A315173 n

end A315173

/-!
# A315174: Coordination sequence Gal.6.533.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315174, there is no canonical definition to state claims against.
-/

/-! ## A315174.P828423474202601955

`∩[A252474(n+1), A315172(n)]`
-/

namespace A315174.P828423474202601955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A315174.P828423474202601955

/-! ## A315174.P14154321089790812621

`A198395(n)+A000120(A074406(n+1))`
-/

namespace A315174.P14154321089790812621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198395 n + A000120 (A074406 (n + 1)).toNat

end

end A315174.P14154321089790812621

/-! ## A315174.P645171569674970243

`∩[A180493(n+1), A315172(n)]`
-/

namespace A315174.P645171569674970243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A315174.P645171569674970243

/-! ## A315174.P15483737989462978760

`record[gcd(A080851(n+2), A394442(n))]`
-/

namespace A315174.P15483737989462978760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080851 (n + 2)) (A394442 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315174.P15483737989462978760

/-! ## A315174.P13959412720061684507

`A005555(2*n)*A237353(A023109(2*n+1))`
-/

namespace A315174.P13959412720061684507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (2 * n) * A237353 (A023109 (2 * n + 1)).toNat

end

end A315174.P13959412720061684507

/-!
# A315175: Coordination sequence Gal.4.42.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315175, the canonical program `A315175.P18372680328209174901` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315175 has offset 0).

The definition of A315175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315175.P10006933753280105908

`A008458(n)-2*∑[floor(atan(n%7))]`
-/

namespace A315175.P10006933753280105908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((n % 7 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315175.P10006933753280105908

namespace A315175

/-- `A008458(n)-2*∑[floor(atan(n%7))]` -/
def P10006933753280105908.Spec : Prop :=
  ∀ n, P10006933753280105908.a n = A315175 n

end A315175

/-! ## A315175.P18372680328209174901

`A313487(n)+A238469(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315175

/-- `A313487(n)+A238469(n)` -/
def P18372680328209174901.Spec : Prop :=
  ∀ n, P18372680328209174901.a n = A315175 n

theorem P18372680328209174901.correct : P18372680328209174901.Spec := by
  intro n
  simp only [A315175]

end A315175

/-! ## A315175.P5846627480698610045

`abs(A008592(n)-A310529(n))`
-/

namespace A315175.P5846627480698610045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310529 n|

end

end A315175.P5846627480698610045

namespace A315175

/-- `abs(A008592(n)-A310529(n))` -/
def P5846627480698610045.Spec : Prop :=
  ∀ n, P5846627480698610045.a n = A315175 n

end A315175

/-! ## A315175.P16401474198181941371

`A310372(n)+2*A238469(n)`
-/

namespace A315175.P16401474198181941371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + 2 * A238469 n

end

end A315175.P16401474198181941371

namespace A315175

/-- `A310372(n)+2*A238469(n)` -/
def P16401474198181941371.Spec : Prop :=
  ∀ n, P16401474198181941371.a n = A315175 n

end A315175

/-! ## A315175.P11233758224828474256

`A313487(n)+A238470(2*n)`
-/

namespace A315175.P11233758224828474256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 n + A238470 (2 * n)

end

end A315175.P11233758224828474256

namespace A315175

/-- `A313487(n)+A238470(2*n)` -/
def P11233758224828474256.Spec : Prop :=
  ∀ n, P11233758224828474256.a n = A315175 n

end A315175

/-! ## A315175.P1297307220624716283

`2*A008706(n)-A310529(n)`
-/

namespace A315175.P1297307220624716283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310529 n

end

end A315175.P1297307220624716283

namespace A315175

/-- `2*A008706(n)-A310529(n)` -/
def P1297307220624716283.Spec : Prop :=
  ∀ n, P1297307220624716283.a n = A315175 n

end A315175

/-! ## A315175.P15349717191204870155

`2*A314674(n)-A008574(n)`
-/

namespace A315175.P15349717191204870155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314674 n - A008574 n

end

end A315175.P15349717191204870155

namespace A315175

/-- `2*A314674(n)-A008574(n)` -/
def P15349717191204870155.Spec : Prop :=
  ∀ n, P15349717191204870155.a n = A315175 n

end A315175

/-! ## A315175.P10083923122210465313

`2*A313487(n)-A310372(n)`
-/

namespace A315175.P10083923122210465313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313487 n - A310372 n

end

end A315175.P10083923122210465313

namespace A315175

/-- `2*A313487(n)-A310372(n)` -/
def P10083923122210465313.Spec : Prop :=
  ∀ n, P10083923122210465313.a n = A315175 n

end A315175

/-! ## A315175.P7090961112701199363

`A022144(n)-2*A191275(n+1)`
-/

namespace A315175.P7090961112701199363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A191275 (n + 1)

end

end A315175.P7090961112701199363

namespace A315175

/-- `A022144(n)-2*A191275(n+1)` -/
def P7090961112701199363.Spec : Prop :=
  ∀ n, P7090961112701199363.a n = A315175 n

end A315175

/-! ## A315175.P4346452527525618953

`A004275(A314674(n)-A004273(n))`
-/

namespace A315175.P4346452527525618953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314674 n - A004273 n).toNat

end

end A315175.P4346452527525618953

namespace A315175

/-- `A004275(A314674(n)-A004273(n))` -/
def P4346452527525618953.Spec : Prop :=
  ∀ n, P4346452527525618953.a n = A315175 n

end A315175

/-! ## A315175.P12080855961990575611

`A008458(n)+A008574(n)-A310529(n)`
-/

namespace A315175.P12080855961990575611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310529 n)

end

end A315175.P12080855961990575611

namespace A315175

/-- `A008458(n)+A008574(n)-A310529(n)` -/
def P12080855961990575611.Spec : Prop :=
  ∀ n, P12080855961990575611.a n = A315175 n

end A315175

/-! ## A315175.P7080755143577810064

`A004273(A314674(n)-n)-A004273(n)`
-/

namespace A315175.P7080755143577810064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314674 n - (n : ℤ)).toNat - A004273 n

end

end A315175.P7080755143577810064

namespace A315175

/-- `A004273(A314674(n)-n)-A004273(n)` -/
def P7080755143577810064.Spec : Prop :=
  ∀ n, P7080755143577810064.a n = A315175 n

end A315175

/-! ## A315175.P17561771090494972380

`A004275(A314674(n))-A004275(2*n)`
-/

namespace A315175.P17561771090494972380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314674 n).toNat - A004275 (2 * n)

end

end A315175.P17561771090494972380

namespace A315175

/-- `A004275(A314674(n))-A004275(2*n)` -/
def P17561771090494972380.Spec : Prop :=
  ∀ n, P17561771090494972380.a n = A315175 n

end A315175

/-! ## A315175.P15459161411996023467

`A005843(A008706(n))-A310529(n)`
-/

namespace A315175.P15459161411996023467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310529 n

end

end A315175.P15459161411996023467

namespace A315175

/-- `A005843(A008706(n))-A310529(n)` -/
def P15459161411996023467.Spec : Prop :=
  ∀ n, P15459161411996023467.a n = A315175 n

end A315175

/-! ## A315175.P6289866745975179981

`A310341(2*n)-4*n`
-/

namespace A315175.P6289866745975179981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310341 (2 * n) - (4 * n : ℤ)

end

end A315175.P6289866745975179981

namespace A315175

/-- `A310341(2*n)-4*n` -/
def P6289866745975179981.Spec : Prop :=
  ∀ n, P6289866745975179981.a n = A315175 n

end A315175

/-!
# A315176: Coordination sequence Gal.6.446.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315176, there is no canonical definition to state claims against.
-/

/-! ## A315176.P16257166126360114210

`∩[A129618(n+1), A315172(n)]`
-/

namespace A315176.P16257166126360114210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A315176.P16257166126360114210

/-! ## A315176.P3363911145552509640

`A004277(A024678(n+1)%A244848(n+1))`
-/

namespace A315176.P3363911145552509640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A024678 (n + 1)) (A244848 (n + 1))).toNat

end

end A315176.P3363911145552509640

/-! ## A315176.P1825126285025211724

`A138389(2*n+1)*A214056(A330687(n+1))`
-/

namespace A315176.P1825126285025211724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (2 * n + 1) * A214056 (A330687 (n + 1)).toNat

end

end A315176.P1825126285025211724

/-! ## A315176.P4500168612141886744

`A239008(n+1)+A000005(A000302(n))`
-/

namespace A315176.P4500168612141886744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239008 (n + 1) + A000005 (A000302 n).toNat

end

end A315176.P4500168612141886744

/-!
# A315177: Coordination sequence Gal.6.255.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315177, the canonical program `A315177.P46381774396344281` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315177 has offset 0).

The definition of A315177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315177.P9513082427789257334

`2*A315183(n)-A315188(n)`
-/

namespace A315177.P9513082427789257334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315183 n - A315188 n

end

end A315177.P9513082427789257334

namespace A315177

/-- `2*A315183(n)-A315188(n)` -/
def P9513082427789257334.Spec : Prop :=
  ∀ n, P9513082427789257334.a n = A315177 n

end A315177

/-! ## A315177.P46381774396344281

`2*A315470(n)-A008458(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315177

/-- `2*A315470(n)-A008458(n)` -/
def P46381774396344281.Spec : Prop :=
  ∀ n, P46381774396344281.a n = A315177 n

theorem P46381774396344281.correct : P46381774396344281.Spec := by
  intro n
  simp only [A315177]

end A315177

/-! ## A315177.P14471909393332709701

`2*A313572(n)-A310423(n)`
-/

namespace A315177.P14471909393332709701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313572 n - A310423 n

end

end A315177.P14471909393332709701

namespace A315177

/-- `2*A313572(n)-A310423(n)` -/
def P14471909393332709701.Spec : Prop :=
  ∀ n, P14471909393332709701.a n = A315177 n

end A315177

/-! ## A315177.P870516698706521313

`A103517(A315470(n)-A016777(n))`
-/

namespace A315177.P870516698706521313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315470 n - A016777 n).toNat

end

end A315177.P870516698706521313

namespace A315177

/-- `A103517(A315470(n)-A016777(n))` -/
def P870516698706521313.Spec : Prop :=
  ∀ n, P870516698706521313.a n = A315177 n

end A315177

/-! ## A315177.P9801335842234782547

`A103517(A315470(n)%A016777(n))`
-/

namespace A315177.P9801335842234782547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315470 n) (A016777 n)).toNat

end

end A315177.P9801335842234782547

namespace A315177

/-- `A103517(A315470(n)%A016777(n))` -/
def P9801335842234782547.Spec : Prop :=
  ∀ n, P9801335842234782547.a n = A315177 n

end A315177

/-! ## A315177.P15834884724789781329

`A008458(n)-A005843(A008458(n)-A315470(n))`
-/

namespace A315177.P15834884724789781329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315470 n).toNat

end

end A315177.P15834884724789781329

namespace A315177

/-- `A008458(n)-A005843(A008458(n)-A315470(n))` -/
def P15834884724789781329.Spec : Prop :=
  ∀ n, P15834884724789781329.a n = A315177 n

end A315177

/-! ## A315177.P8205554812548172719

`abs(A008592(n)-A310526(n))`
-/

namespace A315177.P8205554812548172719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310526 n|

end

end A315177.P8205554812548172719

namespace A315177

/-- `abs(A008592(n)-A310526(n))` -/
def P8205554812548172719.Spec : Prop :=
  ∀ n, P8205554812548172719.a n = A315177 n

end A315177

/-! ## A315177.P12026882835312052663

`2*A008706(n)-A310526(n)`
-/

namespace A315177.P12026882835312052663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310526 n

end

end A315177.P12026882835312052663

namespace A315177

/-- `2*A008706(n)-A310526(n)` -/
def P12026882835312052663.Spec : Prop :=
  ∀ n, P12026882835312052663.a n = A315177 n

end A315177

/-! ## A315177.P12296588500598583136

`A008458(n)+A008574(n)-A310526(n)`
-/

namespace A315177.P12296588500598583136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310526 n)

end

end A315177.P12296588500598583136

namespace A315177

/-- `A008458(n)+A008574(n)-A310526(n)` -/
def P12296588500598583136.Spec : Prop :=
  ∀ n, P12296588500598583136.a n = A315177 n

end A315177

/-! ## A315177.P11975011437010395914

`∑{d}[A008592(n)-A310526(n), A000010(#)]`
-/

namespace A315177.P11975011437010395914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315177.P11975011437010395914

namespace A315177

/-- `∑{d}[A008592(n)-A310526(n), A000010(#)]` -/
def P11975011437010395914.Spec : Prop :=
  ∀ n, P11975011437010395914.a n = A315177 n

end A315177

/-! ## A315177.P7610183380472039248

`A004442(A017281(n)-A310526(n))`
-/

namespace A315177.P7610183380472039248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310526 n).toNat

end

end A315177.P7610183380472039248

namespace A315177

/-- `A004442(A017281(n)-A310526(n))` -/
def P7610183380472039248.Spec : Prop :=
  ∀ n, P7610183380472039248.a n = A315177 n

end A315177

/-! ## A315177.P8662067461896992925

`A005843(A008706(n))-A310526(n)`
-/

namespace A315177.P8662067461896992925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310526 n

end

end A315177.P8662067461896992925

namespace A315177

/-- `A005843(A008706(n))-A310526(n)` -/
def P8662067461896992925.Spec : Prop :=
  ∀ n, P8662067461896992925.a n = A315177 n

end A315177

/-! ## A315177.P4599080845974749453

`A005843(A315470(n))-A008458(n)`
-/

namespace A315177.P4599080845974749453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315470 n).toNat - A008458 n

end

end A315177.P4599080845974749453

namespace A315177

/-- `A005843(A315470(n))-A008458(n)` -/
def P4599080845974749453.Spec : Prop :=
  ∀ n, P4599080845974749453.a n = A315177 n

end A315177

/-! ## A315177.P10343343698530547071

`A004273(A315470(n))-A004273(3*n)`
-/

namespace A315177.P10343343698530547071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A315470 n).toNat - A004273 (3 * n)

end

end A315177.P10343343698530547071

namespace A315177

/-- `A004273(A315470(n))-A004273(3*n)` -/
def P10343343698530547071.Spec : Prop :=
  ∀ n, P10343343698530547071.a n = A315177 n

end A315177

/-! ## A315177.P8535631989874188955

`A065502(A008458(n))-A310526(n)`
-/

namespace A315177.P8535631989874188955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310526 n

end

end A315177.P8535631989874188955

namespace A315177

/-- `A065502(A008458(n))-A310526(n)` -/
def P8535631989874188955.Spec : Prop :=
  ∀ n, P8535631989874188955.a n = A315177 n

end A315177

/-! ## A315177.P1531579977214185497

`A315645(2*n)+2-A001281(2*n+1)`
-/

namespace A315177.P1531579977214185497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315645 (2 * n) + (2 - A001281 (2 * n + 1))

end

end A315177.P1531579977214185497

namespace A315177

/-- `A315645(2*n)+2-A001281(2*n+1)` -/
def P1531579977214185497.Spec : Prop :=
  ∀ n, P1531579977214185497.a n = A315177 n

end A315177

/-! ## A315177.P3826868485343024797

`A315645(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315177.P3826868485343024797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315645 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315177.P3826868485343024797

namespace A315177

/-- `A315645(2*n)+A008458(n+1)-(12*n+6)` -/
def P3826868485343024797.Spec : Prop :=
  ∀ n, P3826868485343024797.a n = A315177 n

end A315177

/-!
# A315178: Coordination sequence Gal.4.62.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315178, the canonical program `A315178.P17735622215823449936` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315178 has offset 0).

The definition of A315178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315178.P17735622215823449936

`A301298(n)+A128834(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315178

/-- `A301298(n)+A128834(n)` -/
def P17735622215823449936.Spec : Prop :=
  ∀ n, P17735622215823449936.a n = A315178 n

theorem P17735622215823449936.correct : P17735622215823449936.Spec := by
  intro n
  simp only [A315178]

end A315178

/-! ## A315178.P15622526097187021486

`abs(A008592(n)-A310525(n))`
-/

namespace A315178.P15622526097187021486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310525 n|

end

end A315178.P15622526097187021486

namespace A315178

/-- `abs(A008592(n)-A310525(n))` -/
def P15622526097187021486.Spec : Prop :=
  ∀ n, P15622526097187021486.a n = A315178 n

end A315178

/-! ## A315178.P740435816003806710

`A004277(A047424(n+1)+n)`
-/

namespace A315178.P740435816003806710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047424 (n + 1) + (n : ℤ)).toNat

end

end A315178.P740435816003806710

namespace A315178

/-- `A004277(A047424(n+1)+n)` -/
def P740435816003806710.Spec : Prop :=
  ∀ n, P740435816003806710.a n = A315178 n

end A315178

/-! ## A315178.P2813673924664672006

`A004275(A047564(n+1)+n)`
-/

namespace A315178.P2813673924664672006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047564 (n + 1) + (n : ℤ)).toNat

end

end A315178.P2813673924664672006

namespace A315178

/-- `A004275(A047564(n+1)+n)` -/
def P2813673924664672006.Spec : Prop :=
  ∀ n, P2813673924664672006.a n = A315178 n

end A315178

/-! ## A315178.P6361973984396231873

`A301298(n)-A010892(n+2)`
-/

namespace A315178.P6361973984396231873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A010892 (n + 2)

end

end A315178.P6361973984396231873

namespace A315178

/-- `A301298(n)-A010892(n+2)` -/
def P6361973984396231873.Spec : Prop :=
  ∀ n, P6361973984396231873.a n = A315178 n

end A315178

/-! ## A315178.P1939793471437314499

`A298024(n)+2*A134667(n)`
-/

namespace A315178.P1939793471437314499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + 2 * A134667 n

end

end A315178.P1939793471437314499

namespace A315178

/-- `A298024(n)+2*A134667(n)` -/
def P1939793471437314499.Spec : Prop :=
  ∀ n, P1939793471437314499.a n = A315178 n

end A315178

/-! ## A315178.P1663797668962404473

`2*A314677(n)-A008574(n)`
-/

namespace A315178.P1663797668962404473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314677 n - A008574 n

end

end A315178.P1663797668962404473

namespace A315178

/-- `2*A314677(n)-A008574(n)` -/
def P1663797668962404473.Spec : Prop :=
  ∀ n, P1663797668962404473.a n = A315178 n

end A315178

/-! ## A315178.P9601178031608597011

`A008458(n)-∑[2*A131735(n)]`
-/

namespace A315178.P9601178031608597011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315178.P9601178031608597011

namespace A315178

/-- `A008458(n)-∑[2*A131735(n)]` -/
def P9601178031608597011.Spec : Prop :=
  ∀ n, P9601178031608597011.a n = A315178 n

end A315178

/-! ## A315178.P4592236245346215265

`A004275(A047424(n+1)+1+n)`
-/

namespace A315178.P4592236245346215265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047424 (n + 1) + 1 + (n : ℤ)).toNat

end

end A315178.P4592236245346215265

namespace A315178

/-- `A004275(A047424(n+1)+1+n)` -/
def P4592236245346215265.Spec : Prop :=
  ∀ n, P4592236245346215265.a n = A315178 n

end A315178

/-! ## A315178.P11540705499674284217

`A315683(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315178.P11540705499674284217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315178.P11540705499674284217

namespace A315178

/-- `A315683(2*n)+A008458(n+1)-(12*n+6)` -/
def P11540705499674284217.Spec : Prop :=
  ∀ n, P11540705499674284217.a n = A315178 n

end A315178

/-! ## A315178.P5470210163279158997

`A315688(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315178.P5470210163279158997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315688 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315178.P5470210163279158997

namespace A315178

/-- `A315688(2*n)+A008458(n+1)-(12*n+6)` -/
def P5470210163279158997.Spec : Prop :=
  ∀ n, P5470210163279158997.a n = A315178 n

end A315178

/-! ## A315178.P4116148420895549016

`A314677(n)+A004525(A004396(n))`
-/

namespace A315178.P4116148420895549016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A004525 (A004396 n).toNat

end

end A315178.P4116148420895549016

namespace A315178

/-- `A314677(n)+A004525(A004396(n))` -/
def P4116148420895549016.Spec : Prop :=
  ∀ n, P4116148420895549016.a n = A315178 n

end A315178

/-! ## A315178.P16676705241142913051

`A004273(A047564(n+1))+A004273(n)`
-/

namespace A315178.P16676705241142913051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047564 (n + 1)).toNat + A004273 n

end

end A315178.P16676705241142913051

namespace A315178

/-- `A004273(A047564(n+1))+A004273(n)` -/
def P16676705241142913051.Spec : Prop :=
  ∀ n, P16676705241142913051.a n = A315178 n

end A315178

/-! ## A315178.P15321664754693711773

`A008574(n)+2*A004525(A004396(n))`
-/

namespace A315178.P15321664754693711773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A004525 (A004396 n).toNat

end

end A315178.P15321664754693711773

namespace A315178

/-- `A008574(n)+2*A004525(A004396(n))` -/
def P15321664754693711773.Spec : Prop :=
  ∀ n, P15321664754693711773.a n = A315178 n

end A315178

/-! ## A315178.P17796480904307848110

`A301298(n)+A046978(A004396(2*n))`
-/

namespace A315178.P17796480904307848110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A046978 (A004396 (2 * n)).toNat

end

end A315178.P17796480904307848110

namespace A315178

/-- `A301298(n)+A046978(A004396(2*n))` -/
def P17796480904307848110.Spec : Prop :=
  ∀ n, P17796480904307848110.a n = A315178 n

end A315178

/-! ## A315178.P11176601855771291742

`∑{d}[A008592(n)-A310525(n), A000010(#)]`
-/

namespace A315178.P11176601855771291742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315178.P11176601855771291742

namespace A315178

/-- `∑{d}[A008592(n)-A310525(n), A000010(#)]` -/
def P11176601855771291742.Spec : Prop :=
  ∀ n, P11176601855771291742.a n = A315178 n

end A315178

/-! ## A315178.P18243626574819855215

`A313510(n)+A134667(n)`
-/

namespace A315178.P18243626574819855215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + A134667 n

end

end A315178.P18243626574819855215

namespace A315178

/-- `A313510(n)+A134667(n)` -/
def P18243626574819855215.Spec : Prop :=
  ∀ n, P18243626574819855215.a n = A315178 n

end A315178

/-! ## A315178.P4264910837631549252

`2*A315471(n)-A008458(n)`
-/

namespace A315178.P4264910837631549252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315471 n - A008458 n

end

end A315178.P4264910837631549252

namespace A315178

/-- `2*A315471(n)-A008458(n)` -/
def P4264910837631549252.Spec : Prop :=
  ∀ n, P4264910837631549252.a n = A315178 n

end A315178

/-! ## A315178.P577630862752004889

`A315405(n)-∑[A022003(n)]`
-/

namespace A315178.P577630862752004889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315405 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315178.P577630862752004889

namespace A315178

/-- `A315405(n)-∑[A022003(n)]` -/
def P577630862752004889.Spec : Prop :=
  ∀ n, P577630862752004889.a n = A315178 n

end A315178

/-! ## A315178.P13226008455797337878

`A004396(n)+A315405(n)-n`
-/

namespace A315178.P13226008455797337878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315405 n - (n : ℤ))

end

end A315178.P13226008455797337878

namespace A315178

/-- `A004396(n)+A315405(n)-n` -/
def P13226008455797337878.Spec : Prop :=
  ∀ n, P13226008455797337878.a n = A315178 n

end A315178

/-!
# A315180: Coordination sequence Gal.6.313.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315180, there is no canonical definition to state claims against.
-/

/-! ## A315180.P7649621332700077579

`or(A000119(A018342(n+1)), A008574(n))`
-/

namespace A315180.P7649621332700077579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000119 (A018342 (n + 1)).toNat) (A008574 n)

end

end A315180.P7649621332700077579

/-!
# A315182: Coordination sequence Gal.6.155.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315182, the canonical program `A315182.P6624325949262258584` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315182 has offset 0).

The definition of A315182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315182.P15699458579313942255

`2*A314688(n)-A311312(n)`
-/

namespace A315182.P15699458579313942255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314688 n - A311312 n

end

end A315182.P15699458579313942255

namespace A315182

/-- `2*A314688(n)-A311312(n)` -/
def P15699458579313942255.Spec : Prop :=
  ∀ n, P15699458579313942255.a n = A315182 n

end A315182

/-! ## A315182.P6624325949262258584

`A314677(n)+A004396(A004525(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315182

/-- `A314677(n)+A004396(A004525(n))` -/
def P6624325949262258584.Spec : Prop :=
  ∀ n, P6624325949262258584.a n = A315182 n

theorem P6624325949262258584.correct : P6624325949262258584.Spec := by
  intro n
  simp only [A315182]

end A315182

/-! ## A315182.P17485617334047292566

`A314893(n)+A128834(n)`
-/

namespace A315182.P17485617334047292566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + A128834 n

end

end A315182.P17485617334047292566

namespace A315182

/-- `A314893(n)+A128834(n)` -/
def P17485617334047292566.Spec : Prop :=
  ∀ n, P17485617334047292566.a n = A315182 n

end A315182

/-! ## A315182.P17883438030929337158

`A314893(n)-A010892(n+2)`
-/

namespace A315182.P17883438030929337158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n - A010892 (n + 2)

end

end A315182.P17883438030929337158

namespace A315182

/-- `A314893(n)-A010892(n+2)` -/
def P17883438030929337158.Spec : Prop :=
  ∀ n, P17883438030929337158.a n = A315182 n

end A315182

/-! ## A315182.P12292449088556270275

`A314683(n)+A004525(A004396(n))`
-/

namespace A315182.P12292449088556270275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + A004525 (A004396 n).toNat

end

end A315182.P12292449088556270275

namespace A315182

/-- `A314683(n)+A004525(A004396(n))` -/
def P12292449088556270275.Spec : Prop :=
  ∀ n, P12292449088556270275.a n = A315182 n

end A315182

/-! ## A315182.P8163543199155821089

`A315453(n)-∑[A021913(n)]`
-/

namespace A315182.P8163543199155821089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315453 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315182.P8163543199155821089

namespace A315182

/-- `A315453(n)-∑[A021913(n)]` -/
def P8163543199155821089.Spec : Prop :=
  ∀ n, P8163543199155821089.a n = A315182 n

theorem P8163543199155821089.correct : P8163543199155821089.Spec := by
  intro n
  simp only [A315182, Nat.add_sub_cancel, A315182.P8163543199155821089.f1, A315182.P8163543199155821089.a, A315182.P6624325949262258584.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A021913, A021913.P3902253882929539198.a, A314677, A314677.P709044874121363319.a, A315453, A315453.P11183259861073746390.f1, A315453.P11183259861073746390.a, A008486, A008486.P11623131867527198563.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315182

/-! ## A315182.P10567388903881926157

`A315453(n)-Δ[A011848(n)]`
-/

namespace A315182.P10567388903881926157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315453 n - (f1 (n + 1) - f1 n)

end

end A315182.P10567388903881926157

namespace A315182

/-- `A315453(n)-Δ[A011848(n)]` -/
def P10567388903881926157.Spec : Prop :=
  ∀ n, P10567388903881926157.a n = A315182 n

end A315182

/-! ## A315182.P3681746650911778139

`abs(A008592(n)-A310524(n))`
-/

namespace A315182.P3681746650911778139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310524 n|

end

end A315182.P3681746650911778139

namespace A315182

/-- `abs(A008592(n)-A310524(n))` -/
def P3681746650911778139.Spec : Prop :=
  ∀ n, P3681746650911778139.a n = A315182 n

end A315182

/-! ## A315182.P11279994883357211283

`2*A008706(n)-A310524(n)`
-/

namespace A315182.P11279994883357211283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310524 n

end

end A315182.P11279994883357211283

namespace A315182

/-- `2*A008706(n)-A310524(n)` -/
def P11279994883357211283.Spec : Prop :=
  ∀ n, P11279994883357211283.a n = A315182 n

end A315182

/-! ## A315182.P8521056195467721599

`A008458(n)+A008574(n)-A310524(n)`
-/

namespace A315182.P8521056195467721599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310524 n)

end

end A315182.P8521056195467721599

namespace A315182

/-- `A008458(n)+A008574(n)-A310524(n)` -/
def P8521056195467721599.Spec : Prop :=
  ∀ n, P8521056195467721599.a n = A315182 n

end A315182

/-! ## A315182.P1360705015009678287

`A315476(n)-∑[A131735(n)]`
-/

namespace A315182.P1360705015009678287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315182.P1360705015009678287

namespace A315182

/-- `A315476(n)-∑[A131735(n)]` -/
def P1360705015009678287.Spec : Prop :=
  ∀ n, P1360705015009678287.a n = A315182 n

end A315182

/-! ## A315182.P4677595785748713841

`A315405(n)-A004396(n-A004525(n))`
-/

namespace A315182.P4677595785748713841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315405 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A315182.P4677595785748713841

namespace A315182

/-- `A315405(n)-A004396(n-A004525(n))` -/
def P4677595785748713841.Spec : Prop :=
  ∀ n, P4677595785748713841.a n = A315182 n

end A315182

/-! ## A315182.P16058968363562251311

`A005843(A008706(n))-A310524(n)`
-/

namespace A315182.P16058968363562251311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310524 n

end

end A315182.P16058968363562251311

namespace A315182

/-- `A005843(A008706(n))-A310524(n)` -/
def P16058968363562251311.Spec : Prop :=
  ∀ n, P16058968363562251311.a n = A315182 n

end A315182

/-! ## A315182.P1722798037176104796

`A004396(A315405(n)+A004525(n))+n`
-/

namespace A315182.P1722798037176104796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315405 n + A004525 n).toNat + (n : ℤ)

end

end A315182.P1722798037176104796

namespace A315182

/-- `A004396(A315405(n)+A004525(n))+n` -/
def P1722798037176104796.Spec : Prop :=
  ∀ n, P1722798037176104796.a n = A315182 n

end A315182

/-!
# A315183: Coordination sequence Gal.6.201.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315183, the canonical program `A315183.P7947179711603598772` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315183 has offset 0).

The definition of A315183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315183.P16671102564202913371

`(A315188(n)+A315177(n))/2`
-/

namespace A315183.P16671102564202913371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315188 n + A315177 n : ℚ) / 2

end

end A315183.P16671102564202913371

namespace A315183

/-- `(A315188(n)+A315177(n))/2` -/
def P16671102564202913371.Spec : Prop :=
  ∀ n, P16671102564202913371.a n = (A315183 n : ℚ)

end A315183

/-! ## A315183.P14641682105535528029

`A315177(n)+A004525(A315188(n)-A315177(n))`
-/

namespace A315183.P14641682105535528029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315177 n + A004525 (A315188 n - A315177 n).toNat

end

end A315183.P14641682105535528029

namespace A315183

/-- `A315177(n)+A004525(A315188(n)-A315177(n))` -/
def P14641682105535528029.Spec : Prop :=
  ∀ n, P14641682105535528029.a n = A315183 n

end A315183

/-! ## A315183.P10977859900108983588

`abs(A008592(n)-A310523(n))`
-/

namespace A315183.P10977859900108983588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310523 n|

end

end A315183.P10977859900108983588

namespace A315183

/-- `abs(A008592(n)-A310523(n))` -/
def P10977859900108983588.Spec : Prop :=
  ∀ n, P10977859900108983588.a n = A315183 n

end A315183

/-! ## A315183.P1649337524284323306

`2*A008706(n)-A310523(n)`
-/

namespace A315183.P1649337524284323306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310523 n

end

end A315183.P1649337524284323306

namespace A315183

/-- `2*A008706(n)-A310523(n)` -/
def P1649337524284323306.Spec : Prop :=
  ∀ n, P1649337524284323306.a n = A315183 n

end A315183

/-! ## A315183.P6679252930245102080

`A135042(Δ[n²])-A310523(n)`
-/

namespace A315183.P6679252930245102080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A310523 n

end

end A315183.P6679252930245102080

namespace A315183

/-- `A135042(Δ[n²])-A310523(n)` -/
def P6679252930245102080.Spec : Prop :=
  ∀ n, P6679252930245102080.a n = A315183 n

end A315183

/-! ## A315183.P4749450044221251727

`A184418(A008574(n))-A310523(n)`
-/

namespace A315183.P4749450044221251727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310523 n

end

end A315183.P4749450044221251727

namespace A315183

/-- `A184418(A008574(n))-A310523(n)` -/
def P4749450044221251727.Spec : Prop :=
  ∀ n, P4749450044221251727.a n = A315183 n

end A315183

/-! ## A315183.P18239515526852806232

`A008458(n)+A008574(n)-A310523(n)`
-/

namespace A315183.P18239515526852806232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310523 n)

end

end A315183.P18239515526852806232

namespace A315183

/-- `A008458(n)+A008574(n)-A310523(n)` -/
def P18239515526852806232.Spec : Prop :=
  ∀ n, P18239515526852806232.a n = A315183 n

end A315183

/-! ## A315183.P1508124163457208561

`A008458(n)-A310523(n)%A004277(n)`
-/

namespace A315183.P1508124163457208561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - Int.tmod (A310523 n) (A004277 n)

end

end A315183.P1508124163457208561

namespace A315183

/-- `A008458(n)-A310523(n)%A004277(n)` -/
def P1508124163457208561.Spec : Prop :=
  ∀ n, P1508124163457208561.a n = A315183 n

end A315183

/-! ## A315183.P17463653784277989326

`∑{d}[A008592(n)-A310523(n), A000010(#)]`
-/

namespace A315183.P17463653784277989326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315183.P17463653784277989326

namespace A315183

/-- `∑{d}[A008592(n)-A310523(n), A000010(#)]` -/
def P17463653784277989326.Spec : Prop :=
  ∀ n, P17463653784277989326.a n = A315183 n

end A315183

/-! ## A315183.P13628936763940765345

`A005843(A008706(n))-A310523(n)`
-/

namespace A315183.P13628936763940765345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310523 n

end

end A315183.P13628936763940765345

namespace A315183

/-- `A005843(A008706(n))-A310523(n)` -/
def P13628936763940765345.Spec : Prop :=
  ∀ n, P13628936763940765345.a n = A315183 n

end A315183

/-! ## A315183.P17333472666103054603

`A004277(A008458(n)-n)-A310523(n)`
-/

namespace A315183.P17333472666103054603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008458 n - (n : ℤ)).toNat - A310523 n

end

end A315183.P17333472666103054603

namespace A315183

/-- `A004277(A008458(n)-n)-A310523(n)` -/
def P17333472666103054603.Spec : Prop :=
  ∀ n, P17333472666103054603.a n = A315183 n

end A315183

/-! ## A315183.P6723489741684755721

`A065502(A008458(n))-A310523(n)`
-/

namespace A315183.P6723489741684755721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310523 n

end

end A315183.P6723489741684755721

namespace A315183

/-- `A065502(A008458(n))-A310523(n)` -/
def P6723489741684755721.Spec : Prop :=
  ∀ n, P6723489741684755721.a n = A315183 n

end A315183

/-! ## A315183.P7947179711603598772

`A313475(2*n)-4*n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A315183

/-- `A313475(2*n)-4*n` -/
def P7947179711603598772.Spec : Prop :=
  ∀ n, P7947179711603598772.a n = A315183 n

theorem P7947179711603598772.correct : P7947179711603598772.Spec := by
  intro n
  simp only [A315183]

end A315183

/-! ## A315183.P576371825380000892

`A315629(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315183.P576371825380000892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315629 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315183.P576371825380000892

namespace A315183

/-- `A315629(2*n)/(4*n+2-A004277(2*n))` -/
def P576371825380000892.Spec : Prop :=
  ∀ n, P576371825380000892.a n = (A315183 n : ℚ)

end A315183

/-! ## A315183.P16603474299040744760

`A004525(A315629(2*n))`
-/

namespace A315183.P16603474299040744760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315629 (2 * n)).toNat

end

end A315183.P16603474299040744760

namespace A315183

/-- `A004525(A315629(2*n))` -/
def P16603474299040744760.Spec : Prop :=
  ∀ n, P16603474299040744760.a n = A315183 n

end A315183

/-! ## A315183.P13107472590491735750

`A004526(A315629(2*n)+1)`
-/

namespace A315183.P13107472590491735750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315629 (2 * n) + 1).toNat

end

end A315183.P13107472590491735750

namespace A315183

/-- `A004526(A315629(2*n)+1)` -/
def P13107472590491735750.Spec : Prop :=
  ∀ n, P13107472590491735750.a n = A315183 n

end A315183

/-! ## A315183.P3661096330979329503

`A004525(A315188(n)+A315177(n))`
-/

namespace A315183.P3661096330979329503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315188 n + A315177 n).toNat

end

end A315183.P3661096330979329503

namespace A315183

/-- `A004525(A315188(n)+A315177(n))` -/
def P3661096330979329503.Spec : Prop :=
  ∀ n, P3661096330979329503.a n = A315183 n

end A315183

/-! ## A315183.P17327630117908804947

`2*A008574(2*n)-A313929(2*n)`
-/

namespace A315183.P17327630117908804947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313929 (2 * n)

end

end A315183.P17327630117908804947

namespace A315183

/-- `2*A008574(2*n)-A313929(2*n)` -/
def P17327630117908804947.Spec : Prop :=
  ∀ n, P17327630117908804947.a n = A315183 n

end A315183

/-!
# A315185: Coordination sequence Gal.5.115.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315185, the canonical program `A315185.P5138845310423041581` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315185 has offset 0).

The definition of A315185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315185.P10155793545995332818

`abs(A008592(n)-A310521(n))`
-/

namespace A315185.P10155793545995332818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310521 n|

end

end A315185.P10155793545995332818

namespace A315185

/-- `abs(A008592(n)-A310521(n))` -/
def P10155793545995332818.Spec : Prop :=
  ∀ n, P10155793545995332818.a n = A315185 n

end A315185

/-! ## A315185.P15223559615592284419

`2*A008706(n)-A310521(n)`
-/

namespace A315185.P15223559615592284419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310521 n

end

end A315185.P15223559615592284419

namespace A315185

/-- `2*A008706(n)-A310521(n)` -/
def P15223559615592284419.Spec : Prop :=
  ∀ n, P15223559615592284419.a n = A315185 n

end A315185

/-! ## A315185.P10394420070998617684

`abs(A017281(n)-(A310521(n)+1))`
-/

namespace A315185.P10394420070998617684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017281 n - (A310521 n + 1)|

end

end A315185.P10394420070998617684

namespace A315185

/-- `abs(A017281(n)-(A310521(n)+1))` -/
def P10394420070998617684.Spec : Prop :=
  ∀ n, P10394420070998617684.a n = A315185 n

end A315185

/-! ## A315185.P5138845310423041581

`A313683(n)+A102283(A006369(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315185

/-- `A313683(n)+A102283(A006369(n))` -/
def P5138845310423041581.Spec : Prop :=
  ∀ n, P5138845310423041581.a n = A315185 n

theorem P5138845310423041581.correct : P5138845310423041581.Spec := by
  intro n
  simp only [A315185]

end A315185

/-! ## A315185.P7641841198744743959

`A313683(n)-A102283(2*A006369(n))`
-/

namespace A315185.P7641841198744743959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - A102283 (2 * A006369 n).toNat

end

end A315185.P7641841198744743959

namespace A315185

/-- `A313683(n)-A102283(2*A006369(n))` -/
def P7641841198744743959.Spec : Prop :=
  ∀ n, P7641841198744743959.a n = A315185 n

end A315185

/-! ## A315185.P13021423326044003394

`A008458(n)+A008574(n)-A310521(n)`
-/

namespace A315185.P13021423326044003394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310521 n)

end

end A315185.P13021423326044003394

namespace A315185

/-- `A008458(n)+A008574(n)-A310521(n)` -/
def P13021423326044003394.Spec : Prop :=
  ∀ n, P13021423326044003394.a n = A315185 n

end A315185

/-! ## A315185.P5247380677749948279

`A314736(n)+A128834(A004396(n))`
-/

namespace A315185.P5247380677749948279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n + A128834 (A004396 n).toNat

end

end A315185.P5247380677749948279

namespace A315185

/-- `A314736(n)+A128834(A004396(n))` -/
def P5247380677749948279.Spec : Prop :=
  ∀ n, P5247380677749948279.a n = A315185 n

end A315185

/-! ## A315185.P17436881169511212825

`2*A315475(n)-A008458(n)`
-/

namespace A315185.P17436881169511212825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315475 n - A008458 n

end

end A315185.P17436881169511212825

namespace A315185

/-- `2*A315475(n)-A008458(n)` -/
def P17436881169511212825.Spec : Prop :=
  ∀ n, P17436881169511212825.a n = A315185 n

end A315185

/-! ## A315185.P801858667790323454

`A103517(A315475(n)-A016777(n))`
-/

namespace A315185.P801858667790323454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315475 n - A016777 n).toNat

end

end A315185.P801858667790323454

namespace A315185

/-- `A103517(A315475(n)-A016777(n))` -/
def P801858667790323454.Spec : Prop :=
  ∀ n, P801858667790323454.a n = A315185 n

end A315185

/-! ## A315185.P11944055236872772500

`A103517(A315475(n)%A016777(n))`
-/

namespace A315185.P11944055236872772500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315475 n) (A016777 n)).toNat

end

end A315185.P11944055236872772500

namespace A315185

/-- `A103517(A315475(n)%A016777(n))` -/
def P11944055236872772500.Spec : Prop :=
  ∀ n, P11944055236872772500.a n = A315185 n

end A315185

/-! ## A315185.P14634464943674119371

`A008458(n)-A005843(A008458(n)-A315475(n))`
-/

namespace A315185.P14634464943674119371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315475 n).toNat

end

end A315185.P14634464943674119371

namespace A315185

/-- `A008458(n)-A005843(A008458(n)-A315475(n))` -/
def P14634464943674119371.Spec : Prop :=
  ∀ n, P14634464943674119371.a n = A315185 n

end A315185

/-! ## A315185.P2019818364917561995

`A004442(A017281(n)-A310521(n))`
-/

namespace A315185.P2019818364917561995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310521 n).toNat

end

end A315185.P2019818364917561995

namespace A315185

/-- `A004442(A017281(n)-A310521(n))` -/
def P2019818364917561995.Spec : Prop :=
  ∀ n, P2019818364917561995.a n = A315185 n

end A315185

/-! ## A315185.P5021603383961318836

`A005843(A008706(n))-A310521(n)`
-/

namespace A315185.P5021603383961318836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310521 n

end

end A315185.P5021603383961318836

namespace A315185

/-- `A005843(A008706(n))-A310521(n)` -/
def P5021603383961318836.Spec : Prop :=
  ∀ n, P5021603383961318836.a n = A315185 n

end A315185

/-! ## A315185.P2934799202663129436

`A005843(A315475(n))-A008458(n)`
-/

namespace A315185.P2934799202663129436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315475 n).toNat - A008458 n

end

end A315185.P2934799202663129436

namespace A315185

/-- `A005843(A315475(n))-A008458(n)` -/
def P2934799202663129436.Spec : Prop :=
  ∀ n, P2934799202663129436.a n = A315185 n

end A315185

/-! ## A315185.P2328956798431956665

`A315646(2*n)+2-A001281(2*n+1)`
-/

namespace A315185.P2328956798431956665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 (2 * n) + (2 - A001281 (2 * n + 1))

end

end A315185.P2328956798431956665

namespace A315185

/-- `A315646(2*n)+2-A001281(2*n+1)` -/
def P2328956798431956665.Spec : Prop :=
  ∀ n, P2328956798431956665.a n = A315185 n

end A315185

/-! ## A315185.P9970463178202790683

`A315646(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315185.P9970463178202790683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315185.P9970463178202790683

namespace A315185

/-- `A315646(2*n)+A008458(n+1)-(12*n+6)` -/
def P9970463178202790683.Spec : Prop :=
  ∀ n, P9970463178202790683.a n = A315185 n

end A315185

/-!
# A315186: Coordination sequence Gal.6.263.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315186, the canonical program `A315186.P13057520070277243894` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315186 has offset 0).

The definition of A315186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315186.P13057520070277243894

`2*A314684(n)-A008574(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315186

/-- `2*A314684(n)-A008574(n)` -/
def P13057520070277243894.Spec : Prop :=
  ∀ n, P13057520070277243894.a n = A315186 n

theorem P13057520070277243894.correct : P13057520070277243894.Spec := by
  intro n
  simp only [A315186]

end A315186

/-! ## A315186.P13307636506764258095

`A004275(A314684(n)-A004273(n))`
-/

namespace A315186.P13307636506764258095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314684 n - A004273 n).toNat

end

end A315186.P13307636506764258095

namespace A315186

/-- `A004275(A314684(n)-A004273(n))` -/
def P13307636506764258095.Spec : Prop :=
  ∀ n, P13307636506764258095.a n = A315186 n

end A315186

/-! ## A315186.P380966473488158934

`A004277(A314684(n)-A004277(n))`
-/

namespace A315186.P380966473488158934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314684 n - A004277 n).toNat

end

end A315186.P380966473488158934

namespace A315186

/-- `A004277(A314684(n)-A004277(n))` -/
def P380966473488158934.Spec : Prop :=
  ∀ n, P380966473488158934.a n = A315186 n

end A315186

/-! ## A315186.P12161165289192767936

`A004273(A314684(n)-n)-A004273(n)`
-/

namespace A315186.P12161165289192767936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A314684 n - (n : ℤ)).toNat - A004273 n

end

end A315186.P12161165289192767936

namespace A315186

/-- `A004273(A314684(n)-n)-A004273(n)` -/
def P12161165289192767936.Spec : Prop :=
  ∀ n, P12161165289192767936.a n = A315186 n

end A315186

/-! ## A315186.P17124452462917078154

`A008574(n)+A005843(A314684(n)-A008574(n))`
-/

namespace A315186.P17124452462917078154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A314684 n - A008574 n).toNat

end

end A315186.P17124452462917078154

namespace A315186

/-- `A008574(n)+A005843(A314684(n)-A008574(n))` -/
def P17124452462917078154.Spec : Prop :=
  ∀ n, P17124452462917078154.a n = A315186 n

end A315186

/-! ## A315186.P17768536520324963705

`abs(A008592(n)-A310520(n))`
-/

namespace A315186.P17768536520324963705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310520 n|

end

end A315186.P17768536520324963705

namespace A315186

/-- `abs(A008592(n)-A310520(n))` -/
def P17768536520324963705.Spec : Prop :=
  ∀ n, P17768536520324963705.a n = A315186 n

end A315186

/-! ## A315186.P4074255214639004163

`2*A008706(n)-A310520(n)`
-/

namespace A315186.P4074255214639004163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310520 n

end

end A315186.P4074255214639004163

namespace A315186

/-- `2*A008706(n)-A310520(n)` -/
def P4074255214639004163.Spec : Prop :=
  ∀ n, P4074255214639004163.a n = A315186 n

end A315186

/-! ## A315186.P751711874628234441

`A000038(n)+A008592(n)-A310520(n)`
-/

namespace A315186.P751711874628234441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A310520 n)

end

end A315186.P751711874628234441

namespace A315186

/-- `A000038(n)+A008592(n)-A310520(n)` -/
def P751711874628234441.Spec : Prop :=
  ∀ n, P751711874628234441.a n = A315186 n

end A315186

/-! ## A315186.P5048422832923648575

`A008458(n)+A008574(n)-A310520(n)`
-/

namespace A315186.P5048422832923648575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310520 n)

end

end A315186.P5048422832923648575

namespace A315186

/-- `A008458(n)+A008574(n)-A310520(n)` -/
def P5048422832923648575.Spec : Prop :=
  ∀ n, P5048422832923648575.a n = A315186 n

end A315186

/-! ## A315186.P11962243919602814585

`gcd(A008592(n)-A310520(n), A000038(2*n))`
-/

namespace A315186.P11962243919602814585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A310520 n) (A000038 (2 * n))

end

end A315186.P11962243919602814585

namespace A315186

/-- `gcd(A008592(n)-A310520(n), A000038(2*n))` -/
def P11962243919602814585.Spec : Prop :=
  ∀ n, (P11962243919602814585.a n : ℤ) = A315186 n

end A315186

/-! ## A315186.P2963416536424447903

`(A008592(n)-A310520(n))^A014963(4*n+2)`
-/

namespace A315186.P2963416536424447903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A310520 n : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A315186.P2963416536424447903

namespace A315186

/-- `(A008592(n)-A310520(n))^A014963(4*n+2)` -/
def P2963416536424447903.Spec : Prop :=
  ∀ n, P2963416536424447903.a n = (A315186 n : ℚ)

end A315186

/-! ## A315186.P11977710535268141107

`A005843(A314684(n))-A008574(n)`
-/

namespace A315186.P11977710535268141107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314684 n).toNat - A008574 n

end

end A315186.P11977710535268141107

namespace A315186

/-- `A005843(A314684(n))-A008574(n)` -/
def P11977710535268141107.Spec : Prop :=
  ∀ n, P11977710535268141107.a n = A315186 n

end A315186

/-! ## A315186.P2962709261882372657

`A004275(A314684(n))-A004275(2*n)`
-/

namespace A315186.P2962709261882372657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A314684 n).toNat - A004275 (2 * n)

end

end A315186.P2962709261882372657

namespace A315186

/-- `A004275(A314684(n))-A004275(2*n)` -/
def P2962709261882372657.Spec : Prop :=
  ∀ n, P2962709261882372657.a n = A315186 n

end A315186

/-! ## A315186.P17876858311054399852

`2*A315264(n)-A315340(n)`
-/

namespace A315186.P17876858311054399852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315264 n - A315340 n

end

end A315186.P17876858311054399852

namespace A315186

/-- `2*A315264(n)-A315340(n)` -/
def P17876858311054399852.Spec : Prop :=
  ∀ n, P17876858311054399852.a n = A315186 n

end A315186

/-! ## A315186.P257086031576399476

`A005843(A008706(n))-A310520(n)`
-/

namespace A315186.P257086031576399476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310520 n

end

end A315186.P257086031576399476

namespace A315186

/-- `A005843(A008706(n))-A310520(n)` -/
def P257086031576399476.Spec : Prop :=
  ∀ n, P257086031576399476.a n = A315186 n

end A315186

/-! ## A315186.P2262437552684827687

`2*A312891(2*n)-A008458(2*n)`
-/

namespace A315186.P2262437552684827687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312891 (2 * n) - A008458 (2 * n)

end

end A315186.P2262437552684827687

namespace A315186

/-- `2*A312891(2*n)-A008458(2*n)` -/
def P2262437552684827687.Spec : Prop :=
  ∀ n, P2262437552684827687.a n = A315186 n

end A315186

/-! ## A315186.P15783634407503345579

`A310367(2*n)-4*n`
-/

namespace A315186.P15783634407503345579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310367 (2 * n) - (4 * n : ℤ)

end

end A315186.P15783634407503345579

namespace A315186

/-- `A310367(2*n)-4*n` -/
def P15783634407503345579.Spec : Prop :=
  ∀ n, P15783634407503345579.a n = A315186 n

end A315186

/-! ## A315186.P6340279305770710090

`2*A008574(2*n)-A315345(2*n)`
-/

namespace A315186.P6340279305770710090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315345 (2 * n)

end

end A315186.P6340279305770710090

namespace A315186

/-- `2*A008574(2*n)-A315345(2*n)` -/
def P6340279305770710090.Spec : Prop :=
  ∀ n, P6340279305770710090.a n = A315186 n

end A315186

/-!
# A315187: Coordination sequence Gal.3.14.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315187, the canonical program `A315187.P10711035272974007793` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315187 has offset 0).

The definition of A315187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315187.P10711035272974007793

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=14, a(4)=18, a(5)=24, a(6)=30`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A315187

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P10711035272974007793.Spec : Prop :=
  ∀ n, P10711035272974007793.a n = A315187 n

theorem P10711035272974007793.correct : P10711035272974007793.Spec := by
  intro n
  simp only [A315187]

end A315187

/-! ## A315187.P8457728666614119337

`A301730(n)-char[2]`
-/

namespace A315187.P8457728666614119337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A315187.P8457728666614119337

namespace A315187

/-- `A301730(n)-char[2]` -/
def P8457728666614119337.Spec : Prop :=
  ∀ n, P8457728666614119337.a n = A315187 n

end A315187

/-! ## A315187.P8497694443200821715

`2*A072154(n)-floor(1/(n+1))`
-/

namespace A315187.P8497694443200821715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072154 n - ⌊1 / (n + 1 : ℚ)⌋

end

end A315187.P8497694443200821715

namespace A315187

/-- `2*A072154(n)-floor(1/(n+1))` -/
def P8497694443200821715.Spec : Prop :=
  ∀ n, P8497694443200821715.a n = A315187 n

end A315187

/-! ## A315187.P12266292422618509119

`A004275(comp[a(n-2)+7]+n)` with `a(0)=0, a(1)=2`
-/

namespace A315187.P12266292422618509119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A315187.P12266292422618509119

namespace A315187

/-- `A004275(comp[a(n-2)+7]+n)` -/
def P12266292422618509119.Spec : Prop :=
  ∀ n, P12266292422618509119.a n = A315187 n

end A315187

/-! ## A315187.P2253310618977410028

`A004277(comp[a(n-2)+7]+n)` with `a(0)=1, a(1)=6`
-/

namespace A315187.P2253310618977410028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A315187.P2253310618977410028

namespace A315187

/-- `A004277(comp[a(n-2)+7]+n)` -/
def P2253310618977410028.Spec : Prop :=
  ∀ n, P2253310618977410028.a n = A315187 n

end A315187

/-! ## A315187.P6941110581790110231

`A103517(A072154(n)-1)`
-/

namespace A315187.P6941110581790110231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A072154 n - 1).toNat

end

end A315187.P6941110581790110231

namespace A315187

/-- `A103517(A072154(n)-1)` -/
def P6941110581790110231.Spec : Prop :=
  ∀ n, P6941110581790110231.a n = A315187 n

end A315187

/-! ## A315187.P5819966454884384552

`A250120(n)+A244895(n)`
-/

namespace A315187.P5819966454884384552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A244895 n

end

end A315187.P5819966454884384552

namespace A315187

/-- `A250120(n)+A244895(n)` -/
def P5819966454884384552.Spec : Prop :=
  ∀ n, P5819966454884384552.a n = A315187 n

end A315187

/-! ## A315187.P3919606636986169243

`xor(A185012(n), A301730(n))`
-/

namespace A315187.P3919606636986169243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A301730 n)

end

end A315187.P3919606636986169243

namespace A315187

/-- `xor(A185012(n), A301730(n))` -/
def P3919606636986169243.Spec : Prop :=
  ∀ n, P3919606636986169243.a n = A315187 n

end A315187

/-! ## A315187.P4520363937826216877

`A163985(A072154(n)+1)-1`
-/

namespace A315187.P4520363937826216877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A072154 n + 1).toNat - 1

end

end A315187.P4520363937826216877

namespace A315187

/-- `A163985(A072154(n)+1)-1` -/
def P4520363937826216877.Spec : Prop :=
  ∀ n, P4520363937826216877.a n = A315187 n

end A315187

/-! ## A315187.P4610294575583695735

`A004277(A047363(n+1)+n)`
-/

namespace A315187.P4610294575583695735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047363 (n + 1) + (n : ℤ)).toNat

end

end A315187.P4610294575583695735

namespace A315187

/-- `A004277(A047363(n+1)+n)` -/
def P4610294575583695735.Spec : Prop :=
  ∀ n, P4610294575583695735.a n = A315187 n

end A315187

/-! ## A315187.P13082185811047936067

`A348237(n)+A047599(n+1)`
-/

namespace A315187.P13082185811047936067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 n + A047599 (n + 1)

end

end A315187.P13082185811047936067

namespace A315187

/-- `A348237(n)+A047599(n+1)` -/
def P13082185811047936067.Spec : Prop :=
  ∀ n, P13082185811047936067.a n = A315187 n

end A315187

/-! ## A315187.P14200462266571181548

`A036453(n+1)*A072154(n)`
-/

namespace A315187.P14200462266571181548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A072154 n

end

end A315187.P14200462266571181548

namespace A315187

/-- `A036453(n+1)*A072154(n)` -/
def P14200462266571181548.Spec : Prop :=
  ∀ n, P14200462266571181548.a n = A315187 n

end A315187

/-! ## A315187.P11802163106749301717

`A330025(2*n)+A250120(n)`
-/

namespace A315187.P11802163106749301717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A250120 n

end

end A315187.P11802163106749301717

namespace A315187

/-- `A330025(2*n)+A250120(n)` -/
def P11802163106749301717.Spec : Prop :=
  ∀ n, P11802163106749301717.a n = A315187 n

end A315187

/-! ## A315187.P5841421961527215646

`(2-A000007(n))*A072154(n)`
-/

namespace A315187.P5841421961527215646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A072154 n

end

end A315187.P5841421961527215646

namespace A315187

/-- `(2-A000007(n))*A072154(n)` -/
def P5841421961527215646.Spec : Prop :=
  ∀ n, P5841421961527215646.a n = A315187 n

end A315187

/-! ## A315187.P12089917322794183791

`A022144(n)-2*A047486(n+1)`
-/

namespace A315187.P12089917322794183791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047486 (n + 1)

end

end A315187.P12089917322794183791

namespace A315187

/-- `A022144(n)-2*A047486(n+1)` -/
def P12089917322794183791.Spec : Prop :=
  ∀ n, P12089917322794183791.a n = A315187 n

end A315187

/-! ## A315187.P10882338001191882987

`A000032(C(2, n+2))*A072154(n)`
-/

namespace A315187.P10882338001191882987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A072154 n

end

end A315187.P10882338001191882987

namespace A315187

/-- `A000032(C(2, n+2))*A072154(n)` -/
def P10882338001191882987.Spec : Prop :=
  ∀ n, P10882338001191882987.a n = A315187 n

end A315187

/-! ## A315187.P5969600922828274833

`A244895(n)+A072154(2*n)`
-/

namespace A315187.P5969600922828274833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n + A072154 (2 * n)

end

end A315187.P5969600922828274833

namespace A315187

/-- `A244895(n)+A072154(2*n)` -/
def P5969600922828274833.Spec : Prop :=
  ∀ n, P5969600922828274833.a n = A315187 n

end A315187

/-! ## A315187.P1528997354102097747

`A330025(2*n)+A072154(2*n)`
-/

namespace A315187.P1528997354102097747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A072154 (2 * n)

end

end A315187.P1528997354102097747

namespace A315187

/-- `A330025(2*n)+A072154(2*n)` -/
def P1528997354102097747.Spec : Prop :=
  ∀ n, P1528997354102097747.a n = A315187 n

end A315187

/-!
# A315188: Coordination sequence Gal.6.265.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315188, the canonical program `A315188.P8680427825676772158` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315188 has offset 0).

The definition of A315188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315188.P8680427825676772158

`2*A315478(n)-A008458(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315188

/-- `2*A315478(n)-A008458(n)` -/
def P8680427825676772158.Spec : Prop :=
  ∀ n, P8680427825676772158.a n = A315188 n

theorem P8680427825676772158.correct : P8680427825676772158.Spec := by
  intro n
  simp only [A315188]

end A315188

/-! ## A315188.P6402366564050429238

`2*A315478(n)-A008486(2*n)`
-/

namespace A315188.P6402366564050429238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315478 n - A008486 (2 * n)

end

end A315188.P6402366564050429238

namespace A315188

/-- `2*A315478(n)-A008486(2*n)` -/
def P6402366564050429238.Spec : Prop :=
  ∀ n, P6402366564050429238.a n = A315188 n

end A315188

/-! ## A315188.P4020424289898221996

`A103517(A315478(n)-A016777(n))`
-/

namespace A315188.P4020424289898221996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315478 n - A016777 n).toNat

end

end A315188.P4020424289898221996

namespace A315188

/-- `A103517(A315478(n)-A016777(n))` -/
def P4020424289898221996.Spec : Prop :=
  ∀ n, P4020424289898221996.a n = A315188 n

end A315188

/-! ## A315188.P7664570670342831533

`A103517(A315478(n)%A016777(n))`
-/

namespace A315188.P7664570670342831533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315478 n) (A016777 n)).toNat

end

end A315188.P7664570670342831533

namespace A315188

/-- `A103517(A315478(n)%A016777(n))` -/
def P7664570670342831533.Spec : Prop :=
  ∀ n, P7664570670342831533.a n = A315188 n

end A315188

/-! ## A315188.P18298458192931687649

`A008458(n)-A005843(A008458(n)-A315478(n))`
-/

namespace A315188.P18298458192931687649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315478 n).toNat

end

end A315188.P18298458192931687649

namespace A315188

/-- `A008458(n)-A005843(A008458(n)-A315478(n))` -/
def P18298458192931687649.Spec : Prop :=
  ∀ n, P18298458192931687649.a n = A315188 n

end A315188

/-! ## A315188.P1221588574266204594

`A005843(A315478(n))-A008458(n)`
-/

namespace A315188.P1221588574266204594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315478 n).toNat - A008458 n

end

end A315188.P1221588574266204594

namespace A315188

/-- `A005843(A315478(n))-A008458(n)` -/
def P1221588574266204594.Spec : Prop :=
  ∀ n, P1221588574266204594.a n = A315188 n

end A315188

/-! ## A315188.P17895442928254733367

`abs(A008592(n)-A310517(n))`
-/

namespace A315188.P17895442928254733367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310517 n|

end

end A315188.P17895442928254733367

namespace A315188

/-- `abs(A008592(n)-A310517(n))` -/
def P17895442928254733367.Spec : Prop :=
  ∀ n, P17895442928254733367.a n = A315188 n

end A315188

/-! ## A315188.P8095133989969881956

`2*A008706(n)-A310517(n)`
-/

namespace A315188.P8095133989969881956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310517 n

end

end A315188.P8095133989969881956

namespace A315188

/-- `2*A008706(n)-A310517(n)` -/
def P8095133989969881956.Spec : Prop :=
  ∀ n, P8095133989969881956.a n = A315188 n

end A315188

/-! ## A315188.P2210315330640151506

`A005843(A008706(n))-A310517(n)`
-/

namespace A315188.P2210315330640151506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310517 n

end

end A315188.P2210315330640151506

namespace A315188

/-- `A005843(A008706(n))-A310517(n)` -/
def P2210315330640151506.Spec : Prop :=
  ∀ n, P2210315330640151506.a n = A315188 n

end A315188

/-! ## A315188.P12772798857635536069

`A004442(A017281(n)-A310517(n))`
-/

namespace A315188.P12772798857635536069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A310517 n).toNat

end

end A315188.P12772798857635536069

namespace A315188

/-- `A004442(A017281(n)-A310517(n))` -/
def P12772798857635536069.Spec : Prop :=
  ∀ n, P12772798857635536069.a n = A315188 n

end A315188

/-! ## A315188.P6119426585920921326

`A008458(n)+A008574(n)-A310517(n)`
-/

namespace A315188.P6119426585920921326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310517 n)

end

end A315188.P6119426585920921326

namespace A315188

/-- `A008458(n)+A008574(n)-A310517(n)` -/
def P6119426585920921326.Spec : Prop :=
  ∀ n, P6119426585920921326.a n = A315188 n

end A315188

/-! ## A315188.P14110671758362188439

`∏{d}[A008592(n)-A310517(n), A014963(#)]`
-/

namespace A315188.P14110671758362188439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A315188.P14110671758362188439

namespace A315188

/-- `∏{d}[A008592(n)-A310517(n), A014963(#)]` -/
def P14110671758362188439.Spec : Prop :=
  ∀ n, P14110671758362188439.a n = A315188 n

end A315188

/-! ## A315188.P1076417476964414966

`lcm(A000035(n)+1, A008592(n)-A310517(n))`
-/

namespace A315188.P1076417476964414966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000035 n + 1) (A008592 n - A310517 n)

end

end A315188.P1076417476964414966

namespace A315188

/-- `lcm(A000035(n)+1, A008592(n)-A310517(n))` -/
def P1076417476964414966.Spec : Prop :=
  ∀ n, (P1076417476964414966.a n : ℤ) = A315188 n

end A315188

/-! ## A315188.P4363648056787280897

`A065502(A008458(n))-A310517(n)`
-/

namespace A315188.P4363648056787280897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310517 n

end

end A315188.P4363648056787280897

namespace A315188

/-- `A065502(A008458(n))-A310517(n)` -/
def P4363648056787280897.Spec : Prop :=
  ∀ n, P4363648056787280897.a n = A315188 n

end A315188

/-! ## A315188.P9188391973556071606

`A315730(2*n)-6*n`
-/

namespace A315188.P9188391973556071606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315730 (2 * n) - (6 * n : ℤ)

end

end A315188.P9188391973556071606

namespace A315188

/-- `A315730(2*n)-6*n` -/
def P9188391973556071606.Spec : Prop :=
  ∀ n, P9188391973556071606.a n = A315188 n

end A315188

/-!
# A315189: Coordination sequence Gal.6.418.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315189, there is no canonical definition to state claims against.
-/

/-! ## A315189.P9695178303880973215

`or(A020639(A091768(n)), A312330(n))`
-/

namespace A315189.P9695178303880973215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A091768 n).toNat) (A312330 n)

end

end A315189.P9695178303880973215

/-! ## A315189.P2539289287433753821

`or(A312330(n), A348044(A027810(n)))`
-/

namespace A315189.P2539289287433753821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312330 n) (A348044 (A027810 n).toNat)

end

end A315189.P2539289287433753821

/-!
# A315190: Coordination sequence Gal.6.401.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315190, there is no canonical definition to state claims against.
-/

/-! ## A315190.P3436868799598433029

`A315896(n)+A055668(A083379(n+1))`
-/

namespace A315190.P3436868799598433029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315896 n + A055668 (A083379 (n + 1)).toNat

end

end A315190.P3436868799598433029

/-!
# A315191: Coordination sequence Gal.5.186.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315191, the canonical program `A315191.P3733796500025227034` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315191 has offset 0).

The definition of A315191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2412 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315191.P3733796500025227034

`A313510(n)+A004396(lcm(n, A134667(n)))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315191

/-- `A313510(n)+A004396(lcm(n, A134667(n)))` -/
def P3733796500025227034.Spec : Prop :=
  ∀ n, P3733796500025227034.a n = A315191 n

theorem P3733796500025227034.correct : P3733796500025227034.Spec := by
  intro n
  simp only [A315191]

end A315191

/-! ## A315191.P12531429016391228699

`A310392(n)+2*A134667(n)`
-/

namespace A315191.P12531429016391228699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310392 n + 2 * A134667 n

end

end A315191.P12531429016391228699

namespace A315191

/-- `A310392(n)+2*A134667(n)` -/
def P12531429016391228699.Spec : Prop :=
  ∀ n, P12531429016391228699.a n = A315191 n

end A315191

/-! ## A315191.P13417942952788365617

`A310392(n)-2*A134667(n)/(-1)^n*A166486(n)`
-/

namespace A315191.P13417942952788365617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310392 n : ℚ) - (2 * A134667 n : ℚ) / ((-1) ^ n : ℚ) * (A166486 n : ℚ)

end

end A315191.P13417942952788365617

namespace A315191

/-- `A310392(n)-2*A134667(n)/(-1)^n*A166486(n)` -/
def P13417942952788365617.Spec : Prop :=
  ∀ n, P13417942952788365617.a n = (A315191 n : ℚ)

end A315191

/-! ## A315191.P736873390471620479

`A315471(n)-A142150(A047513(n+1))`
-/

namespace A315191.P736873390471620479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - A142150 (A047513 (n + 1)).toNat

end

end A315191.P736873390471620479

namespace A315191

/-- `A315471(n)-A142150(A047513(n+1))` -/
def P736873390471620479.Spec : Prop :=
  ∀ n, P736873390471620479.a n = A315191 n

end A315191

/-! ## A315191.P13859311423775242578

`or(A010879(A024023(n)), A298024(n))`
-/

namespace A315191.P13859311423775242578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010879 (A024023 n).toNat) (A298024 n)

end

end A315191.P13859311423775242578

namespace A315191

/-- `or(A010879(A024023(n)), A298024(n))` -/
def P13859311423775242578.Spec : Prop :=
  ∀ n, P13859311423775242578.a n = A315191 n

end A315191

/-!
# A315192: Coordination sequence Gal.6.566.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315192, there is no canonical definition to state claims against.
-/

/-! ## A315192.P9253292328286598114

`A315204(n)-A322134(A174264(n))`
-/

namespace A315192.P9253292328286598114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315204 n - A322134 (A174264 n).toNat

end

end A315192.P9253292328286598114

/-! ## A315192.P5610453092716976890

`A070119(2*(n+1))-A276719(A077739(n+1))`
-/

namespace A315192.P5610453092716976890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (2 * (n + 1)) - A276719 (A077739 (n + 1)).toNat

end

end A315192.P5610453092716976890

/-! ## A315192.P8078326110514494273

`∑[A007895(A071797(n+1)+A017390(n+1)+1)]-1`
-/

namespace A315192.P8078326110514494273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A071797 (n + 1) + (A017390 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A315192.P8078326110514494273

/-!
# A315193: Coordination sequence Gal.6.28.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315193, there is no canonical definition to state claims against.
-/

/-! ## A315193.P17444945058796482455

`A235862(n+1)+A003313(A057925(3*n))`
-/

namespace A315193.P17444945058796482455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235862 (n + 1) + A003313 (A057925 (3 * n)).toNat

end

end A315193.P17444945058796482455

/-!
# A315194: Coordination sequence Gal.6.154.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315194, the canonical program `A315194.P6551727248572470144` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315194 has offset 0).

The definition of A315194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315194.P6551727248572470144

`2*A314720(n)-A311523(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A315194

/-- `2*A314720(n)-A311523(n)` -/
def P6551727248572470144.Spec : Prop :=
  ∀ n, P6551727248572470144.a n = A315194 n

theorem P6551727248572470144.correct : P6551727248572470144.Spec := by
  intro n
  simp only [A315194]

end A315194

/-! ## A315194.P6318360209698093355

`A311523(n)+A005843(A314720(n)-A311523(n))`
-/

namespace A315194.P6318360209698093355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311523 n + A005843 (A314720 n - A311523 n).toNat

end

end A315194.P6318360209698093355

namespace A315194

/-- `A311523(n)+A005843(A314720(n)-A311523(n))` -/
def P6318360209698093355.Spec : Prop :=
  ∀ n, P6318360209698093355.a n = A315194 n

end A315194

/-! ## A315194.P18361198670330373744

`abs(A008592(n)-A310513(n))`
-/

namespace A315194.P18361198670330373744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310513 n|

end

end A315194.P18361198670330373744

namespace A315194

/-- `abs(A008592(n)-A310513(n))` -/
def P18361198670330373744.Spec : Prop :=
  ∀ n, P18361198670330373744.a n = A315194 n

end A315194

/-! ## A315194.P5349872492744927184

`2*A008706(n)-A310513(n)`
-/

namespace A315194.P5349872492744927184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310513 n

end

end A315194.P5349872492744927184

namespace A315194

/-- `2*A008706(n)-A310513(n)` -/
def P5349872492744927184.Spec : Prop :=
  ∀ n, P5349872492744927184.a n = A315194 n

end A315194

/-! ## A315194.P2557226381855093953

`A184418(A008574(n))-A310513(n)`
-/

namespace A315194.P2557226381855093953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A310513 n

end

end A315194.P2557226381855093953

namespace A315194

/-- `A184418(A008574(n))-A310513(n)` -/
def P2557226381855093953.Spec : Prop :=
  ∀ n, P2557226381855093953.a n = A315194 n

end A315194

/-! ## A315194.P527197455546005149

`A000038(n)+A008592(n)-A310513(n)`
-/

namespace A315194.P527197455546005149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A310513 n)

end

end A315194.P527197455546005149

namespace A315194

/-- `A000038(n)+A008592(n)-A310513(n)` -/
def P527197455546005149.Spec : Prop :=
  ∀ n, P527197455546005149.a n = A315194 n

end A315194

/-! ## A315194.P8956499740114377274

`A008458(n)+A008574(n)-A310513(n)`
-/

namespace A315194.P8956499740114377274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310513 n)

end

end A315194.P8956499740114377274

namespace A315194

/-- `A008458(n)+A008574(n)-A310513(n)` -/
def P8956499740114377274.Spec : Prop :=
  ∀ n, P8956499740114377274.a n = A315194 n

end A315194

/-! ## A315194.P4986855132585585006

`A008458(n)-A310513(n)%A004277(n)`
-/

namespace A315194.P4986855132585585006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - Int.tmod (A310513 n) (A004277 n)

end

end A315194.P4986855132585585006

namespace A315194

/-- `A008458(n)-A310513(n)%A004277(n)` -/
def P4986855132585585006.Spec : Prop :=
  ∀ n, P4986855132585585006.a n = A315194 n

end A315194

/-! ## A315194.P15889545072245261126

`A005843(A314720(n))-A311523(n)`
-/

namespace A315194.P15889545072245261126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314720 n).toNat - A311523 n

end

end A315194.P15889545072245261126

namespace A315194

/-- `A005843(A314720(n))-A311523(n)` -/
def P15889545072245261126.Spec : Prop :=
  ∀ n, P15889545072245261126.a n = A315194 n

end A315194

/-! ## A315194.P16906766504504296497

`A005843(A008706(n))-A310513(n)`
-/

namespace A315194.P16906766504504296497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310513 n

end

end A315194.P16906766504504296497

namespace A315194

/-- `A005843(A008706(n))-A310513(n)` -/
def P16906766504504296497.Spec : Prop :=
  ∀ n, P16906766504504296497.a n = A315194 n

end A315194

/-! ## A315194.P7056439440253578860

`A004277(A008458(n)-n)-A310513(n)`
-/

namespace A315194.P7056439440253578860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008458 n - (n : ℤ)).toNat - A310513 n

end

end A315194.P7056439440253578860

namespace A315194

/-- `A004277(A008458(n)-n)-A310513(n)` -/
def P7056439440253578860.Spec : Prop :=
  ∀ n, P7056439440253578860.a n = A315194 n

end A315194

/-! ## A315194.P10906276196701464252

`A065502(A008458(n))-A310513(n)`
-/

namespace A315194.P10906276196701464252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A310513 n

end

end A315194.P10906276196701464252

namespace A315194

/-- `A065502(A008458(n))-A310513(n)` -/
def P10906276196701464252.Spec : Prop :=
  ∀ n, P10906276196701464252.a n = A315194 n

end A315194

/-! ## A315194.P14860379929757444438

`A233583(A017281(n))-A310513(n)`
-/

namespace A315194.P14860379929757444438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A310513 n

end

end A315194.P14860379929757444438

namespace A315194

/-- `A233583(A017281(n))-A310513(n)` -/
def P14860379929757444438.Spec : Prop :=
  ∀ n, P14860379929757444438.a n = A315194 n

end A315194

/-!
# A315195: Coordination sequence Gal.6.249.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315195, the canonical program `A315195.P14645508602762884872` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315195 has offset 0).

The definition of A315195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315195.P14645508602762884872

`abs(10*n-A310512(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A315195

/-- `abs(10*n-A310512(n))` -/
def P14645508602762884872.Spec : Prop :=
  ∀ n, P14645508602762884872.a n = A315195 n

theorem P14645508602762884872.correct : P14645508602762884872.Spec := by
  intro n
  simp only [A315195]

end A315195

/-! ## A315195.P16442375060409265866

`2*A008706(n)-A310512(n)`
-/

namespace A315195.P16442375060409265866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310512 n

end

end A315195.P16442375060409265866

namespace A315195

/-- `2*A008706(n)-A310512(n)` -/
def P16442375060409265866.Spec : Prop :=
  ∀ n, P16442375060409265866.a n = A315195 n

end A315195

/-! ## A315195.P2207233892400566901

`A314670(n)+A004525(A151988(n))`
-/

namespace A315195.P2207233892400566901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A004525 (A151988 n).toNat

end

end A315195.P2207233892400566901

namespace A315195

/-- `A314670(n)+A004525(A151988(n))` -/
def P2207233892400566901.Spec : Prop :=
  ∀ n, P2207233892400566901.a n = A315195 n

end A315195

/-! ## A315195.P12316856569354932455

`A008458(n)+A008574(n)-A310512(n)`
-/

namespace A315195.P12316856569354932455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310512 n)

end

end A315195.P12316856569354932455

namespace A315195

/-- `A008458(n)+A008574(n)-A310512(n)` -/
def P12316856569354932455.Spec : Prop :=
  ∀ n, P12316856569354932455.a n = A315195 n

end A315195

/-! ## A315195.P11279815806482391444

`A330025(n)+A314740(n)`
-/

namespace A315195.P11279815806482391444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314740 n

end

end A315195.P11279815806482391444

namespace A315195

/-- `A330025(n)+A314740(n)` -/
def P11279815806482391444.Spec : Prop :=
  ∀ n, P11279815806482391444.a n = A315195 n

end A315195

/-! ## A315195.P1586510801055666552

`A313116(n)+A253262(A253262(n)+n)`
-/

namespace A315195.P1586510801055666552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A253262 (A253262 n + (n : ℤ)).toNat

end

end A315195.P1586510801055666552

namespace A315195

/-- `A313116(n)+A253262(A253262(n)+n)` -/
def P1586510801055666552.Spec : Prop :=
  ∀ n, P1586510801055666552.a n = A315195 n

end A315195

/-! ## A315195.P17505454756965234349

`A313525(n)+A253262(n)%2`
-/

namespace A315195.P17505454756965234349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313525 n + Int.tmod (A253262 n) 2

end

end A315195.P17505454756965234349

namespace A315195

/-- `A313525(n)+A253262(n)%2` -/
def P17505454756965234349.Spec : Prop :=
  ∀ n, P17505454756965234349.a n = A315195 n

end A315195

/-! ## A315195.P2935943400830940534

`A005843(A008706(n))-A310512(n)`
-/

namespace A315195.P2935943400830940534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310512 n

end

end A315195.P2935943400830940534

namespace A315195

/-- `A005843(A008706(n))-A310512(n)` -/
def P2935943400830940534.Spec : Prop :=
  ∀ n, P2935943400830940534.a n = A315195 n

end A315195

/-! ## A315195.P2210585185761522081

`A004396(A315203(n)+A072154(n))`
-/

namespace A315195.P2210585185761522081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315203 n + A072154 n).toNat

end

end A315195.P2210585185761522081

namespace A315195

/-- `A004396(A315203(n)+A072154(n))` -/
def P2210585185761522081.Spec : Prop :=
  ∀ n, P2210585185761522081.a n = A315195 n

end A315195

/-!
# A315196: Coordination sequence Gal.6.202.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315196, the canonical program `A315196.P15202907310307573734` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315196 has offset 0).

The definition of A315196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315196.P15202907310307573734

`A314677(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315196

/-- `A314677(n)+A004525(n)` -/
def P15202907310307573734.Spec : Prop :=
  ∀ n, P15202907310307573734.a n = A315196 n

theorem P15202907310307573734.correct : P15202907310307573734.Spec := by
  intro n
  simp only [A315196]

end A315196

/-! ## A315196.P7143523611364380788

`A314953(n)+A128834(n)`
-/

namespace A315196.P7143523611364380788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314953 n + A128834 n

end

end A315196.P7143523611364380788

namespace A315196

/-- `A314953(n)+A128834(n)` -/
def P7143523611364380788.Spec : Prop :=
  ∀ n, P7143523611364380788.a n = A315196 n

end A315196

/-! ## A315196.P1933422962542801142

`A313575(n)+A134667(n)`
-/

namespace A315196.P1933422962542801142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313575 n + A134667 n

end

end A315196.P1933422962542801142

namespace A315196

/-- `A313575(n)+A134667(n)` -/
def P1933422962542801142.Spec : Prop :=
  ∀ n, P1933422962542801142.a n = A315196 n

end A315196

/-! ## A315196.P7244331350344282227

`abs(A008592(n)-A310511(n))`
-/

namespace A315196.P7244331350344282227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310511 n|

end

end A315196.P7244331350344282227

namespace A315196

/-- `abs(A008592(n)-A310511(n))` -/
def P7244331350344282227.Spec : Prop :=
  ∀ n, P7244331350344282227.a n = A315196 n

end A315196

/-! ## A315196.P10269357988998926913

`A314953(n)-A010892(n+2)`
-/

namespace A315196.P10269357988998926913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314953 n - A010892 (n + 2)

end

end A315196.P10269357988998926913

namespace A315196

/-- `A314953(n)-A010892(n+2)` -/
def P10269357988998926913.Spec : Prop :=
  ∀ n, P10269357988998926913.a n = A315196 n

end A315196

/-! ## A315196.P15194430320783093825

`A301291(n)+A004525(A004396(n))`
-/

namespace A315196.P15194430320783093825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004525 (A004396 n).toNat

end

end A315196.P15194430320783093825

namespace A315196

/-- `A301291(n)+A004525(A004396(n))` -/
def P15194430320783093825.Spec : Prop :=
  ∀ n, P15194430320783093825.a n = A315196 n

end A315196

/-! ## A315196.P808710425353082662

`A301291(n)+A004525(A274616(n))`
-/

namespace A315196.P808710425353082662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004525 (A274616 n).toNat

end

end A315196.P808710425353082662

namespace A315196

/-- `A301291(n)+A004525(A274616(n))` -/
def P808710425353082662.Spec : Prop :=
  ∀ n, P808710425353082662.a n = A315196 n

end A315196

/-! ## A315196.P11509949586695798526

`A008458(n)+A008574(n)-A310511(n)`
-/

namespace A315196.P11509949586695798526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310511 n)

end

end A315196.P11509949586695798526

namespace A315196

/-- `A008458(n)+A008574(n)-A310511(n)` -/
def P11509949586695798526.Spec : Prop :=
  ∀ n, P11509949586695798526.a n = A315196 n

end A315196

/-! ## A315196.P4793619870390182317

`A004525(A004396(n))+A008574(n)+A004525(n)`
-/

namespace A315196.P4793619870390182317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A008574 n + A004525 n)

end

end A315196.P4793619870390182317

namespace A315196

/-- `A004525(A004396(n))+A008574(n)+A004525(n)` -/
def P4793619870390182317.Spec : Prop :=
  ∀ n, P4793619870390182317.a n = A315196 n

end A315196

/-! ## A315196.P4596129330402154238

`A313687(n)+A101455(n)`
-/

namespace A315196.P4596129330402154238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313687 n + A101455 n

end

end A315196.P4596129330402154238

namespace A315196

/-- `A313687(n)+A101455(n)` -/
def P4596129330402154238.Spec : Prop :=
  ∀ n, P4596129330402154238.a n = A315196 n

end A315196

/-! ## A315196.P2498753521447372836

`A315415(n)-A004396(n-A004525(n))`
-/

namespace A315196.P2498753521447372836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A315196.P2498753521447372836

namespace A315196

/-- `A315415(n)-A004396(n-A004525(n))` -/
def P2498753521447372836.Spec : Prop :=
  ∀ n, P2498753521447372836.a n = A315196 n

end A315196

/-! ## A315196.P1659600388126746001

`A315471(n)-A004524(n+1)`
-/

namespace A315196.P1659600388126746001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - A004524 (n + 1)

end

end A315196.P1659600388126746001

namespace A315196

/-- `A315471(n)-A004524(n+1)` -/
def P1659600388126746001.Spec : Prop :=
  ∀ n, P1659600388126746001.a n = A315196 n

end A315196

/-! ## A315196.P10686162783654361803

`A004525(n)+A315471(n)-n`
-/

namespace A315196.P10686162783654361803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315471 n - (n : ℤ))

end

end A315196.P10686162783654361803

namespace A315196

/-- `A004525(n)+A315471(n)-n` -/
def P10686162783654361803.Spec : Prop :=
  ∀ n, P10686162783654361803.a n = A315196 n

theorem P10686162783654361803.correct : P10686162783654361803.Spec := by
  intro n
  simp only [A315196, Nat.add_sub_cancel, A315196.P10686162783654361803.a, A315196.P15202907310307573734.a, A004525, A004525.P4158271949796742323.a, A314677, A314677.P709044874121363319.a, A315471, A315471.P13880185677744590695.a, A008486, A008486.P11623131867527198563.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315196

/-! ## A315196.P2375980928069563633

`A004396(n)+A315417(n)-n`
-/

namespace A315196.P2375980928069563633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315417 n - (n : ℤ))

end

end A315196.P2375980928069563633

namespace A315196

/-- `A004396(n)+A315417(n)-n` -/
def P2375980928069563633.Spec : Prop :=
  ∀ n, P2375980928069563633.a n = A315196 n

end A315196

/-! ## A315196.P9212646455887612002

`A008576(n)+A315417(n)-A008486(n)`
-/

namespace A315196.P9212646455887612002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315417 n - A008486 n)

end

end A315196.P9212646455887612002

namespace A315196

/-- `A008576(n)+A315417(n)-A008486(n)` -/
def P9212646455887612002.Spec : Prop :=
  ∀ n, P9212646455887612002.a n = A315196 n

end A315196

/-! ## A315196.P5366382843327696072

`A004525(n)+A004396(A315405(n))+n`
-/

namespace A315196.P5366382843327696072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A315405 n).toNat + (n : ℤ))

end

end A315196.P5366382843327696072

namespace A315196

/-- `A004525(n)+A004396(A315405(n))+n` -/
def P5366382843327696072.Spec : Prop :=
  ∀ n, P5366382843327696072.a n = A315196 n

end A315196

/-! ## A315196.P1855702801646633836

`A004525(n)+A004396(A315512(n)+n)`
-/

namespace A315196.P1855702801646633836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A315512 n + (n : ℤ)).toNat

end

end A315196.P1855702801646633836

namespace A315196

/-- `A004525(n)+A004396(A315512(n)+n)` -/
def P1855702801646633836.Spec : Prop :=
  ∀ n, P1855702801646633836.a n = A315196 n

end A315196

/-! ## A315196.P3194652525200021417

`A004525(n)+A004396(A315649(n)+n)`
-/

namespace A315196.P3194652525200021417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A315649 n + (n : ℤ)).toNat

end

end A315196.P3194652525200021417

namespace A315196

/-- `A004525(n)+A004396(A315649(n)+n)` -/
def P3194652525200021417.Spec : Prop :=
  ∀ n, P3194652525200021417.a n = A315196 n

end A315196

/-! ## A315196.P15306561398319530983

`A004525(A312896(2*n))+A004525(n)`
-/

namespace A315196.P15306561398319530983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312896 (2 * n)).toNat + A004525 n

end

end A315196.P15306561398319530983

namespace A315196

/-- `A004525(A312896(2*n))+A004525(n)` -/
def P15306561398319530983.Spec : Prop :=
  ∀ n, P15306561398319530983.a n = A315196 n

end A315196

/-! ## A315196.P16505854673217485119

`A004525(A312901(2*n))+A004525(n)`
-/

namespace A315196.P16505854673217485119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312901 (2 * n)).toNat + A004525 n

end

end A315196.P16505854673217485119

namespace A315196

/-- `A004525(A312901(2*n))+A004525(n)` -/
def P16505854673217485119.Spec : Prop :=
  ∀ n, P16505854673217485119.a n = A315196 n

end A315196

/-!
# A315198: Coordination sequence Gal.5.86.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315198, the canonical program `A315198.P16559012369285710955` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315198 has offset 0).

The definition of A315198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315198.P1829336341925763601

`abs(A008592(n)-A310509(n))`
-/

namespace A315198.P1829336341925763601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310509 n|

end

end A315198.P1829336341925763601

namespace A315198

/-- `abs(A008592(n)-A310509(n))` -/
def P1829336341925763601.Spec : Prop :=
  ∀ n, P1829336341925763601.a n = A315198 n

end A315198

/-! ## A315198.P17708182957306632739

`2*A008706(n)-A310509(n)`
-/

namespace A315198.P17708182957306632739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A310509 n

end

end A315198.P17708182957306632739

namespace A315198

/-- `2*A008706(n)-A310509(n)` -/
def P17708182957306632739.Spec : Prop :=
  ∀ n, P17708182957306632739.a n = A315198 n

end A315198

/-! ## A315198.P18443355695237293568

`A314692(n)+A004396(A004396(n))`
-/

namespace A315198.P18443355695237293568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + A004396 (A004396 n).toNat

end

end A315198.P18443355695237293568

namespace A315198

/-- `A314692(n)+A004396(A004396(n))` -/
def P18443355695237293568.Spec : Prop :=
  ∀ n, P18443355695237293568.a n = A315198 n

end A315198

/-! ## A315198.P11006352064146919881

`A313614(n)+A134667(A006369(n))`
-/

namespace A315198.P11006352064146919881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + A134667 (A006369 n).toNat

end

end A315198.P11006352064146919881

namespace A315198

/-- `A313614(n)+A134667(A006369(n))` -/
def P11006352064146919881.Spec : Prop :=
  ∀ n, P11006352064146919881.a n = A315198 n

end A315198

/-! ## A315198.P16559012369285710955

`A313721(n)+A128834(A004396(2*n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315198

/-- `A313721(n)+A128834(A004396(2*n))` -/
def P16559012369285710955.Spec : Prop :=
  ∀ n, P16559012369285710955.a n = A315198 n

theorem P16559012369285710955.correct : P16559012369285710955.Spec := by
  intro n
  simp only [A315198]

end A315198

/-! ## A315198.P9123312563215852227

`A008458(n)+A008574(n)-A310509(n)`
-/

namespace A315198.P9123312563215852227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A310509 n)

end

end A315198.P9123312563215852227

namespace A315198

/-- `A008458(n)+A008574(n)-A310509(n)` -/
def P9123312563215852227.Spec : Prop :=
  ∀ n, P9123312563215852227.a n = A315198 n

end A315198

/-! ## A315198.P17232754742290107417

`∑{d}[A008592(n)-A310509(n), A000010(#)]`
-/

namespace A315198.P17232754742290107417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A310509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315198.P17232754742290107417

namespace A315198

/-- `∑{d}[A008592(n)-A310509(n), A000010(#)]` -/
def P17232754742290107417.Spec : Prop :=
  ∀ n, P17232754742290107417.a n = A315198 n

end A315198

/-! ## A315198.P14646481855529691028

`gcd(n+1-A000027(n+1), A008592(n)-A310509(n))`
-/

namespace A315198.P14646481855529691028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A000027 (n + 1)) (A008592 n - A310509 n)

end

end A315198.P14646481855529691028

namespace A315198

/-- `gcd(n+1-A000027(n+1), A008592(n)-A310509(n))` -/
def P14646481855529691028.Spec : Prop :=
  ∀ n, (P14646481855529691028.a n : ℤ) = A315198 n

end A315198

/-! ## A315198.P517065498524969209

`A315523(n)-A093390(A062545(n))`
-/

namespace A315198.P517065498524969209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A093390 (A062545 n).toNat

end

end A315198.P517065498524969209

namespace A315198

/-- `A315523(n)-A093390(A062545(n))` -/
def P517065498524969209.Spec : Prop :=
  ∀ n, P517065498524969209.a n = A315198 n

end A315198

/-! ## A315198.P4401710369531397579

`A315265(n)-Δ[A011862(n)]`
-/

namespace A315198.P4401710369531397579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - (f1 (n + 1) - f1 n)

end

end A315198.P4401710369531397579

namespace A315198

/-- `A315265(n)-Δ[A011862(n)]` -/
def P4401710369531397579.Spec : Prop :=
  ∀ n, P4401710369531397579.a n = A315198 n

theorem P4401710369531397579.correct : P4401710369531397579.Spec := by
  intro n
  simp only [A315198, Nat.add_sub_cancel, A315198.P4401710369531397579.f1, A315198.P4401710369531397579.a, A315198.P16559012369285710955.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A128834, A128834.P16779687439637953687.a, A313721, A313721.P4481706154216896496.a, A315265, A315265.P13761514949050069837.f1, A315265.P13761514949050069837.a, A010892, A010892.P14408744864468695543.a, A312932, A312932.P265636690513476108.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315198

/-! ## A315198.P4284722724982797305

`A004396(A004396(n))+A315265(n)-A004396(n)`
-/

namespace A315198.P4284722724982797305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315265 n - A004396 n)

end

end A315198.P4284722724982797305

namespace A315198

/-- `A004396(A004396(n))+A315265(n)-A004396(n)` -/
def P4284722724982797305.Spec : Prop :=
  ∀ n, P4284722724982797305.a n = A315198 n

end A315198

/-! ## A315198.P16748465186081730757

`A005843(A008706(n))-A310509(n)`
-/

namespace A315198.P16748465186081730757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A310509 n

end

end A315198.P16748465186081730757

namespace A315198

/-- `A005843(A008706(n))-A310509(n)` -/
def P16748465186081730757.Spec : Prop :=
  ∀ n, P16748465186081730757.a n = A315198 n

end A315198

/-! ## A315198.P8972901681994392831

`A313477(2*n)-4*n`
-/

namespace A315198.P8972901681994392831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313477 (2 * n) - (4 * n : ℤ)

end

end A315198.P8972901681994392831

namespace A315198

/-- `A313477(2*n)-4*n` -/
def P8972901681994392831.Spec : Prop :=
  ∀ n, P8972901681994392831.a n = A315198 n

end A315198

/-! ## A315198.P18200866184432663334

`A315265(n)-A033183(A004771(n))`
-/

namespace A315198.P18200866184432663334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A033183 (A004771 n).toNat

end

end A315198.P18200866184432663334

namespace A315198

/-- `A315265(n)-A033183(A004771(n))` -/
def P18200866184432663334.Spec : Prop :=
  ∀ n, P18200866184432663334.a n = A315198 n

end A315198

/-! ## A315198.P5321995518496063412

`A004396(A315398(2*n)-A005843(n))`
-/

namespace A315198.P5321995518496063412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315398 (2 * n) - A005843 n).toNat

end

end A315198.P5321995518496063412

namespace A315198

/-- `A004396(A315398(2*n)-A005843(n))` -/
def P5321995518496063412.Spec : Prop :=
  ∀ n, P5321995518496063412.a n = A315198 n

end A315198

/-! ## A315198.P11609910408178010424

`A315631(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315198.P11609910408178010424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315631 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315198.P11609910408178010424

namespace A315198

/-- `A315631(2*n)/(4*n+2-A004277(2*n))` -/
def P11609910408178010424.Spec : Prop :=
  ∀ n, P11609910408178010424.a n = (A315198 n : ℚ)

end A315198

/-! ## A315198.P10725383921248535811

`2*A008574(2*n)-A313927(2*n)`
-/

namespace A315198.P10725383921248535811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313927 (2 * n)

end

end A315198.P10725383921248535811

namespace A315198

/-- `2*A008574(2*n)-A313927(2*n)` -/
def P10725383921248535811.Spec : Prop :=
  ∀ n, P10725383921248535811.a n = A315198 n

end A315198

/-! ## A315198.P11474161954147227049

`A004396(A315398(2*n))-A004396(2*n)`
-/

namespace A315198.P11474161954147227049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315398 (2 * n)).toNat - A004396 (2 * n)

end

end A315198.P11474161954147227049

namespace A315198

/-- `A004396(A315398(2*n))-A004396(2*n)` -/
def P11474161954147227049.Spec : Prop :=
  ∀ n, P11474161954147227049.a n = A315198 n

end A315198

/-! ## A315198.P11284441151982987751

`A004525(A315631(2*n))`
-/

namespace A315198.P11284441151982987751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315631 (2 * n)).toNat

end

end A315198.P11284441151982987751

namespace A315198

/-- `A004525(A315631(2*n))` -/
def P11284441151982987751.Spec : Prop :=
  ∀ n, P11284441151982987751.a n = A315198 n

end A315198

/-! ## A315198.P7804851100622341760

`A004526(A315631(2*n)+1)`
-/

namespace A315198.P7804851100622341760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315631 (2 * n) + 1).toNat

end

end A315198.P7804851100622341760

namespace A315198

/-- `A004526(A315631(2*n)+1)` -/
def P7804851100622341760.Spec : Prop :=
  ∀ n, P7804851100622341760.a n = A315198 n

end A315198

/-!
# A315199: Coordination sequence Gal.6.582.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315199, there is no canonical definition to state claims against.
-/

/-! ## A315199.P9623745590056168820

`or(A000005(A151101(n)), A311342(n))`
-/

namespace A315199.P9623745590056168820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A151101 n).toNat) (A311342 n)

end

end A315199.P9623745590056168820

